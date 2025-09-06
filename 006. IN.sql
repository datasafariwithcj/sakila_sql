SELECT 
    customer_id, rental_id, amount, payment_date
FROM
    payment
WHERE
    amount > 5
        AND customer_id IN (42 , 53, 60, 73);