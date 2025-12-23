use world;
-- numeric functions, dates
select lifeexpectancy , round(lifeexpectancy) from country;
-- round is used to upgrade the value which is after the decimal point but the value is greater than 5
select 83.62,round(83.687,2);

-- decimal se phle vali value ko round up krna h 
select (456.23) , round(276.23, -2);

-- truncate=> decimal values ko extract krna
select 456.67, round(456.68,1), truncate(456.622,2);

-- mod=> remainder nikalna
select 456.67, round(456.68,1), truncate(456.622,2), mod(43,3);

select pow(2,3), ceil(3.00008), floor(3.9999);

-- date =>date ya tym print krna
-- now=> current date nd tym print krna
-- current_timestamp=> current dtae nd tym
-- cur_date=> current date deta h
select now(), curdate(), current_timestamp(), current_time();

-- add date
select now(), adddate(now(),2),adddate(now(), interval -3 month);
select now(), subdate(now(),2);

-- extract=> isse year, month ,date ,day sb nikal skte h 
select now(), extract( week from now());

-- date_fromat=> date nikal k string m convert
select now(), date_format(now(), 'month is %M & year is%w');



