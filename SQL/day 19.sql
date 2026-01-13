-- data types in sql
-- 1=>number => 2 types=> int,decimal
-- (tinyint=1byte),(samllint=2 byte),(mediumint=3 byte),(int=4 byte),(bigint=8 byte)
-- 1 byte=> 8 bit 2**8=> 256 (-128 to 127)

use regex;
create table piyush1(salary tinyint);
insert into piyush1 values(127);
insert into piyush1 values(128);


-- size=> double data ka bda hota h 
-- price double ka use => decimal mathematical calculation k liye use hota h 

create table piyush2(salary float, price double);
insert into piyush2 values(100.6781241 , 100.627354);
select * from piyush2;


-- string values
-- char()=> fixed length/size character... char is faster than varchar
-- varchar()=> variable length character
-- learn diff between char nd varchar

create table piyush3( name varchar(20), gender char(10));
insert into piyush3 values('mitansh','male'),('gourav','male'),('dolly','female');
insert into piyush3 values('raj        ','male          ');
select *, length(name), length(gender) from piyush3;
select * from piyush3;

-- in char it truncate the wide space from the last 
-- in varchar it is also of fixed length but if we store the data less then the limit it will occupy that much memory only nd the rest memory
-- in char=> it truncate thw wide space from the last
-- varchar => it truncate the wide space after the size or length of that varchar if the length exceed the widespace it will remove that wide space 




-- Main Difference between CHAR and VARCHAR in SQL
-- Feature	              CHAR	                                               VARCHAR
-- Full Form	        Character	                                         Variable Character
-- Length Type	       Fixed-length	                                         Variable-length
-- Storage	        Always uses declared size	                               Uses only required size
-- Padding	      Adds spaces if data is shorter	                           No extra spaces added
-- Performance	     Slightly faster                                           	Slightly slower
-- Memory Waste  	Can waste space	                                            Efficient memory usage


-- ddl statement(data definition language)
-- create (table)
-- drop
-- truncate
-- alter

-- create a table using select (CTAS)
create table actor_cp as 
select first_name,last_name from sakila.actor;
select * from actor_cp;

-- drop => for delete table structure nd data
drop table actor_cp;
select * from actor_cp;

create table actor_cp as 
select first_name,last_name from sakila.actor 
where actor_id between 10 and 14;
select * from actor_cp;

-- alter =>  existing table ka structure change krta h 
alter table actor_cp add column (salary int);
select * from actor_cp;
alter table actor_cp add constraint new_key primary key (first_name); -- primary key added
alter table actor_cp drop column last_name; -- column drop
alter table actor_cp rename column salary to newsalary; -- change column name 
desc actor_cp;

-- dml statement
-- insert
-- update set  col=values
SET SQL_SAFE_UPDATE = 0;
update actor_cp set  newsalary=900;
UPDATE actor_cp set newsalary =888 where first_name='uma';

-- how to retrieve data
