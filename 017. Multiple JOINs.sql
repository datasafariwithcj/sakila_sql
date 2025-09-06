SELECT 
    store.store_id AS 'Store ID',
    staff.first_name AS 'First Name',
    staff.last_name AS 'Last Name',
    address.address AS 'Address',
    address.district AS 'District',
    city.city AS 'City',
    country.country AS 'Country'
FROM
    store
        LEFT JOIN
    staff ON store.manager_staff_id = staff.staff_id
        LEFT JOIN
    address ON store.address_id = address.address_id
        LEFT JOIN
    city ON address.city_id = city.city_id
        LEFT JOIN
    country ON country.country_id = city.city_id
GROUP BY store.store_id;