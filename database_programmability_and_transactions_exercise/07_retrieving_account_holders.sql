/* 
The purpose of this task is to create a PostgreSQL stored procedure named "sp_retrieving_holders_with_balance_higher_than" that 
accepts a numeric input parameter called "searched_balance". The procedure will calculate the "total_balance" for each account 
"holder" by summing up the balances of all their accounts. It will then compare the "total_balance" with the "searched_balance" 
and return a list of people who have a total amount of money greater than the "searched_balance".

To achieve this, the procedure will iterate through each "holder" in the "account_holders" table, sorted by their "first_name" and 
"last_name". If the "total_balance" for an account holder is greater than the "searched_balance", the procedure will raise a 
notification in the format "First Name Last Name - Total Balance".
*/


CREATE OR REPLACE PROCEDURE sp_retrieving_holders_with_balance_higher_than(
	searched_balance NUMERIC
) 
AS
$$
DECLARE 
	holder_info RECORD;
BEGIN
	FOR holder_info IN 		
		SELECT
			first_name || ' ' || last_name AS full_name,
			SUM(balance) AS total_balance
		FROM
			account_holders AS ah
		JOIN
			accounts AS a
		ON
			a.account_holder_id = ah.id
		GROUP BY
			full_name
		HAVING 
			SUM(a.balance) > searched_balance
		ORDER BY
			full_name
	LOOP
		RAISE NOTICE '% - %', holder_info.full_name, holder_info.total_balance;
	END LOOP;
END;
$$
LANGUAGE plpgsql;