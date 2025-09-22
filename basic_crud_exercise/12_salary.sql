-- Write a SQL query to find the "full_name", "job_title" and "salary" of all employees whose salary is 12500, 14000, 23600, or 25000. "full_name" is a combination of "first_name" and "last_name" (separated with a single space). Order by highest salary.


SELECT
	CONCAT(first_name, ' ', last_name) AS full_name,
	job_title,
	salary
FROM
	employees
WHERE
	salary IN (12500, 14000, 23600, 25000)
ORDER BY
	salary DESC;