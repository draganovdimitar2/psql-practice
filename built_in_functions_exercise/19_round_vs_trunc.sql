 -- Create a SQL query that retrieves the "latitude" column from the "apartments" table. Apply the ROUND() function to it with a precision of 2 decimal places, and then apply the TRUNC() function with the same precision. Finally, compare and measure the differences in the output produced by the two functions.


SELECT 
	latitude,
	ROUND(latitude, 2),
	TRUNC(latitude, 2)
FROM 
	apartments;