-- Retrieve the first 20 records of the "name" and "start_date" columns from the "projects" table where the "name" is 'Mountain', 'Road', or 'Touring' using the IN operator.


SELECT
	name,
	start_date
FROM
	projects
WHERE
	name IN ('Mountain', 'Road', 'Touring')
LIMIT 20;
