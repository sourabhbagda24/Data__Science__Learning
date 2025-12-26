use world;
select * from country;

-- case => condition ko verify krta h
/*
case population(treated like if eelse condition)
     when population =0 then 
     when population=8000  then population is 80000
     */
     
     select name, population,
     case
     when population>100000 then 'large population'
     when population>=50000 then 'medium population'
     when population>=8000 then 'small population'
     else 'v.small'
     end as 'status' from world.country;
     
          select continent,
     count(case
     when population>=50000 then 1 else 0

     end)  from world.country
     group by continent;
     
     
     
     