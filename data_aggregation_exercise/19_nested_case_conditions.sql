/* 
To create a view ("view_performance_rating"), select the "first_name", "last_name", "job_title", "salary", and "department_id" from the "employees" table. Then, use the following conditions to generate the "performance_rating" column:
•	if an employee's "salary" is greater than or equal to 25,000 and their " job_title" starts with 'Senior%', their "performance_rating" should be "High-performing Senior"
•	if an employee's "salary" is greater than or equal to 25,000 and their "job_title" does not start with "Senior", their "performance_rating" should be "High-performing Employee"
•	if neither of the above criteria is met, the employee's "performance_rating" should be "Average-performing".
*/


CREATE VIEW
	view_performance_rating
AS
SELECT
	first_name,
	last_name,
	job_title,
	salary,
	department_id,
	CASE 
		WHEN salary >= 25000 THEN
			CASE
				WHEN job_title LIKE 'Senior%' THEN 'High-performing Senior'
				ELSE 'High-performing Employee'
			END
		ELSE 'Average-performing'
	END AS performance_rating
FROM
	employees