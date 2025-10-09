/* 
Create a table called "logs" with columns "id", "account_id", "old_sum", and "new_sum".
Then, create a PostgreSQL function called "trigger_fn_insert_new_entry_into_logs" that takes no arguments and returns a trigger. 
Inside the function, write an SQL query that inserts a new row into the "logs" table, with the "account_id" value set to the "id" 
value of the old row, the "old_sum" value set to the "balance" value of the old row, and the "new_sum" value set to the "balance" value of the new row. Finally, return the new row.
After that, create a trigger called "tr_account_balance_change" that activates "trigger_fn_insert_new_entry_into_logs" after an update 
is made to the "accounts" table, but only when the "balance" value of the old row is different from the "balance" value of the new row.
*/


CREATE TABLE IF NOT EXISTS logs(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	account_id INT,
	old_sum NUMERIC,
	new_sum NUMERIC
);


CREATE OR REPLACE FUNCTION trigger_fn_insert_new_entry_into_logs() 
RETURNS TRIGGER AS
$$
BEGIN
	INSERT INTO
		logs(account_id, old_sum, new_sum)
	VALUES
		(OLD.id, OLD.balance, NEW.balance);
		
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER	
	tr_account_balance_change
AFTER UPDATE OF balance ON accounts
FOR EACH ROW
WHEN 
	(NEW.balance <> OLD.balance)
EXECUTE FUNCTION
	trigger_fn_insert_new_entry_into_logs();