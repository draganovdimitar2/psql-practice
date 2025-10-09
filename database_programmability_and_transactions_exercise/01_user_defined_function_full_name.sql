/* 
Create a PostgreSQL function named "fn_full_name" that takes two arguments: "first_name" and "last_name". The function should return the 
"full_name" as a single string, with the first name and last name capitalized and separated by a space. If either "first_name" or 
"last_name" is null, the function should return null or only the non-null name capitalized.
*/


CREATE OR REPLACE FUNCTION fn_full_name(
	first_name VARCHAR(50), 
	last_name VARCHAR(50)
) RETURNS VARCHAR(101) 
AS
$$
BEGIN
	RETURN CONCAT(INITCAP(LOWER(first_name)), ' ', INITCAP(LOWER(last_name)));
END;
$$
LANGUAGE plpgsql;

