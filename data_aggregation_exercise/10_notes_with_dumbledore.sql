-- Generate a SQL query to retrieve the "last_name" of each wizard and the number of "notes" they wrote that contains the word "Dumbledore" in the "wizard_deposits" table.


SELECT 
	last_name,
	COUNT(notes) as notes_with_dumbledore
FROM 
	wizard_deposits
WHERE 
	notes LIKE '%Dumbledore%'
GROUP BY
	last_name;