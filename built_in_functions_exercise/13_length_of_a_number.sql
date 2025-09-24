-- Measure the length of the "population" numbers in the "countries" table. In this case, use the CAST() function to convert the number into a string and then use the LENGTH() function.


SELECT 
	population,
	LENGTH(CAST(population AS VARCHAR))
FROM
	countries;
