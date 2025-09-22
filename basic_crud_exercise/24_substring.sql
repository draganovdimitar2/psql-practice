-- Create a view called "view_initials" that includes the "first_name" and "last_name" columns from the "employees" table. In addition, modify the "first_name" column by extracting the first two characters and renaming the new column as "initial". Order the results by "last_name".


CREATE VIEW
	view_initials
AS
SELECT 
	SUBSTRING(first_name, 1, 2) AS initial,
	last_name
FROM 
	employees
ORDER BY
	last_name;