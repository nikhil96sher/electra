# Flights Dataset

Dataset Name: `Flights`

Dataset Size: `7268232`

Dataset Columns: `Quarter`, `Month`, `DayofMonth`, `DayOfWeek`, `Reporting_Airline`, `Origin`, `OriginStateName`, `Dest`, `DestStateName`, `DepDelay`, `TaxiOut`, `ArrDelay`, `TaxiIn`, `AirTime`, `Distance`

Categorical Columns: `Quarter`, `Month`, `DayofMonth`, `DayOfWeek`, `Reporting_Airline`, `Origin`, `OriginStateName`, `Dest`, `DestStateName`

Numerical Columns: `DepDelay`, `TaxiOut`, `ArrDelay`, `TaxiIn`, `AirTime`, `Distance`

Synthetic queries used for evaluation are in `queries/synthetic_queries.sql`.

Synthetic Group By queries used for evaluation are in `queries/groupby_queries.sql`.

Queries obtained from production workload are in `queries/aep_avg.sql` and `queries/aep_sum.sql`.