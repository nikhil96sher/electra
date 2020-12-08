from tqdm import tqdm
import matplotlib.pyplot as plt
from VAE import *

from argparse import ArgumentParser
parser = ArgumentParser(description='VAE')
parser.add_argument('--model_name', type=str, action='store', required=True,
                    help='Model name to be stored')
parser.add_argument('--input_file', type=str, action='store', required=True,
                    help='Path to the input .csv file. ')

parser.add_argument('--output_dir', type=str, action='store', required=True,
                    help='Path to the output directory')

parser.add_argument('--data_output_dir', type=str, action='store', required=True,
                    help='Path to the data output directory')

parser.add_argument('--batch_size', type=int, action='store', default=64,
                    help='Batch size for training. ' +
                         'Default: 64.')

parser.add_argument('--latent_dim', type=int, action='store', default=64,
                    help='Latent Dimension size ' +
                         'Default: 64.')

parser.add_argument('--neuron_list', type=int, action='store', default=200,
                    help='Latent Dimension size ' +
                         'Default: 200.')

parser.add_argument('--log_interval', type=int, action='store',
                    default=25)

parser.add_argument('--num_samples', type=int, action='store',
                    default=1000)

parser.add_argument('--seed', type=int, action='store',
                    default=42)

parser.add_argument('--gpus', type=int, action='store',
                    default=0)

### Parsing and saving the input arguments
args = parser.parse_args()

os.environ['CUDA_VISIBLE_DEVICES'] = str(args.gpus)
### Create output dir
os.makedirs(args.output_dir, exist_ok=True)

### Set the seeds. Default: 42
np.random.seed(args.seed)
torch.manual_seed(args.seed)
torch.cuda.manual_seed_all(args.seed)

model = torch.load(args.output_dir+'model.pt')
use_cuda = torch.cuda.is_available()
if use_cuda:
    dev_gpu = "cuda"
    device_gpu = torch.device(dev_gpu)  
    model.to(device_gpu)

if os.path.exists(args.data_output_dir+'data.pkl'):
    x_train, x_test = pickle.load(open(args.data_output_dir+'data.pkl','rb'))
else:
    print("Training Data Doesn't exist.")
    exit(0)

print(x_train.shape)
x_train_sampled = x_train[np.random.randint(x_train.shape[0], size=args.num_samples),:]
print(x_train_sampled.shape)
x_train = torch.from_numpy(x_train_sampled)
if use_cuda:
    x_train = x_train.to(device_gpu)
xt = x_train.float()
T = pickle.load(open(args.output_dir+'t-val.pkl','rb'))
print("T",T)
model.eval()
assert(args.num_samples == xt.shape[0])
with torch.no_grad():
        #compute the mu and logarithmic variance of the original data's z.
        mu, logvar = model.encode(xt.view(-1, xt.shape[1]))
        std = torch.exp(0.5*logvar)
        num_samples_in_one_go = xt.shape[0]

        ### For each generated sample, compute these values.
        tgt_count = args.num_samples
        all_tensor_out_taken = []
        while tgt_count > 0:
            m = torch.randn(num_samples_in_one_go, args.latent_dim) ## Sample z?
            if use_cuda:
                 m = m.to(device_gpu).float()
            rep_z = m * std + mu

            any_inf = torch.any(torch.isinf(rep_z),axis=1)
            mu = mu[~any_inf]
            std = std[~any_inf]
            rep_z = rep_z[~any_inf]
            xt = xt[~any_inf]
            num_samples_in_one_go = xt.shape[0]

            ## P(z)
            normal = torch.distributions.normal.Normal(0,1) ## Normal Prior on Z.
            p_z = normal.log_prob(rep_z) ## Probabilitiy of z being sampled from normal prior.

            ## P(x|z)
            x_cap = model.decode(rep_z) ## Output based on the obtained z.
            x_distr = torch.distributions.normal.Normal(torch.mean(x_cap,axis=0),1) ## Distribution with x_cap as mean
            p_x_z = x_distr.log_prob(xt)

            ## Q(z|x)
            q_normal = torch.distributions.normal.Normal(mu,std)
            q_z_x = q_normal.log_prob(rep_z)

            a = torch.exp(T + torch.mean(p_z,axis=-1) + torch.mean(p_x_z,axis=-1) - torch.mean(q_z_x,axis=-1))
            a_ones = torch.ones_like(a)
            if use_cuda:
                a_ones = a_ones.to(device_gpu)
            a = torch.min(a_ones,a)

            u = torch.rand(num_samples_in_one_go) ### Randomly generate U values.
            if use_cuda:
                u = u.to(device_gpu)
            accept_mask = (u-a<=0)
            tensor_out_taken = x_cap[accept_mask]
            tgt_count -= len(tensor_out_taken)
            all_tensor_out_taken.append(tensor_out_taken)
        tensor_out = torch.cat(all_tensor_out_taken)[:args.num_samples]
        out = tensor_out.cpu().detach().numpy()
        transformed_output = transform_reverse(out, args.data_output_dir)
        print("GENERATED NUM OF SAMPLES",transformed_output.shape[0])
        transformed_output.to_csv(args.output_dir+'samples_{}.csv'.format(args.num_samples),index=False)