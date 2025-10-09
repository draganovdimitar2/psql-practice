/* 
Your task is to implement a notification system for bank customers that sends an email whenever there is a change in their account balance. 
To accomplish this, you need to create a trigger called "tr_send_email_on_balance_change" that will be activated whenever there is an 
update made to the "logs" table resulting in a change in the account balance. The email sent to the customer should contain:
- their "account_id";
- the subject of the email should read "Balance change for account: {account_id}";
- body should include "On {date} your balance was changed from {old} to {new}."
To create the necessary infrastructure, you should first create a "notification_emails" table with the following columns: "id", 
"recipient_id", "subject", and "body".
Next, create a trigger function called "trigger_fn_send_email_on_balance_change" that inserts a new row into the "notification_emails" 
table whenever a row is updated in the "logs" table. This function should take no arguments and should return the type TRIGGER.
*/


CREATE TABLE IF NOT EXISTS notification_emails(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	recipient_id INT,
	subject VARCHAR,
	body TEXT
);

CREATE OR REPLACE FUNCTION trigger_fn_send_email_on_balance_change()
RETURNS TRIGGER AS
$$
BEGIN
	INSERT INTO
		notification_emails(recipient_id, subject, body)
	VALUES
		(
			NEW.account_id,
			'Balance change for account: ' || NEW.account_id,
			'On ' || DATE(NOW()) || ' your balance was changed from ' || NEW.old_sum || ' to ' || NEW.new_sum || '.'
		);
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER
	tr_send_email_on_balance_change
AFTER UPDATE ON
	logs
FOR EACH ROW
EXECUTE FUNCTION trigger_fn_send_email_on_balance_change();