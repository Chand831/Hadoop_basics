
index_raw = LOAD '/tmp/sandbox/aapl.csv' USING PigStorage(',') AS (Date:Datetime, Open:float, High:float, Low:float, Close:float, Volume:int, AdjClose:float);
filtered_high = FILTER index_raw BY Close > 113;
index_values = FOREACH filtered_high GENERATE (Date, Open, Close);
ILLUSTRATE index_values;



