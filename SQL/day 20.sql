-- delete is a dml operation 
-- if we do not provde any information then all rows will be deleted , so with delete we will apply where cluase 
-- so that we can delete a specific thing
-- delete only deletes the data
delete from actor_cp;


-- truncate:-  truncate is ddl statement in truncate we do not provide any condition but in delete we give condition
-- truncate mai hr data ko revert(rollback) nhi kr sakte but in delete we can rollback
-- truncate is used to just delete the data but it don't make any change in the structure
-- in case if you have executed ddl statement we can't rollback again '

-- object is a structure that can be used to manage ,store and refere the data
-- view is also called as object  

-- create is used to create the object 
-- drop is used to delete a object
-- dlt is dml statement
-- obj are the storage which can be manage ,refer, nd store the table
-- if we use ddl then we can't do rollback
use sakila;
use regex;
drop table actor_cp;

create table actor_cp as
select first_name as fname, last_name as last from sakila.actor
where actor_id between 10 and 14;


select * from actor_cp;
update actor_cp set last = 'mitansh' where fname = 'zero';


-- truncate --> Truncate is DDL statement. If we delete any data we do not provide any condition.
-- In Truncate we are not able to Revert(RollBack). 
-- In case if we run DDl then we cant do roll back.
-- Object are the storage which can be manage, refer and store the table.
-- Delecte is DML statement.

truncate  actor_cp1;

-- windows function's
-- -- Window function => A window function in SQL is a way to perform calculations across a group of rows without collapsing them into a single 
-- row (unlike GROUP BY). it is used to perform  the calculation on the set of rows wid reference to current row
-- diff. b/w 
-- GROUP BY → rows ko collapse kar deta hai
-- WINDOW FUNCTION → rows same rehti hain, extra calculated column add hota hai.


-- three parts
-- 1 => over=>it is used to apply the func over a window
use world;
select name,code,population from country;
select name,code, continent,population,(select sum(population) from country) from country;
-- by using windows function
select name,code, continent,population, sum(population) over() from country;

-- 2 => partition => divide the data into grups(partition) to which the windows func works seprately on  each grup.

-- 3705025700, north america=>482993000
select continent , sum(population) from country group by continent;
-- 3705025700
select code, name, continent,population, sum(population) over(partition by continent) from country;

select code, name, continent,population, sum(population) over(partition by code) from country;
select code, name, continent,population, sum(population) over(partition by name) from country;


-- find out the running sum or cummalative sum?
-- use order by
select code, name, continent,population, sum(population) over(order by population) from country;
