SELECT 
    customer_id, rental_id, amount, payment_date
FROM
    payment
WHERE
    amount = 0.99
        AND payment_date > '2006-01-01';
        
-- Use parenthesis for combining OR & AND