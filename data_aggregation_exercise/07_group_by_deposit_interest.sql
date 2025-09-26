-- Write a SQL query to order the "deposit_group" based on the total amount of "deposit_interest" in each group, and then sort the results in descending order by the total interest in each group.


SELECT 
	deposit_group,
	SUM(deposit_interest) AS deposit_interest
FROM 
	wizard_deposits
GROUP BY 
	deposit_group
ORDER BY 
	deposit_interest DESC;