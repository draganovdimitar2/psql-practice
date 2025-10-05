/*
Exercise: Adding towns with a stored procedure

You have a table:

CREATE TABLE towns (
    town_id INT PRIMARY KEY,
    name VARCHAR UNIQUE
);

1. Create a stored procedure sp_add_town(t_id INT, town_name VARCHAR, OUT status_bool BOOL)
   that tries to insert a new town into the table.

   - If the town is inserted successfully, the procedure should set status_bool to TRUE.
   - If the town already exists (duplicate town_id or name), the procedure should set status_bool to FALSE instead of throwing an error.

2. Test your procedure by executing:

CALL sp_add_town(33, 'Plovdiv', TRUE);   -- TRUE (row inserted)
CALL sp_add_town(33, 'Plovdiv', TRUE);   -- FALSE (duplicate id and name)
CALL sp_add_town(33, 'PLOVEdiv', TRUE);  -- FALSE (duplicate id only)

3. Finally, run:
SELECT * FROM towns;
   to verify that the table contains only unique towns.
*/


CREATE OR REPLACE PROCEDURE sp_add_town(
	IN t_id INT, 
	IN town_name VARCHAR, 
	OUT status_bool BOOL
)
AS
$$
BEGIN
	INSERT INTO towns(town_id, name)
	VALUES(t_id, town_name);
	status_bool := TRUE;
	
EXCEPTION
	WHEN UNIQUE_VIOLATION THEN 
		status_bool := FALSE;
		RAISE NOTICE 'error: %', SQLERRM;
END;
$$
LANGUAGE plpgsql;


CALL sp_add_town(33, 'Plovdiv', status_bool => NULL); -- TRUE (row inserted)
CALL sp_add_town(33, 'Plovdiv', status_bool => NULL); -- FALSE (duplicate town_id and name)
CALL sp_add_town(33, 'PLOVEdiv', status_bool => NULL); -- FALSE (duplicate id only)
SELECT * FROM towns;