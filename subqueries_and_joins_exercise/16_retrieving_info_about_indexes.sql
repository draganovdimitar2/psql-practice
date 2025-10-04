/* 
Write a SQL query that selects the fields "tablename", "indexname", and "indexdef" from the "pg_indexes" table, with the condition that 
only indexes from the "public" schema are retrieved. Sort the results in ascending order based on the "tablename" field. 
If any of the values are equal, then sort the results by "indexname" in ascending order.
*/


SELECT	
	tablename,
	indexname,
	indexdef
FROM
	pg_indexes
WHERE
	schemaname = 'public'
ORDER BY
	tablename,
	indexname;