/* 
Update all employees' salaries whose job_title is "Manager" by adding 100.
Retrieve information from table employees for all managers
*/


UPDATE employees
SET salary = salary + 100
WHERE job_title = 'Manager';

SELECT 
	* 
FROM employees
WHERE job_title = 'Manager';