-- contraints are rule that are applied on the table
/**

we use it to mae more relaiable

**/


-- structure (data definaition language)
-- create ,alter, drop,truncate
 use regex;
 create table test1(sno int);
 insert into test1(sno) values(20);
 insert into test1 values(10),(20),(null),(50),(null);
 select count(sno),count(*) from test1;
 
 select * from test1;
 
 
 
 create table test2(sno int not null,salary int);
 insert into test2(sno,salary) values(20,1000);
 insert into test2(sno,salary) values(20,null);
 insert into test2(sno,salary) values(null,1000); -- error
 insert into test2(sno,salary) values(1000);    -- error
 
 select * from test2;
 
 create table test3(sno int not null default 80,salary int);
 insert into test3(salary) values(1000);
  insert into test3(sno) values(5000);
  
  select * from test3;
 create table test4(sno int not null ,salary int unique default 90);
 insert into test4(sno,salary)values(1000,2000);
 insert into test4(sno,salary)values(1001,2000); -- error duplicates values
 insert into test4(sno)values(1000);
 
 insert into test4(sno)values(2000); -- error default 100 in table
 insert into test4(sno,salary)values(1500,null);
 insert into test4(sno,salary)values(1600,null);
 select * from test4;
 
-- rather than find a constraint give it a name 
 create table test5(sno int,salary int,
 constraint regex_test5_sno_check check (sno between 1 and 100),
 constraint regex_test5_salary_check check (salary in (1000,2000)));
 
 insert into test5(sno,salary) values(4,1000);
 insert into test5(sno,salary) values(150,1000); -- error
 insert into test5(sno,salary) values(90,1500); -- error
 
 create table test7(sno int primary key, salary int);
 insert into test7(sno,salary) values(4,1000);
  insert into test7(sno,salary) values(null,12233);
  select * from test7;
  
  -- foreign key
  create table customer2(cid int primary key, cname varchar(20));
  insert into customer2 values(10,'aman'),(15,'anand');
  select * from customer1;
  -- jis table p foriegn key bnaro ho ,vo table sbse phle bnai jati h jha uniqueness hoti h 
  create table order2(order_no int primary key, city varchar(20), cid int,
  foreign key (cid) references customer2(cid) );
  insert into order2 values(1007, ' jaipur',10), (1008,'goa',10),(1009,'delhi',15);
  insert into order2 values(100011,'j&k',25); -- error as 25 cid is not in customer table
  select * from order2;
 
 
 
 
 
 
 
 
 
 
