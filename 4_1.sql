use sakila;
select first_name, last_name, count(film_actor.film_id) cnt
from film_actor,film,actor
where rental_rate>=4 and actor.actor_id = film_actor.actor_id and film.film_id = film_actor.film_id
group by film_actor.actor_id
order by cnt desc;