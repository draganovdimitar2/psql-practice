-- Write an SQL query to select the "elevation" and "peak_name" columns from the "peaks" table where the "elevation" is greater than or equal to 4884. Concatenate them with a single space, use the REPEAT() function to create an arrow between them "--->>", and name the new column "Elevation --->> Peak Name".


SELECT 	
	CONCAT_WS(
		' ',
		elevation,
		REPEAT('-', 3) || REPEAT('>', 2),
		peak_name
	) AS "Elevation --->> Peak Name"
FROM
	peaks
WHERE
	elevation >= 4884;