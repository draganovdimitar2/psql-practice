/* 
Compute the minimum average area among all the continents, where the average area is calculated as the average area of all the countries
within each continent.
*/


SELECT 
	MIN(average) AS min_average_area
FROM (
	SELECT
		AVG(area_in_sq_km) AS average
	FROM
		countries
	GROUP BY
		continent_code
) AS average_area;