 -- group by
 use world;
 select region ,count(name),count(continent) from country group by region;
 select region, avg(population) from country group by region;
 
 -- count cities which have a population of more than 1 lakh
 -- where(sbse phle execute) => group by => count()
 select * from city;
 select district, count(name) as totalcity from city group by district;
 select district, count(name) from city where population>100000 group by district;
 
 select count(name) from country where continent ='asia' and indepyear>1950;
 
 -- get total country which got independence after 1950 in each statement
 select continent, count(name) from country where indepyear>1950 group by continent;
 
 -- where is only filter the data which is exist in table
 
 -- diff between having nd where clause=> where clause is used to filter the data from table but on the othe hand having is used to filter tha data in aggregate function .having group by k bad lgta h or where group by k aage lgta h 
 -- having to filter data based on aggregate column like sum,count,max
 select continent, sum(population) from country group by continent having sum(population)>100;
  -- un countries ka population chahiye but only for those countries which hav lifeexpectancy greater than 35
  
  select  continent , sum(population) from country where lifeexpectancy>30 group by continent;
  
  -- u need to find out the total countries for each governmanet form where the total no of countries should be greater than 30
  -- u need to find the only for the countries having thier capital greater than 30 nd total population freater than 3 lakh
  
  select governmentform, count(name) from country group by governmentform having count(name)>30;
    select governmentform, count(name),  sum(population) from country where capital >30 group by governmentform having sum(population)>300000;
  
  select continent, region, count(name) from country group by continent,region;
  
    select continent, indepyear, count(name) from country group by continent,indepyear;