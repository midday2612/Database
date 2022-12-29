use sakila;
select left(first_name,1) 'char', count(first_name) cnt
from actor
group by left(first_name,1)
order by cnt desc;