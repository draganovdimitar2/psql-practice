-- Write an SQL query to select the "longitude" column from the "apartments" table and apply the ABS() function to it to find its absolute value.


SELECT 
	longitude,
	ABS(longitude)
FROM 
	apartments;