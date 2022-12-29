use sakila;
select customer_id, count(customer_id) cnt_customer,avg(amount) avg_amount
from payment
where amount>=2
group by customer_id;