/* 
Write a query to retrieve information from table employees about the department names, according to department_id. The output should have the following fields:
•	id of the employee
•	first_name
•	last_name
•	salary – formatted to the second decimal place.
•	department_id
•	department_name – use Simple CASE Expression
o	1 – "Management"
o	2 – "Kitchen Staff"
o	3 – "Service Staff"
o	any other number – "Other"
See the examples for more information. Format the salary to 2 digits after the decimal point. 
*/


SELECT 
	id,
	first_name,
	last_name,
	TRUNC(salary, 2) as salary,
	department_id,
	CASE department_id 
        WHEN 1 THEN 'Management'
        WHEN 2 THEN 'Kitchen Staff'
        WHEN 3 THEN 'Service Staff'
        ELSE 'Other'
    END AS department_name
FROM 
	employees;