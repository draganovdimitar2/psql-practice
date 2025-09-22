-- Select "id", "number", "street" and "city_id" from the "addresses" table WHERE "id" is greater than or equal to 20. Concatenate the "number" and "street" fields into a single field called "address".

SELECT 
	id, 
	CONCAT(number, ' ', street) AS address,
	city_id
FROM 
    addresses
WHERE 
    id >= 20;