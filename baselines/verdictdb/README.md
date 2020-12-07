# VerdictDB
Github Repo - https://github.com/verdict-project/verdict

### Setup Instructions
```
pip install pyverdict
```

### Generating Scramble
```
verdict_conn = pyverdict.postgres('localhost',5432,'root','root','root')
sql_query = 'create scramble verdictdb.{} from {} size {}'.format(scramble_name,dataset_name,sampling_rate)
verdict_conn.sql(sql_query)
```

### Evaluating Queries
```
verdict_conn.sql(query) ### Ensure the table name is replaced by the scramble name.
```
