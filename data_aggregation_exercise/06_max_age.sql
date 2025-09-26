-- Determine the maximum "age" among the wizards in the database.


SELECT 
	MAX(age) AS maximum_age
FROM 
	wizard_deposits;