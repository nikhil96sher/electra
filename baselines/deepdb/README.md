# DeepDB
Github Repo - https://github.com/DataManagementLab/deepdb-public

### Setup Instructions
```
git clone https://github.com/DataManagementLab/deepdb-public.git
cd deepdb-public
<install requirements>
```

### Generating Ensemble
```
python3 maqp.py --generate_ensemble 
    --dataset ssb-500gb
    --samples_per_spn 1000000
    --ensemble_strategy single 
    --hdf_path ../mqp-data/ssb-benchmark/gen_hdf 
    --ensemble_path ../mqp-data/ssb-benchmark/spn_ensembles
    --rdc_threshold 0.3
    --post_sampling_factor 10
```
### Evaluating Ground Truth
```
python3 maqp.py --aqp_ground_truth
    --query_file_location ./benchmarks/ssb/sql/aqp_queries.sql
    --target_path ./benchmarks/ssb/ground_truth_500GB.pkl
    --database_name ssb
```

### Evaluating AQP Queries
```
python3 maqp.py --evaluate_aqp_queries
    --dataset ssb-500gb
    --target_path ./baselines/aqp/results/deepDB/ssb_500gb_model_based.csv
    --ensemble_location ../mqp-data/ssb-benchmark/spn_ensembles/ensemble_single_ssb-500gb_1000000.pkl
    --query_file_location ./benchmarks/ssb/sql/aqp_queries.sql
    --ground_truth_file_location ./benchmarks/ssb/ground_truth_500GB.pkl
```

