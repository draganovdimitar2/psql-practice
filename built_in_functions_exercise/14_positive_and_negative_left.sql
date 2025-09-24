-- Write a SQL query to select the FIRST 4 characters from the "peak_name" column and name the new column "positive_left". Also, select all characters except the LAST 4 from the "peak_name" column and name the new column "negative_left".


SELECT 
	peak_name,
	LEFT(peak_name, 4) AS positive_left,
	LEFT(peak_name, -4) AS negative_left
FROM
	peaks;
