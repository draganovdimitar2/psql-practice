-- Write a SQL query to select the LAST 4 characters from the "peak_name" column and name the new column "positive_right". Also, select all characters except the FIRST 4 from the "peak_name" column and name the new column "negative_right".


SELECT 
	peak_name,
	RIGHT(peak_name, 4) AS positive_right,
	RIGHT(peak_name, -4) AS negative_right
FROM
	peaks;
