-- Get all employees who were hired between January 1, 1998, and January 5, 2000. Increase their "salary" by 1500. Add the prefix "Senior" to their "job_title".


UPDATE
	employees
SET
	salary = salary + 1500,
	job_title = 'Senior ' || job_title  
WHERE
	hire_date BETWEEN '1998-01-01' AND '2000-01-05';
