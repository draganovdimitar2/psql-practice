/* 
Your task is to create a stored procedure in PostgreSQL called "sp_withdraw_money", which will withdraw money from an existing account. 
The procedure should have two parameters:
- "account_id" - an integer representing the "id" of the account to withdraw money from;
- "money_amount" - a numeric value with a precision of up to four digits after the decimal point representing the amount of money to withdraw.
The procedure should update the account's "balance" by subtracting the withdrawn amount of money only if the account has enough 
balance to make the transaction. If the account balance is not sufficient to withdraw the specified amount, it should raise a notice 
indicating the insufficient balance. Finally, the procedure should commit the transaction to ensure that the changes are saved.
*/


CREATE OR REPLACE PROCEDURE sp_withdraw_money(
	account_id INT,
	money_amount NUMERIC(4)
) 
AS 
$$
DECLARE 
	current_balance NUMERIC;
BEGIN
	current_balance := (SELECT balance FROM accounts WHERE id = account_id);
	
	IF current_balance - money_amount < 0 THEN	
		RAISE NOTICE 'Insufficient balance to withdraw %', money_amount;
	ELSE
		UPDATE
			accounts
		SET
			balance = balance - money_amount
		WHERE	
			id = account_id;
	END IF;
END;
$$
LANGUAGE plpgsql;