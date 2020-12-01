# Housing Dataset

Dataset Name: `Housing`

Dataset Size: `299241`

Dataset Columns: `livingRoom`, `drawingRoom`, `kitchen`, `bathRoom`, `buildingType`, `renovationCondition`, `buildingStructure`, `elevator`, `fiveYearsProperty`, `subway`, `district`, `totalPrice`, `price`, `square`, `communityAverage`, `tradeTime`

Categorical Columns: `livingRoom`, `drawingRoom`, `kitchen`, `bathRoom`, `buildingType`, `renovationCondition`, `buildingStructure`, `elevator`, `fiveYearsProperty`, `subway`, `district`

Numerical Columns: `totalPrice`, `price`, `square`, `communityAverage`

Time Columns: `tradeTime`

Synthetic queries used for evaluation are in `queries/synthetic_queries.sql`.

Synthetic Group By queries used for evaluation are in `queries/groupby_queries.sql`.

Queries obtained from production workload are in `queries/aep_avg.sql` and `queries/aep_sum.sql`.