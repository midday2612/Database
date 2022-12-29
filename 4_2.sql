use sakila;
select film_category.category_id, category.name, count(category.category_id) cnt_films
from film, category, film_category
where length >=100 and category.category_id=film_category.category_id and film.film_id = film_category.film_id
group by 1
order by cnt_films desc;
