# VAE

### Train Model
```
## Setup the variables base_model_name, input_file, model_name, seeds, run and num_gpus
config = {
    'model_name': base_model_name,
    'input_file': input_file,
    'output_dir': 'outputs/{}/'.format(model_name),
    'data_output_dir': 'outputs/{}/'.format(base_model_name),
    'batch_size': 512,
    'latent_dim': 64,
    'neuron_list': 256,
    'epochs': 100,
    'rejection':1,
    'seed':seeds[run],
    'gpus':run%num_gpus
}
cmd = "python train.py "
for key in config:
    cmd += "--{}  {} ".format(key,config[key])
cmds.append(cmd)
```

### Generate Samples
```
config = {
    'model_name': base_model_name,
    'input_file': input_file,
    'output_dir': 'outputs/{}/'.format(model_name),
    'data_output_dir': 'outputs/{}/'.format(base_model_name),
    'batch_size': 512,
    'latent_dim': 64,
    'neuron_list':256,
    'num_samples':100000,
    'seed':seeds[run],
    'gpus':1
}
cmd = "python score.py "
for key in config:
    cmd += "--{}  {} ".format(key,config[key])
cmds.append(cmd)
```

