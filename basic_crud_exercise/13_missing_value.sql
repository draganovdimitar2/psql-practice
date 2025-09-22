-- Develop a SQL query to find the first 3 employees with their "id", "first_name" and "last_name" where the "middle_name" is NULL.


SELECT
	id,
	first_name,
	last_name
FROM
	employees
WHERE
	middle_name IS NULL
LIMIT 3;