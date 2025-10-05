/* 
You are provided with the data.sql file into this directory. Create a database soft_uni and import the data.sql file into its Query Tab. Execute all queries.
*/

-- Create a function fn_count_employees_by_town(town_name) that accepts town_name VARCHAR(20) as a parameter and returns the count of employees living there.


CREATE OR REPLACE FUNCTION 
    fn_count_employees_by_town(town_name VARCHAR(20))
RETURNS INT AS
$$
	DECLARE 
		town_employees INT;
	BEGIN
		SELECT 
			COUNT(*)
		FROM
			employees AS e
		JOIN 
			addresses AS a
		USING
			(address_id)
		JOIN
			towns AS t
		USING 
			(town_id)
		WHERE 
			t.name = town_name
		INTO
			town_employees;
		RETURN town_employees;
	END;
$$
LANGUAGE plpgsql;


SELECT 
    fn_count_employees_by_town('Sofia');  -- 3 is the expected output