-- Compute the average size of "magic_wand_size" and round the result to the third decimal place. 


SELECT 
	ROUND(AVG(magic_wand_size), 3) AS average_magic_wand_size
FROM 
	wizard_deposits;