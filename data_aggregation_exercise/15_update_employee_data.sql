/* 
You have been tasked with updating the salaries and job titles of employees based on their hire dates. Write a SQL query that updates the "salary" and "job_title" columns of the "employees" table according to the following rules:
•	if the employee's "hire_date" is before '2015-01-16', their salary should be increased by 2500 and their job title should be prefixed with "Senior"
•	if the employee's "hire_date" is before '2020-03-04, their salary should be increased by 1500 and their job title should be prefixed with "Mid-"
•	otherwise, the employee's salary and job title should remain unchanged.
*/


UPDATE employees
SET 
    salary = salary + CASE
        WHEN hire_date < '2015-01-16' THEN 2500
        WHEN hire_date < '2020-03-04' THEN 1500
        ELSE 0
    END,
    job_title = CASE
        WHEN hire_date < '2015-01-16' THEN CONCAT('Senior ', job_title)
        WHEN hire_date < '2020-03-04' THEN CONCAT('Mid-', job_title)
        ELSE job_title
    END;