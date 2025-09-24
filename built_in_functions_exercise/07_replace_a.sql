/*
To write a SQL query that replaces letters in the "mountain_range" column of the "mountains" table, please follow these steps:
· replace all occurrences of "a" with "@". Name the resulting column "replace_a"
· replace all occurrences of "A" with "$". Name the resulting column "replace_A"
*/


SELECT 
	REPLACE(mountain_range, 'a', '@') AS replace_a,
	REPLACE(mountain_range, 'A', '$') AS replace_A
FROM
	mountains;