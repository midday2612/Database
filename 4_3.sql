select a.film_id, a.title, a.rental_rate * count(c.rental_id) total
from `sakila`.`film` a
inner join `sakila`.`inventory` b
 on a.film_id = b.film_id
inner join `sakila`.`rental` c
 on b.inventory_id = c.inventory_id
group by a.film_id
order by total desc
limit 5;