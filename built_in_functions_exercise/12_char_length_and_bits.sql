-- Measure the length of the "population" numbers in the "countries" table. In this case, use the CAST() function to convert the number into a string and then use the LENGTH() function.


SELECT 
	CONCAT(m.mountain_range, ' ', p.peak_name) AS mountain_information,
	LENGTH(CONCAT(m.mountain_range, ' ', p.peak_name)) AS characters_length,
	BIT_LENGTH(CONCAT(m.mountain_range, ' ', p.peak_name)) AS bits_of_a_tring
FROM
	mountains AS m
JOIN
	peaks AS p
ON
	m.id = p.mountain_id;
	

