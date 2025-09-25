-- Write a query to retrieve information about the departments grouped by department_id with their minimum salary. Order the information by department_id. 


SELECT
	department_id,
	MIN(salary) AS min_salary
FROM
	employees
GROUP BY
	department_id
ORDER BY
	department_id;