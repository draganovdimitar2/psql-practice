/* 
Start by creating a fresh database named management_db. Once done, retrieve the management_data.sql file from the data folder,
import it into your database's query tab, and execute the queries in the file.

Your first task is to write an SQL query that calculates the total number of employees in each department. 
The "department_id" is stored in the "employees" table, and the following IDs are used to identify each department:
1 - Engineering
2 - Tool Design
3 - Sales
4 - Marketing
5 - Purchasing
6 - Research and Development
7 - Production 
*/


SELECT 
	COUNT(CASE WHEN department_id = 1 THEN 1 END) AS "Engineering",
	COUNT(CASE WHEN department_id = 2 THEN 1 END) AS "Tool Design",
	COUNT(CASE WHEN department_id = 3 THEN 1 END) AS "Sales",
	COUNT(CASE WHEN department_id = 4 THEN 1 END) AS "Marketing",
	COUNT(CASE WHEN department_id = 5 THEN 1 END) AS "Purchasing",
	COUNT(CASE WHEN department_id = 6 THEN 1 END) AS "Research and Development",
	COUNT(CASE WHEN department_id = 7 THEN 1 END) AS "Production "
FROM 
	employees;