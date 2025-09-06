-- When we are not using GROUP BY, we are simply extracting the records
-- When we use GROUP BY, we are segmenting the records at variould levels of granuality and extracting
-- GROUP BY can be aggregated with aggregate functions to summarize the values for each group

SELECT 
    rating, COUNT(film_id) as 'Count of films'
FROM
    film
GROUP BY rating;