-- ORDER BY defauls to ascending

SELECT 
    customer_id AS 'Customer ID',
    rental_id AS 'Rental ID',
    amount AS 'Amount',
    payment_date AS 'Payment Date'
FROM
    payment
ORDER BY amount DESC , customer_id ASC;