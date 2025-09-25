-- Write a query to retrieve information about the departments grouped by department_id with their maximum salary. Order the information by department_id. Submit your queries.


SELECT
	department_id,
	MAX(salary) AS max_salary
FROM
	employees
GROUP BY
	department_id
ORDER BY
	department_id;