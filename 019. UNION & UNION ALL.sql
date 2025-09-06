-- UNION deduplicates the appended records. For keeping the duplicates, use UNION ALL
-- Make sure to use Same number of columns, in same order and with same data types
-- NULL can be used as column name to fill for missing columns

SELECT 
    staff.first_name AS 'First Name',
    staff.last_name AS 'Last Name',
    'Staff' AS 'Type'
FROM
    staff 
UNION SELECT 
    actor.first_name AS 'First Name',
    actor.last_name AS 'Last Name',
    'Actor' AS 'Type'
FROM
    actor; 