/* 
Your new assignment involves creating a stored procedure in PostgreSQL, which will allow for the transfer of a specific amount of money from one account to another. The procedure will have three parameters:
- "sender_id" - an integer that represents the "id" of the account from which the money will be transferred;
- "receiver_id" - an integer that represents the "id" of the account to which the money will be transferred;
- "amount" - a numeric value that has a precision of up to four decimal places, which represents the amount of money to be transferred.
Initially, the procedure will try to withdraw the given amount of money from the account associated with the "sender_id" by invoking the previously defined stored procedure "sp_withdraw_money". 
If the withdrawal operation is successful, the procedure will subsequently deposit the same amount into the account linked with the "receiver_id" by using the stored procedure "sp_deposit_money".
In the event of any errors occurring during the transaction, the procedure will ROLLBACK the entire transaction to ensure data integrity is maintained.
*/


CREATE OR REPLACE PROCEDURE sp_transfer_money(
	sender_id INT,
	receiver_id INT,
	amount NUMERIC(4)
) 
AS 
$$
DECLARE 
	current_balance NUMERIC;
BEGIN
	SELECT balance INTO current_balance FROM accounts WHERE id = sender_id; 
	
	IF current_balance - amount >= 0 THEN	
		CALL sp_withdraw_money(sender_id, amount);
		CALL sp_deposit_money(receiver_id, amount);
	END IF;
END;
$$
LANGUAGE plpgsql;