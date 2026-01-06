use sakila;

select * from payment;
select amount from payment where payment_id=2 or payment_id=3;
-- in => specific value me dudna
-- in operator=> ki jgh (=any) likh skte h 
-- kisi bhi value se bda => >any
select * from payment where amount in (select amount from payment where payment_id=2 or payment_id=3);
select * from payment where amount =any (select amount from payment where payment_id=2 or payment_id=3);
select * from payment where amount <any (select amount from payment where payment_id=2 or payment_id=3);
select * from payment where amount >any (select amount from payment where payment_id=2 or payment_id=3);

-- all => sbse me sbse bhi bda
select * from payment where amount <all (select amount from payment where payment_id=2 or payment_id=3);
select * from payment where amount >all (select amount from payment where payment_id=2 or payment_id=3);

-- what are corelated subquery ,how it is work, what are constraints in sql