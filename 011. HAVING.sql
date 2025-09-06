-- HAVING specifies GROUP filtering criteria
-- Can be used only with GROUP BY

SELECT 
    customer_id AS 'Customer ID',
    COUNT(rental_id) AS 'Total Rental'
FROM
    rental
GROUP BY customer_id
HAVING COUNT(rental_id) < 15;