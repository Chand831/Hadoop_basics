books = LOAD '/tmp/sandbox/BX-BooksCorrected.txt' USING PigStorage(';') AS (ISBN:chararray, BookTitle:chararray, BookAuthor:chararray, YearOfPublication:int, Publisher:chararray);

DESCRIBE books;

Finding books by year.

groupByYear = GROUP books BY YearOfPublication;
describe groupByYear;

countByYear = foreach groupByYear generate group as YearOfPublication, COUNT($1) as BookCount;
describe countByYear;



