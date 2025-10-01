/* 
Let's proceed to establish the relationships and update the "countries" table. Locate the columns that correspond to the "continents" and
"currencies" tables, and ensure that when a record in the parent table is deleted, corresponding records in the child table are also deleted. 
*/


ALTER TABLE
	countries
ADD CONSTRAINT
	continents_countries_fkey
FOREIGN KEY
	(continent_code)
REFERENCES
	continents(continent_code)
ON DELETE CASCADE;

ALTER TABLE
	countries
ADD CONSTRAINT
	currencies_countries_fkey
FOREIGN KEY
	(currency_code)
REFERENCES
	currencies(currency_code)
ON DELETE CASCADE;