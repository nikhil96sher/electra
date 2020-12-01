# Beijing-PM25 Dataset

Dataset Name: `Beijing-PM25`

Dataset Size: `41757`

Dataset Columns: `year`, `month`, `day`, `hour`, `cbwd`, `Is`, `Ir`, `pm2.5`, `DEWP`, `TEMP`, `PRES`, `Iws`

Categorical Columns: `year`, `month`, `day`, `hour`, `cbwd`, `Is`, `Ir`

Numerical Columns: `pm2.5`, `DEWP`, `TEMP`, `PRES`, `Iws`

Synthetic queries used for evaluation are in `queries/synthetic_queries.sql`.

Queries obtained from production workload are in `queries/aep_avg.sql` and `queries/aep_sum.sql`.