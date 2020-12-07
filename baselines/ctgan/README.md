# CTGAN
Github Repo - https://github.com/sdv-dev/CTGAN

### Setup Instructions
```
git clone https://github.com/sdv-dev/CTGAN
cd CTGAN/
python setup.py install
```

### Training Model
```
ctgan_learn = CTGANSynthesizer()
ctgan_learn.fit(df,cat_cols,epochs=num_epochs) ## df is the dataframe.
```

### Generating Samples
`samples = ctgan_learn.sample(100000)`

```
col = 2
val = 2
samples = ctgan_learn.sample(1000,col,val) ## Generate samples with col=val condition
```
