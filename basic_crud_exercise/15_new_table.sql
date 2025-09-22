/* 
Write a SQL query to generate a new table named "company_chart" by inserting data from the existing records. Retrieve the "full_name" column which is a combination of the "first_name" and "last_name" columns from the "employees" table, and also select the "job_title" column, "department_id", and the "manager_id" column
*/


CREATE TABLE 
	company_chart
AS
SELECT
	CONCAT(first_name, ' ', last_name) AS full_name,
	job_title,
	department_id,
	manager_id
FROM
	employees;