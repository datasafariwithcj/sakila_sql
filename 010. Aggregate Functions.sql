-- Aggregate functions

/*
COUNT()
COUNT DISTINCT()
MIN()
MAX()
SUM()
AVG()
*/

-- NULL values are skipped by above functions, except by COUNT(*)

SELECT 
    replacement_cost AS 'Replacement Cost',
    COUNT(film_id) AS 'Films',
    MIN(rental_rate) AS 'Minimum Rental Rate',
    AVG(rental_rate) AS 'Average rental Rate',
    MAX(rental_rate) AS 'Maximum Rental Rate'
FROM
    film
GROUP BY replacement_cost;