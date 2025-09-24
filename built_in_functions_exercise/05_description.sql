/* 
Develop an SQL query that removes a portion of the "description" column from the "currencies" table. The query should extract the string starting from the 5th character and return the rest of the string.
*/


SELECT 
	RIGHT(description, -4)
FROM
	currencies;