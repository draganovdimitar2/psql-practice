-- Determine the smallest amount of "deposit_charge".


SELECT 
	MIN(deposit_charge) AS deposit_charge
FROM 
	wizard_deposits;