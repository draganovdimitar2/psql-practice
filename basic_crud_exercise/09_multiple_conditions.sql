-- Write an SQL query to select "number" and "street" from the "addresses" table where "id" is BETWEEN 50 and 100 OR "number" is less than 1000.


SELECT
	number,
	street
FROM 
	addresses
WHERE
	id BETWEEN 50 AND 100
		OR
	number < 1000;
	