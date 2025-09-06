-- CASE - WHEN - THEN - ELSE - END
-- Remember to give alias

SELECT 
    first_name AS 'First Name',
    last_name AS 'Last Name',
    CASE
        WHEN
            store_id = 1
        THEN
            CASE
                WHEN active = 1 THEN 'Store 1 active'
                ELSE 'Store 1 inactive'
            END
        WHEN
            store_id = 2
        THEN
            CASE
                WHEN active = 1 THEN 'Store 2 active'
                ELSE 'Store 2 inactive'
            END
    END AS 'Store status'
FROM
    customer;