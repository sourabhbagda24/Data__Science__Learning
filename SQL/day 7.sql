-- functions( data, string, number)
-- aggregate functions (to perform the calculation on set of rows)(multi line functions)
-- count
-- aggregate function k sath or koi function lgana h 
 use world;
 select * from country;
 select count(indepyear) from country;
 select count(*) ,count(indepyear) from country;
 
 -- distinct => unique values deta h , isko direct likhte h function ki trh nhi likhte h , multiple functions likhte h to.
 select distinct continent, region from country;
 
 -- avg
 select count(population), sum(population), avg(population) from country;
 
 select governmentform from country;
 
 select  count(government) , count(distinct governmentform), sum(governmentform) from country where continent ='asia';
 
 select count(name), sum(population), count(distinct indepyear) from country where continent ='africa';
 
 -- get the total countries the avg surface area the total population for the countries which has got their indepemdence from the year 1947 to 1998 these year should not be included
  select count(name), sum(population), avg (surfacearea) from country where indepyear between 1948 and 1997;
  
  
  select name ,indepyear<2005 from country;
  
  
  -- get the total no of countries nd the no of unique continents along wid the avg population nd the total no of capitals for the countries starting wid a or starting wid d
  select  count(name) , count(distinct continent), avg(population), sum(capital) from country where name like 'A%' or name like 'D%';
  
  -- groupby => similar values ko ek sath collect krna, single column ko access kr skte h ,jo column group by m lete h vhi select m krte h use  
  select continent, count(*) from country group by continent;
  select indepyear, count(*) from country group by indepyear; 
  
  select governmentform, count(*) from country  group by governmentform;
  
  select continent ,count( name), sum(population),max(population),min(population),max(indepyear),min(indepyear) from country group by continent;
  
  select * from city;
  -- from the city table u have to find the total city is , the totaldistrict, unique district the total population from the city table
  select countrycode, count(*), count(district), count(distinct district), sum(population) from city group by countrycode;