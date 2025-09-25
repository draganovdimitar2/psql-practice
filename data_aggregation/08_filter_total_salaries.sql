-- Write a query to filter the total salary per department, where the total salary is less than 4200. Submit your queries, ordered by department_id. 


SELECT
	department_id,
	SUM(salary) AS "Total Salary"
FROM
	employees
GROUP BY
	department_id
HAVING
	SUM(salary) < 4200
ORDER BY
	department_id;