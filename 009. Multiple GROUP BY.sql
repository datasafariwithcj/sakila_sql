SELECT 
    rental_duration, rating, COUNT(film_id) AS 'Count of films'
FROM
    film
GROUP BY rental_duration , rating;