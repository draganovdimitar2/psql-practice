/* 
Create a SQL query that selects the "project_name" with the word '%Mountain%' in their name from the "projects" table. The project status should be determined based on the following criteria:
•	if a project has NO "start_date" and "end_date", its status is "Ready for development"
•	if a project has a "start_date" but NO "end_date", its status is "In Progress".
•	otherwise, its status is "Done".
*/


SELECT 
	project_name,
	CASE
		WHEN start_date IS NULL AND end_date IS NULL THEN 'Ready for development'
		WHEN start_date IS NOT NULL AND end_date IS NULL THEN 'In Progress'
		ELSE 'Done'
	END AS project_status
FROM
	projects
WHERE 
	project_name LIKE '%Mountain%';