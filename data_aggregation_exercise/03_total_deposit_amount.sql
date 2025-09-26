-- Compose a SQL query that calculates the total sum of the deposit amount held at Gringotts Bank. 


SELECT 
	SUM(deposit_amount) AS total_amount
FROM 
	wizard_deposits;