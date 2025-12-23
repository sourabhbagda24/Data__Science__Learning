use sakila;
select * from payment;
select customer_id ,count(customer_id) from payment group by customer_id;

select amount > 3 group by customer_id;

-- u ned to find the total no of transcition for each amount in the month of may

select  * from payment where month (payment_date)=5;

select amount ,count(*)  from payment where month (payment_date)=5 group by amount;


-- u need to find out the max amount spend the average amount spend nd the total amount spend for each staff
--                                                                                                only for the customer id 13711

select staff_id, max(amount),avg(amount),sum(amount) from payment group by staff_id;
select customer_id, max(amount),avg(amount),sum(amount) from payment where customer_id=1 or customer_id=3 or customer_id = 7 group by customer_id ;

-- find the total amount spend nd the no of customer to have done the payment in each month ehere the amount spend should be greater than 1 dollar
-- for each month
-- amount>1


select  month(payment_date),sum(amount), count(customer_id) from payment where amount > 1 group by month(payment_date) having count(customer_id)>300;

select year(payment_date), month(payment_date), count(customer_id) from payment group by year(payment_date), month(payment_date);

-- what are data models
-- what is cardinility
-- what are the types of relationship in dbms