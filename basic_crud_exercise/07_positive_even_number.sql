-- Select "number" and "street" into one column called "address" as well as "city_id", from the "addresses" table where "city_id" is a positive even number. Order them by the "city_id" field in ascending order


SELECT 
	CONCAT(number, ' ', street) AS address,
	city_id
FROM 
	addresses
WHERE 
	city_id > 0 
		AND
	city_id % 2 = 0
ORDER BY
	city_id ASC;