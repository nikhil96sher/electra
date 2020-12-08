from tqdm import tqdm
import matplotlib.pyplot as plt
from VAE import *
import time

from argparse import ArgumentParser
parser = ArgumentParser(description='VAE')
parser.add_argument('--model_name', type=str, action='store', required=True,
                    help='Model name to be stored')
parser.add_argument('--input_file', type=str, action='store', required=True,
                    help='Path to the input .csv file. ')

parser.add_argument('--output_dir', type=str, action='store', required=True,
                    help='Path to the output directory')

parser.add_argument('--data_output_dir', type=str, action='store', required=True,
                    help='Path to the processed data output directory')

parser.add_argument('--batch_size', type=int, action='store', default=64,
                    help='Batch size for training. ' +
                         'Default: 64.')

parser.add_argument('--latent_dim', type=int, action='store', default=64,
                    help='Latent Dimension size ' +
                         'Default: 64.')

parser.add_argument('--neuron_list', type=int, action='store', default=200,
                    help='Latent Dimension size ' +
                         'Default: 200.')

parser.add_argument('--epochs', type=int, action='store', required=True,
                    help='Number epochs to train VAEAC.')

parser.add_argument('--log_interval', type=int, action='store',
                    default=25)

parser.add_argument('--rejection', type=int, action='store',
                    default=0)

parser.add_argument('--num_samples', type=int, action='store',
                    default=1000)

parser.add_argument('--seed', type=int, action='store',
                    default=42)

parser.add_argument('--gpus', type=str, action='store', default='0',
                    help='The GPU device to be used for training.')

### Parsing and saving the input arguments
args = parser.parse_args()

import os
os.environ["CUDA_VISIBLE_DEVICES"]=args.gpus

### Create output dir
os.makedirs(args.output_dir, exist_ok=True)

### Set the seeds. Default: 42
np.random.seed(args.seed)
torch.manual_seed(args.seed)
torch.cuda.manual_seed_all(args.seed)

#Specify model parameters
model_name = args.model_name
file_name = args.input_file
batch_size = args.batch_size
epochs = args.epochs
log_interval = args.log_interval
latent_dim = args.latent_dim
neuron_list = args.neuron_list

#Specify the size of synthetic dataset size
num_instance = args.num_samples

#Specify which are categorical and which are numeric
#We don't care about header, so delete the header from input if it has. 
#After reading the input, this cell converts the input to encoding. 
print("Reading INPUT File")
orig_df = pd.read_csv(args.input_file)
orig_df = orig_df.dropna().reset_index(drop=True)
if orig_df.shape[0] >= 1000000:
    df = orig_df.sample(1000000).reset_index(drop=True)
else:
    df = orig_df
print("Original",orig_df.shape)
print("Sampled",df.shape)
cols = df.columns
cat_cols = list(filter(lambda x: '_c' in x,cols))
num_cols = list(filter(lambda x: '_n' in x,cols))
org_input_dim = len(cat_cols)+len(num_cols)

#hot_hot, num_num and hot_num three supported encoding type for categorical_numerical data
encoding_type="hot_num" #categorical hot and numeric column in numeric form

print("Transforming Train/Test")
if os.path.exists(args.data_output_dir+'data.pkl'):
    x_train, x_test = pickle.load(open(args.data_output_dir+'data.pkl','rb'))
else:
    x_train, x_test = transform_forward(args, df, num_cols, cat_cols, encoding_type)
    pickle.dump((x_train,x_test),open(args.data_output_dir+'data.pkl','wb'),protocol = 4)
print("Train Shape: ", x_train.shape,"Test Shape" ,x_test.shape)

use_cuda = torch.cuda.is_available()
if use_cuda:
    dev_gpu = "cuda" ## Yes, it uses a GPU.
    device_gpu = torch.device(dev_gpu)  

start = time.time()

model_name = args.model_name
model = VAE(x_train.shape[1], latent_dim, neuron_list)
if use_cuda:
    model.to(device_gpu)
    x_train = torch.from_numpy(x_train).to(device_gpu)
    x_test = torch.from_numpy(x_test).to(device_gpu)

optimizer = optim.Adam(model.parameters(), lr=1e-3,weight_decay=1e-4)
loss=[]
bestLoss= -1;
start_epoch = 0

if os.path.exists(args.output_dir+'model_state'):
    checkpoint = torch.load(args.output_dir+'model_state')
    model.load_state_dict(checkpoint['state_dict'])
    optimizer.load_state_dict(checkpoint['optimizer'])
    start_epoch = checkpoint['epoch']
    bestLoss = checkpoint['bestLoss']
    loss = pickle.load(open(args.output_dir+'loss.pkl','rb'))

for epoch in tqdm(range(start_epoch+1, epochs + 1)):
    currentLoss = train(model, optimizer, epoch,x_train, log_interval, batch_size,org_input_dim, args.rejection)
    loss.append(currentLoss)
    if bestLoss <0 or (currentLoss< bestLoss):
        torch.save(model, args.output_dir+'model.pt')
        bestLoss = currentLoss
    
    if epoch % 10 == 0:
        t_val = calculate_t(model, x_train, batch_size) ## The value of T computed here is used during sample generation.
        time_taken = time.time()-start

        pickle.dump(t_val,open(args.output_dir+'t-val.pkl','wb'))
        pickle.dump(loss,open(args.output_dir+'loss.pkl','wb'))
        pickle.dump(time_taken,open(args.output_dir+'time_taken.pkl','wb'))
        plt.plot(loss)
        plt.savefig(args.output_dir+'loss.png')

        state = {'epoch': epoch, 'state_dict': model.state_dict(),'optimizer': optimizer.state_dict(), 'bestLoss': bestLoss}
        torch.save(state, args.output_dir+'model_state')

t_val = calculate_t(model, x_train, batch_size) ## The value of T computed here is used during sample generation.
print("90th Percentile value of T",t_val)
print("Training Ends")
time_taken = time.time()-start

pickle.dump(t_val,open(args.output_dir+'t-val.pkl','wb'))
pickle.dump(loss,open(args.output_dir+'loss.pkl','wb'))
pickle.dump(time_taken,open(args.output_dir+'time_taken.pkl','wb'))
plt.plot(loss)
plt.savefig(args.output_dir+'loss.png')

state = {'epoch': epochs, 'state_dict': model.state_dict(),'optimizer': optimizer.state_dict(), 'bestLoss': bestLoss}
torch.save(state, args.output_dir+'model_state')