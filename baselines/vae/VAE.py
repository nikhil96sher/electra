from __future__ import print_function

import argparse

import torch
import torch.utils.data
from torch import nn, optim
from torch.nn import functional as F
from torch.autograd import Variable
from torch.distributions import MultivariateNormal

import pandas as pd
import numpy as np

import os
import time
import pickle
import random
import warnings
import sys

import scipy.stats as st
from scipy.stats import norm
from tqdm import tqdm,trange,tqdm_notebook
from itertools import combinations

class ExpInfo(object):
    def __init__(self, args, min_map, max_map, cat_cols, num_cols, encoding_type, col_infos):
    #The program dumps the model and synthetic dataset into these folders. create them if they do not exist
        self.model_name = args.model_name
        self.output_dir = args.data_output_dir
        os.makedirs(self.output_dir, exist_ok=True)

    #For each (numeric) column store the min max so that it could be normalized
    # such standardization to 0-1 makes it much easier for DL to learn the data
        self.min_map=min_map
        self.max_map = max_map

    #position indexes of categorical and numerical columns
        self.cat_cols=cat_cols
        self.num_cols=num_cols
    
    #how to encode variables. it is of the form a_b 
    #where a/b is one of hot or num. hot => one hot encoding for everything and num=treat everything as numerical
    #usually it is hot_num where categorical are one-hot encoded and numeric are treated as is
    #TODO: convert categorical to embedding like in Naru
        self.encoding_type=encoding_type

    #we represent each tuple as a real valued vector after encoding as hot/num. this acts as the starting ending index for each column
        self.col_infos=col_infos

    #the following are the set of getter setters that gets these values
    def get_min_map(self):
        return self.min_map
    def get_max_map(self):
        return self.max_map
    def get_cat_cols(self):
        return self.cat_cols
    def get_num_cols(self):
        return self.num_cols
    def get_encoding_type(self):
        return self.encoding_type
    def get_col_infos(self):
        return self.col_infos
    
def write_pickle(fileName, inp):
    file = open(fileName, 'wb')
    pickle.dump(inp, file)
    file.close()

def read_pickle(fileName):
    file = open(fileName,'rb')
    out = pickle.load(file)
    file.close()
    return out

#transform_forward: convert input to an encoding (hot_hot, hot_num, num_num)
def transform_forward(args, df, num_cols, cat_cols, encoding_type):
    assert (encoding_type=="hot_hot" or encoding_type == "num_num" or encoding_type=="hot_num")
    all_columns=[]
    all_columns.extend(cat_cols)
    all_columns.extend(num_cols)
#     all_columns.sort() ### Not needed.
    
    cat_type = "hot"
    num_type = "num"
    if encoding_type == "hot_hot":
        num_type="hot"
    elif encoding_type=="num_num":
        cat_type ="num"
       
    #this function computes all the necessary mappings and then persists them so that it could be used later
    #this is not a very efficient code but needs to be done only once for each dataset 
    si=0
    col_info = {}
    
    min_map= {}
    max_map = {}
    
    for c in all_columns:
        min_map[c] = 0.0
        max_map[c] = 1.0
        
        if c in cat_cols:
        #get all distinct values to an array and use that for indexing
            unique= df[c].unique()
            print('{} {}'.format(c,unique.shape))
            unique = unique.tolist()
            if cat_type == "hot":
                #(start index, end index+1, list of value for hot encoding[Optional])
                col_info[c] =(si, si+len(unique), unique)
                si = si + len(unique)
            else:
                col_info[c] =(si,si+1, unique)
                si+=1   
        else:
        #treat each numeric as float. treating integers in VAE is quite tricky and usually this works well enough and can be post-processed
            df[c]=df[c].astype(float)
            if num_type == "hot": 
                df[c] = pd.cut(df[c], 5)
                unique= df[c].unique()
                unique = unique.tolist()
                col_info[c] =(si, si+len(unique), unique)
                si = si + len(unique)
            else:
                min_map[c] = df[c].min()
                max_map[c] = df[c].max()
                df[c] = (df[c]-min_map[c])/(max_map[c]-min_map[c])
                col_info[c] =(si, si+1, [])
                si+=1
    print("Completed min-max Normalization")
    #store all the info to a pickle file
    exp_info = ExpInfo(args, min_map, max_map,cat_cols, num_cols, encoding_type, col_info)
    write_pickle(exp_info.output_dir+"exp_info", exp_info)

    #now convert each tuple into this real-valued vector
    np_in = np.zeros((df.shape[0],si)).astype(float)
    for i,row in tqdm(df.iterrows()):
        for j in all_columns:
            lb,_, uniques = col_info[j]
            if j in cat_cols:
                k = uniques.index(row[j])
                if cat_type == "hot":
                    np_in[i][lb+k]=1
                else:
                    factor = 1.0/len(uniques)
                    np_in[i][lb]= (k+0.5)* factor
            else:
                if num_type == "hot":
                    k = uniques.index(row[j])
                    np_in[i][lb+k]=1
                else:
                    np_in[i][lb]=row[j]
    print("PERFORMED ALL THE TRANSFORMATIONS")
    train_size = int(np_in.shape[0]*0.95)
    x_train = np_in[0:train_size]
    x_test = np_in[train_size:]
    return x_train, x_test

#transform_reverse: convert an encoding (hot_hot, hot_num, num_num) to input format
def transform_reverse(pred, output_dir):
    exp_info = read_pickle(output_dir+"exp_info")
    min_map = exp_info.get_min_map()
    max_map = exp_info.get_max_map()
    cat_cols = exp_info.get_cat_cols()
    num_cols = exp_info.get_num_cols()
    encoding_type = exp_info.get_encoding_type()
    col_infos = exp_info.get_col_infos()
    
    all_columns = []
    all_columns.extend(cat_cols)
    all_columns.extend(num_cols)
    all_columns.sort()
    
    output_list=[]
    for x_decoded in pred:
        dict = {}
        for k in all_columns:
            lb, ub, uniques =col_infos[k]
            if lb+1 == ub:
                if k in cat_cols:
                    l =  len(uniques)
                    v = int(round(x_decoded[lb]*l - 0.5 ))
                    dict.update({k: uniques[v]})
                else:
                    v = x_decoded[lb]*(max_map[k]- min_map[k]) +  min_map[k]
                    dict.update({k:v})
                
            else:
                if k in cat_cols:
                    index = np.argmax(x_decoded[lb:ub])
                    v = uniques[index]
                    dict.update({k:v})
                else:
                    try: 
                        index = np.argmax(x_decoded[lb:ub]) 
                        range_v = uniques[index]
                        v = (range_v.left+range_v.right)/2.0
                        dict.update({k:v})
                    except:
                        print(index, lb, ub, np.argmax(x_decoded[lb:ub]),uniques)
                        
                            
        
        output_list.append(dict)
    pf = pd.DataFrame(output_list)
    return pf

#Contains VAE training, test, generation
#Controller is a caller of train and test
class VAE(nn.Module):
    def __init__(self,org_dim, latent_dim, neurons):
        super(VAE, self).__init__()
        self.org_dim = org_dim
        self.latent_dim = latent_dim
        
        self.fc1 = nn.Linear(org_dim, neurons)
        self.fcb1 = nn.BatchNorm1d(neurons)
        
        self.fc1a = nn.Linear(neurons, neurons)
        self.fcb1a = nn.BatchNorm1d(neurons)
        
        
        self.fc21 = nn.Linear(neurons, latent_dim)
        self.fc22 = nn.Linear(neurons, latent_dim)
        
        
        self.fc3 = nn.Linear(latent_dim, neurons)
        
        self.fc3a = nn.Linear(neurons, neurons)
        
        self.fc4 = nn.Linear(neurons, org_dim)
       
    #from orig space to latent space
    def encode(self, x):
        h1 = F.relu(self.fc1(x))
        hb1 = self.fcb1(h1)
        
        h1a = F.relu(self.fc1a(hb1))
        hb1a = self.fcb1a(h1a)

        return self.fc21(hb1a), self.fc22(hb1a)

    #applies reparameterization trick
    def reparameterize(self, mu, logvar):
        std = torch.exp(0.5*logvar)
        eps = torch.randn_like(std)
        return eps.mul(std).add_(mu)

    #Rejection with batch passes
    def rejection_batchwise(self,x,mu,logvar,epoch):
        tgt_count = x.shape[0]
        gen_zs = []
        xs = []
        while tgt_count>=0:
            u = torch.rand(x.shape[0]) ### Randomly generate U values.
            accept_prob = torch.zeros((x.shape[0],)) + 0.9 ## Accept Prob of 0.9
            std = torch.exp(0.5*logvar)
            eps = torch.randn_like(std)
            rep_z = eps.mul(std).add_(mu)
            accept_mask = (u-accept_prob<=0)
            generated_z = rep_z[accept_mask]
            taken_x = x[accept_mask]
            xs.append(taken_x)
            gen_zs.append(generated_z)
            tgt_count -= generated_z.shape[0]
        return torch.cat(xs,axis=0)[:x.shape[0]],torch.cat(gen_zs,axis=0)[:x.shape[0]]

#         device = x.device
#         gen_zs = torch.zeros(mu.shape,device=device) ### Create a container for generated z's.
#         gen_mask = torch.zeros(mu.shape[0],dtype=torch.bool,device=device) ### 1D mask if the z has been accepted or not.
#         tgt_mask = torch.ones(mu.shape[0],dtype=torch.bool,device=device) ### All ones.
#         i = 0
#         while True:
#             u = torch.rand(x.shape[0],device=device) ### Randomly generate U values.
#             accept_prob = torch.zeros((x.shape[0],),device=device) + 0.9 ## Accept Prob of 0.9
#             std = torch.exp(0.5*logvar)
#             eps = torch.randn_like(std) 
#             rep_z = eps.mul(std).add_(mu)
#             accept_mask = (u-accept_prob<=0)
#             pending_mask = torch.mul(accept_mask,~gen_mask)
#             gen_zs += pending_mask*rep_z
#             gen_mask = (accept_mask + pending_mask) > 0 ### Now I have accepted pending_mask.
#             if torch.all(torch.eq(gen_mask,tgt_mask)):
#                 break
#         return gen_zs
 
    #decoder => from latent space to original space
    def decode(self, z):
        h3 = F.relu(self.fc3(z))
        h4 = F.relu(self.fc3a(h3))
        return torch.sigmoid(self.fc4(h4))

    #applies a forward pass: pass through encoder, then decode it 
    def forward(self, x, epoch, rejection = 0):
        mu, logvar = self.encode(x.view(-1, self.org_dim))
        if not rejection:
            z = self.reparameterize(mu, logvar)
        else:
            x, z = self.rejection_batchwise(x,mu,logvar,epoch)
            mu, logvar = self.encode(x.view(-1, self.org_dim))
        return x, self.decode(z), mu, logvar

    def calculate_t(self, x):
        mu, logvar = self.encode(x.view(-1, self.org_dim))
        std = torch.exp(0.5*logvar)
        rep_z = self.reparameterize(mu, logvar)

        normal = torch.distributions.normal.Normal(0,1) ## Normal Prior on Z.
        p_z = normal.log_prob(rep_z) ## Probabilitiy of z being sampled from normal prior.
#         print("P(Z)")
#         print(p_z.shape)

        x_cap = self.decode(rep_z) ## Output based on the obtained z.
        x_distr = torch.distributions.normal.Normal(torch.mean(x_cap,axis=0),1) ## Distribution with x_cap as mean
        p_x_z = x_distr.log_prob(x)
#         print("P(X|Z)")
#         print(p_x_z.shape)

        q_normal = torch.distributions.normal.Normal(mu,std)
        q_z_x = q_normal.log_prob(rep_z)
#         print("Q(Z|X)")
#         print(q_z_x.shape)

        T = np.log(0.9) - torch.mean(p_z,axis=-1) - torch.mean(p_x_z,axis=-1) + torch.mean(q_z_x,axis=-1)
        return T

# Reconstruction + KL divergence losses summed over all elements and batch
def loss_function(recon_x, x, mu, logvar, org_input_dim):
    BCE = F.binary_cross_entropy(recon_x, x.view(-1, x.shape[1]), reduction='sum')
    KLD = -0.5 * torch.sum(1 + logvar - mu.pow(2) - logvar.exp())
    return BCE*2 + KLD

def percentile(t: torch.tensor, q: float):
    k = 1 + round(.01 * float(q) * (t.numel() - 1))
    result = t.view(-1).kthvalue(k).values.item()
    return result

def calculate_t(model, x_train, B):
    xtr = x_train.float()
    N,D = xtr.size()
    nsteps = int(N/B) + (N%B !=0)
    with torch.no_grad():
        T_ests = 0
        T_alls = []
        for step in range(nsteps):
            lb = step*B
            ub = lb+ min(B, N-lb)
            data = Variable(xtr[lb:ub])
            T_est = model.calculate_t(data)
            T_alls.append(T_est)
        T_ests = torch.cat(T_alls)
        result = percentile(T_ests,0.9)
        return result

#Straightforward batched training process
def train(model, optimizer, epoch, x_train, log_interval, B, org_input_dim, rejection):
    xtr = x_train.float()
    model.train()

    N,D = xtr.size()
    nsteps = int(N/B) + (N%B !=0)
   
    train_loss = 0
    for step in range(nsteps):
        lb = step*B
        ub = lb+ min(B, N-lb)
        data = Variable(xtr[lb:ub])        
        optimizer.zero_grad()
        data, recon_batch, mu, logvar = model(data, epoch, rejection)
        loss = loss_function(recon_batch, data, mu, logvar,org_input_dim)
        loss.backward()
        train_loss += loss.item()
        optimizer.step()
    return train_loss / N

#applies the model to a validation set (even though it is called as test)
# this should give a good indication about how the model works
def test(model, x_test, log_interval, B, org_input_dim, rejection = 0):
    xte = x_test.float()
    model.eval()
    test_loss = 0
    N,D = xte.size()
    nsteps = int(N/B) + (N%B !=0)
    epoch=1
    with torch.no_grad():
        for step in range(nsteps):
            lb = step*B
            ub = lb+ min(B, N-lb)
            data = Variable(xte[lb:ub])
            data, recon_batch, mu, logvar = model(data,epoch, rejection)
            test_loss += loss_function(recon_batch, data, mu, logvar,org_input_dim).item()
    test_loss /= N
    print('====> Test set loss: {:.4f}'.format(test_loss))