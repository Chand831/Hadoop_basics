CREATE EXTERNAL TABLE IF NOT EXISTS ennarit.experiments(
std STRING,
name STRING,
lang1 INT,
lang2 INT,
lang3 INT,
maths INT,
science INT,
social INT)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
COMMENT 'this is purely experimental';
