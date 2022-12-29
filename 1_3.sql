use sakila;
select last_name, count(distinct(first_name)) unique_cnt ,count(actor_id) cnt
from actor
group by last_name
having count(first_name) = count(last_name);