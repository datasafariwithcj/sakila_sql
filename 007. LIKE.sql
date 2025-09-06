-- LIKE allows pattern matching in logical operators. Use wildcard operator % or _
-- % means 'any number of characters'
-- single '_' means 'single character'
-- NOT LIKE can be used to give exclusion criteria
-- These are case sensitive
-- '_' considers space as well

SELECT 
    title, description
FROM
    film
WHERE
    description LIKE '__Epic%';