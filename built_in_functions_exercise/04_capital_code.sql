/* 
Add a new column to the "countries" table named "capital_code", by generating the code by using the SUBSTRING() function to extract the first 2 letters from the "capital" field.
Choose whichever SQL syntax you prefer to use for the query.
*/


ALTER TABLE
	countries
ADD COLUMN
	capital_code CHAR(2);
	
UPDATE 
	countries
SET 
	capital_code = SUBSTRING(capital, 1, 2);