/* 
Write a SQL query to retrieve the number of employees and salary level of each department from the "employees" table. The "salary_level" column should be determined based on the following rules:
•	if the average "salary" of a department is above 50,000, the salary level is "Above average"
•	if the average "salary" of a department is below or equal to 50,000, the salary level is "Below average"
•	only departments with an average "salary" above 30,000 should be included in the result.
The resulting dataset should encompass the subsequent columns: "department_id", "num_employees" and "salary_level". Arrange the output based on the "department_id".
*/


SELECT
	department_id,
	COUNT(department_id) AS num_employees,
	CASE 
		WHEN AVG(salary) > 50000 THEN 'Above average'
		ELSE 'Below average'
	END AS salary_level
FROM
	employees
GROUP BY
	department_id
HAVING	
	AVG(salary) > 30000
ORDER BY
	department_id ASC;