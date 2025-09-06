-- Whenever working with mutliple tables, always use table_name.column_name to reference a column to avoid ambiguity.

SELECT 
    film_text.title AS 'Film Title',
    film_text.description AS 'Description',
    inventory.store_id AS 'Store ID',
    inventory.inventory_id AS 'Inventory ID'
FROM
    inventory
        INNER JOIN
    film_text ON inventory.film_id = film_text.film_id;