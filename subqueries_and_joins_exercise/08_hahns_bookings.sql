-- Create a SQL query that COUNT the number of bookings made by customers whose "last_name" is 'Hahn'. The output should show only the count of bookings and no other columns.


SELECT 
	COUNT(*)
FROM
	bookings AS b
JOIN
	customers AS c
USING
	(customer_id)
WHERE
	c.last_name = 'Hahn';