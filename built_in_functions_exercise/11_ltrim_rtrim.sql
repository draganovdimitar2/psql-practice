/* 
The TRIM() function has a shortened version that can remove both spaces and characters. Write an SQL query to remove the "m" character as follows:
· remove the 'M' character from the left side of the "peak_name" column within the "peaks" table, and assign the name "left_trim" to the resulting new column
· remove the 'm' character from the right side of the "peak_name" column within the "peaks" table, and assign the name "right_trim" to the resulting new column
*/


SELECT 
	LTRIM(peak_name, 'M') AS left_trim,
    RTRIM(peak_name, 'm') AS right_trim
FROM
	peaks;