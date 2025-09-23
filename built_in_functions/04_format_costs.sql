-- Write a query to get each book’s title and cost (cost as modified_price) and format the output to 3 digits after the decimal point. Order by id.


SELECT 
	title,
	TRUNC(cost, 3) AS modified_price
FROM
	books;