SELECT 
    film.title AS 'Film Title',
    COUNT(film_actor.actor_id) AS 'Actors'
FROM
    film
        LEFT JOIN
    film_actor ON film.film_id = film_actor.film_id
GROUP BY film.title;