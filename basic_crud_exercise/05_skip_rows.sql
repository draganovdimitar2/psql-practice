-- Create a SQL query that selects the "employees" records including their "id", "first_name", "middle_name", "last_name", and "hire_date". Rename the "id" column as "id". Combine the "first_name", "middle_name" and "last_name", fields into a single field called "full_name". Sort the results by the "hire_date" field in ascending order. Lastly, OFFSET the results by 10 rows.


SELECT 
	id,
	CONCAT_WS(' ', first_name, middle_name, last_name) AS full_name,
	hire_date
FROM
	employees
ORDER BY
	hire_date
OFFSET 9;