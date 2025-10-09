/* 
As an employee at a bank, you are required to develop a PostgreSQL stored procedure that will enable you to deposit money into an 
existing account. The stored procedure should be named "sp_deposit_money" and should have two parameters:
- "account_id" - an integer that identifies the account where the money is to be deposited;
- "money_amount" - a numeric value with a maximum precision of four digits after the decimal point, which specifies the amount of
money to be deposited.
The stored procedure should increase the account's "balance" by adding the deposited amount of money. 
After that, it should commit the transaction to guarantee that the modifications are saved.
*/


CREATE OR REPLACE PROCEDURE sp_deposit_money(
	account_id INT,
	money_amount NUMERIC(4)
) 
AS 
$$
BEGIN
	UPDATE
		accounts
	SET
		balance = balance + money_amount
	WHERE	
		id = account_id;
END;
$$
LANGUAGE plpgsql;