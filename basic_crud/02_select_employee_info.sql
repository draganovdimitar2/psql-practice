-- Write a query to select all employees and retrieve information about their id, first_name, last_name (as Full Name), and job_title (as Job Title).


SELECT 
	id, 
	first_name || ' ' || last_name AS "Full Name",
	job_title AS "Job Title"
FROM employees;