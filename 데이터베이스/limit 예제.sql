insert into t1(contents) values('1'),('2'),('3'),('4'),('5'),('6'),('7'),('8'),('9'),('10'),('11'),('12'),('13'),('14');
SELECT * FROM test.t1 limit 10;
select * from t1 limit 0, 5;
select * from t1 limit 5, 5;