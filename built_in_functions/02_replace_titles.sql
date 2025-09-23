-- Write a query to find all books, whose titles start with "The" and replace the substring with 3 asterisks. Retrieve data about the updated titles. Order the result by id. Submit your query statements.


SELECT 
	REPLACE(title, 'The', '***') 
FROM 
	books
WHERE
	LEFT(title, 3) = 'The';