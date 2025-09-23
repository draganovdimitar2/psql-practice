/* 
Write a query to retrieve the titles of all Harry Potter books. Order the information by id.
Submit your query statements.
    * Use the WHERE clause with the LIKE operator.
*/


SELECT 
	title
FROM
	books
WHERE
	title LIKE '%Harry Potter%';