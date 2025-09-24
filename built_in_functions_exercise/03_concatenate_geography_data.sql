/* 
Create a view named "view_continents_countries_currencies_details". To do so, follow these steps:
· from the "continents" table, combine the "continent_name" and "continent_code" with a colon (: ) separator, and name the resulting column "continent_details"
· from the "countries" table, select the "country_name", "capital", and "area_in_sq_km" fields. You can add a hyphen ( - ) between the fields and append 'km2' to the end of "area_in_sq_km" to avoid confusion with other data. Name the resulting columns "country_information"
· in the last column, combine the "description" and "currency_code" fields of the "currencies" table, using the following format: description (currency_code). Name the resulting column "currencies"
· sort the result by the "country_information" and "Currencies" fields in ascending alphabetical order
*/

CREATE VIEW
	view_continents_countries_currencies_details
AS
SELECT 
	CONCAT(con.continent_name, ': ', con.continent_code) AS continent_details,
	CONCAT_WS(' - ', cou.country_name, cou.capital, cou.area_in_sq_km, 'km2') AS country_information,
	CONCAT(curr.description, ' ', '(', curr.currency_code, ')') AS currencies
FROM 
	countries AS cou
JOIN 
	continents AS con
ON 
	cou.continent_code = con.continent_code
JOIN
	currencies AS curr
ON
	curr.currency_code = cou.currency_code
ORDER BY
	country_information ASC,
	currencies ASC;