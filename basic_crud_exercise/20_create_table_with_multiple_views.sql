-- Create a view called "view_addresses" that selects the "first_name" and "last_name" as "full_name" and "department_id" from the "employees" table and the "number" and "street" as "address" from the "addresses" table where the "address_id" matches the "id" in the "addresses" table. Order the results by the "address" column.


CREATE VIEW
	view_addresses
AS
SELECT
	CONCAT(e.first_name, ' ', e.last_name) AS full_name,
	e.department_id,
	CONCAT(a.number, ' ', a.street) AS address
FROM 
	employees AS e
JOIN
	addresses AS a
ON
	a.id = e.address_id
ORDER BY
	address;
