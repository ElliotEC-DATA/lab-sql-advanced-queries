-- Lab | SQL Advanced queries

use sakila;

-- 1 List each pair of actors that have worked together.

select * from film_actor;

select distinct fa.film_id, a.first_name, a.last_name from actor a
join film_actor fa on a.actor_id = fa.actor_id
where ;

-- result on the query below

select * from film_actor a1
join film_actor a2 on a1.film_id = a2.film_id and a1.actor_id <> a2.actor_id
order by a1.film_id
limit 100;

-- 2 For each film, list actor that has acted in more films

select distinct film_id, max(Nb_films_played) ID_of_hardest_worker from (
	select film_id, count(actor_id) Nb_films_played from film_actor
    group by film_id
    ) sub1    
group by film_id
limit 100;
    

