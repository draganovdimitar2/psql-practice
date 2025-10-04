/* 
Your first step is to create a fresh database named subqueries_joins_geography_db and access its query tool. 
Retrieve the exercise_subqueries_and_joins_geography_db.sql file from the data folder and import it into the query tab 
of your newly created database. Once imported, proceed to execute the queries provided within the file.
*/


/* 
Retrieve the "country_code", "mountain_range", "peak_name" and "elevation" from the "mountains", "peaks", and "mountains_countries" 
tables using a SQL query. The query should only include rows where the peak "elevation" is greater than 2835 meters and the "country_code"
is 'BG'. The results should be sorted in descending order based on peak "elevation".
*/


SELECT
	ms.country_code,
	m.mountain_range,
	p.peak_name,
	p.elevation
FROM 
	mountains_countries AS ms
JOIN
	mountains AS m
ON
	m.id = ms.mountain_id
JOIN
	peaks AS p
ON
	p.mountain_id = m.id
WHERE
	p.elevation > 2835 
		AND 
	ms.country_code = 'BG'
ORDER BY
	p.elevation DESC;