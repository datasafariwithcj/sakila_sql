-- For aggregating like pivot tables, use GROUP BY to create row groups, use case to aggregate and create columns and aggregating functions to aggregate values

SELECT 
    inventory_id AS 'Inventory ID',
    COUNT(CASE
        WHEN store_id = 1 THEN inventory_id
        ELSE NULL
    END) AS 'Count method',
    SUM(CASE
        WHEN store_id = 1 THEN 1
        ELSE 0
    END) AS 'Sum method',
    CASE
        WHEN
            COUNT(CASE
                WHEN store_id = 1 THEN inventory_id
                ELSE NULL
            END) = SUM(CASE
                WHEN store_id = 1 THEN 1
                ELSE 0
            END)
        THEN
            'True'
        ELSE 'False'
    END AS Verification
FROM
    inventory
GROUP BY inventory_id;

SELECT 
    store_id as 'Store ID',
    COUNT(CASE
        WHEN active = 1 THEN active
        ELSE NULL
    END) AS 'Active',
    COUNT(CASE
        WHEN active = 0 THEN active
        ELSE NULL
    END) AS 'Inactive'
FROM
    customer
GROUP BY store_id;