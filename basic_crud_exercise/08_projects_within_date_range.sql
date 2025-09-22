-- Select the projects` "name" from the "projects" table where the "start_date" is greater than or equal to '2016-06-01 07:00:00' and the "end_date" is less than '2023-06-04 00:00:00'. Then, order the resulting rows in ascending order based on the "start_date" column.


SELECT 
	name,
	start_date,
	end_date
FROM 
	projects
WHERE
	start_date >= '2016-06-01 07:00:00' 
		AND
	end_date < '2023-06-04 00:00:00'
ORDER BY
	start_date ASC;