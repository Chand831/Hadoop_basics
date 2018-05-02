A = LOAD '/tmp/sandbox/DelayedFlights.csv' USING PigStorage(',');
B = FOREACH A GENERATE (chararray)$17 as origin, (chararray)$18 as destination;
C = FILTER B by destination is not null;
D = GROUP C by destination;
E = FOREACH D generate group, COUNT(C.destination);
F = ORDER E BY $1 desc;
Result = LIMIT F 5;
dump Result;

