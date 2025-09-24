/* 
You may notice that the "capital" names in the "countries" table include letters that are not found in the English alphabet. 
To address this, you can employ the TRANSLATE() function to convert the non-English characters 'áãåçéíñóú' to their corresponding English letters. 
Name the resulting column "translated_name".
*/


SELECT 
	capital,
	TRIM()
FROM
	countries;