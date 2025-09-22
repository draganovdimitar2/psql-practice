-- Write a SQL query that selects the "name" and "start_date" columns from the "projects" table where the "name" column starts with the characters 'MOUNT%'. The results should be sorted by project "id".


SELECT
	name, 
	start_date
FROM 
	projects
WHERE
	name LIKE 'MOUNT%'
ORDER BY
	id ASC;