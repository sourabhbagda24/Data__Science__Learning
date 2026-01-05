-- subquery =>query   within a query
-- single row query

use sakila;
select * from payment;

select amount from payment where payment_id=3;
select * from payment where amount =5.99;

select * from payment where amount=(select amount from payment where payment_id=4);

-- i need to get the information where  the staff surving for payment 8 be same 

select * from payment where staff_id =(select staff_id from payment where payment_id=8);

-- get the payment id amount nd the payment date where the month should be same as of payment id 20

select payment_id,amount,payment_date from payment where month(payment_date)=(select month(payment_date) from payment where payment_id=20);
select payment_date from payment where payment_id=20;

-- get the amount nd the total no of payments done per each amount where amount should be less than the amount of rental_id 1725

select amount,count(*) from payment where amount<(select amount from payment where rental_id=1725) group by amount ;
select amount from payment where rental_id<1725 group by amount;

-- get the month nd the total amount  spend from the payemnts table where the month is greater than the month of customer id 1 with th payment id 3
select amount,month(payment_date) from payment where customer_id=1 and payment_id=3;

select month(payment_date), sum(amount) from payment where month(payment_date)>(select month(payment_date) from payment where customer_id=1 and payment_id=3) group by month(payment_date);

--  in multi row subquery (we cant't use <,>,=,!= operator)
-- in multirow subquery we use (in, any,all)

select * from payment 
where amount in ( select amount from payment where payment_id =2 or payment_id=3);



