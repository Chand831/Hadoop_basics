in = load '/tmp/sandbox/rhyme' USING PigStorage() as (line);
words = foreach in generate flatten(TOKENIZE(line)) as word;
grpd = group words by word;
cntd = foreach grpd generate group, COUNT(words);
dump cntd;




