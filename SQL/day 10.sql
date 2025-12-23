-- primary key => it is used to identify the uniqueness in data
-- 2 table => data extract(join)
use world;
select * from country;
-- countrycode=> primary key  , code column
-- city=>(id)(pk)  , countrycode
--  forign key i used to make relation between table
select * from city;
 describe city;
 
 select count(id),count(distinct id),count(population),count(distinct population) from city;
 
 -- find out the city nd their perspective country name
 select ct.name , ct.countrycode, cnty.code, name from city as ct join  country as cnty where ct.countrycode=cnty.code;
 select cnty.name, cnty.code from country as cnty;
 
 -- u need to find country name , population of the city along wid the government form in that city wid the population from highest to lowest
 select ct.name, ct.population,cnty.governmentform from city as ct join country as cnty where ct.countrycode=cnty.code order by ct.population desc;
  select * from countrylanguage as cl;
  
 -- need to get the country name,population , and all the language spoken for each country
 select cnty.name,cnty.population from country as cnty;
 select cl.countrycode,cl.language from countrylanguage as cl;
  select cnty.name,cnty.population ,cl.countrycode, cl.language from country as cnty join countrylanguage as cl where cnty.code=cl.countrycode;
  
  use sakila;
  select * from actor , film_actor ;
  select * from film_actor;
  select* from film;
  -- get the actor id nd first name along wid its film id
  select ac.actor_id, ac.first_name from actor as ac;
  -- actor ,filmactor,film what is the actor name along wid their film
  
