/* 
Create a database book_library and open its query tool.
Copy queries from data.sql, import it into your database's query tab, and execute the queries.
*/

-- Write a query to find all books whose titles start with "The". Order the result by id


SELECT 
	title
FROM 	
	books
WHERE 
	SUBSTRING(title, 1, 3) = 'The';