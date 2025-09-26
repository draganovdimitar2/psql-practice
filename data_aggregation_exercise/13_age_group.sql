-- Create a SQL query that groups the wizards from the "wizard_deposits" table into age groups of '[0-10]', '[11-20]', '[21-30]', '[31-40]', '[41-50]', '[51-60]', and '[61+]'. The query should count the number of wizards in each "age_group" and display the results in ascending order based on the "age_group".


SELECT 
	CASE 
		WHEN AGE <= 10 THEN '[0-10]'
		WHEN AGE BETWEEN 11 AND 20 THEN '[11-20]'
		WHEN AGE BETWEEN 21 AND 30 THEN '[21-30]'
		WHEN AGE BETWEEN 31 AND 40 THEN '[31-40]'
		WHEN AGE BETWEEN 41 AND 50 THEN '[41-50]'
		WHEN AGE BETWEEN 51 AND 60 THEN '[51-60]'
		ELSE '[61+]'
	END AS age_group,
	COUNT(*)
FROM 
	wizard_deposits
GROUP BY
	age_group
ORDER BY
	age_group;
