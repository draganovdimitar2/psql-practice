-- As some of the values in the "iso_code" column of the "countries" table are null, update them by taking the first three characters from the "country_name" column and converting them to uppercase.


UPDATE 
	countries
SET
	iso_code = UPPER(LEFT(country_name, 3))
WHERE
	iso_code IS NULL;