select database();

-- change to world databse
use world;

-- tables
show tables;


-- to see the structure of table
describe city;

-- to print the data of a table
select * from city;

-- to access column
select name, population from city;

-- column can be print in any order
select population, name, district from city; 

select name, population, population+10 from city;

-- query can be written in multiple line
-- sql is not case sensitive
select name, population, countrycode,
population from city;

-- alias (nickname)
select *,population+12+23+1 as 'newpopulation' from country;
describe city;

-- where clause we will filter the data
select * from city where district ="zuid-holland";

select * from city where countrycode= 'arg';
 -- filter city from arg countrycode

-- 6 more than 6 lakh
select * from city where population>600000;

-- <> != (not equals to)
select * from city where countrycode <> 'arg'; -- filter city from arg country code

-- in operator => do specific value me dundna h to 
 select * from country where continent ='north america';
 
 -- getting countries in below continents
Select * from country where continent  in ('north america','europe','asia');
 
 -- indepyear
 select name, continent from country where indepyear in (1901, 1960);
 
 -- range of values
  select name , continent, indepyear from country where indepyear between 1901 and 1960;
  
  -- get the code the country name nd the region where the region is not middle east
  -- get the name independence year nd population witha a 10% increase in population 
  -- get all the column of the country  where life expectancy is 38.3 or 66.4
  -- get the name continent ,population nd gnp where the population not from 5000 to 200000
  
  select * from country;
  
  SELECT Name, Region FROM country WHERE Region <> 'Middle East';
select name , population , population*1.1+population from country;
  select * from country  where lifeexpectancy in  (38.3 , 66.4);
  

  select name , continent, population, gnp from country where population between 5000 and 200000;
  

  
   select name , continent, indepyear from country where indepyear not between 1901 and 1960;
   
   -- between => range of values
   -- in=> specific value me search krna
   
   -- like operator
   -- like ==> pattern ko search krna 
    select name , continent from country where continent like 'asia';
    
    -- to meet with pattern 
    -- special charcter is called wildcard character 
    -- % [ we r finding zero or more charcter]
    -- asian asia%
    select name , continent from country where name like 'a%';
    
    -- _(underscore) => 1 charcter(_s==> phla kch bhi ho skta h but agla s hi ho)
    select name , continent from country where name like 'ir__';
    
    -- logical operator of sql, string function on regex channel
    
    -- get the continet and region from countries table where the continet is not same as europe
    select name , continent from country where continent  != 'europe';
    
    -- get the country name where the second letter of a region is a 
    select name, region from country where name like '_a%';
    
    --      where the continent the last third charcter is i
    select name ,continent from country where name like '%i__';
    
    -- where the continet should name be of minumum 5 charcters
    select name ,continent from country where name like '_____%' ; 
    
    -- where in the continent the second letter is c nd nd second last is i
    select name , continent from country where name like '_c%i_';
    
    -- where two aa should be there seprated with the charcter
    select name from country  where name like '%a_a%';
    
       select name , continent from country where name like 'ir_';
    
    -- operator in sql(logical operator)
    -- and ,or
    -- continent in(asia,africa) country k aage continent ka namm bar bar likhna hoga 
    -- and operator same coloumn m nhi aaata jese asia or europe .
    select * from country where continent ='africa' or indepyear='1901';
    
    -- code or country ka nam ek hi column me we use (concat) concat do cheezo ko add krdeta h 
    select * from country;
    select name , code, concat (name, ' ' , code) from country;
    
    -- " albania alb"
    select * from country 
    where concat (name, ' ',code) ="albania alb";
    
    -- name="albania" , continent ="albania xyz"
    
    -- functions
    /*
    set of statement
    functions
    scaler function=> row by row kaam karega(result for each row)
    multi line function=>multiple line p apply nd give 1 output
    scaler function can apply on =>date,int,float,string
    */
    
    -- string related function 
    -- CAse conversion
    use world;
    select name, continent,upper(name), lower(name) from country;
    
    select name,continent,concat(continent,'-', code,'-','regex') from country;
    
    -- concat_ws=> concat with a seprator( starting me ek underscore dalo baaki result m bhi dikhega)
      select name,continent,concat_ws( '-',continent,'regex') from country;
      
      -- substr(substring)=> charcter extract based on the position
      select name, substr(name,2) from country;
         select name, substr(name,2),substr(name,1,3) from country;
           select name, substr(name,1),substr(name,-4,2) from country;
           
           select name, continent , substr(name,1,1), substr(continent,1,1) from country;
           select name, continent from country
           where substr(name,1,1) = substr(continent,1,1);
           
           select name, continent, substr(name,1,3) from country
           where substr(name,1,3) ='alg';
           
           -- instr(basically search position of charcter)
           select name, instr(name,'e') from country;
           
           -- length(byte btata h)
           -- char_length(to get total charcter)
           select  char_length(' yash');
           select name,char_length(name) from country;
           
           -- trim(extra whitespaces ya charcter ko remove krna)
           -- lterim ,rtrim
           
           select char_length('    yash.'   );
           
           select char_length( trim('      yash.'   ));
           
           select trim('   yagggshgggggggg'    );
           select trim( both 'g' from  'yagggshgggggggg');
           
           select name, trim(both 'a' from name) from country; 
           
         -- lpad or rpad
         -- fixed charcter ka pura data bnanaa
         select name, population, lpad(population, 5,'#') from country;
           
           
      
    
    
    
    
    
    
