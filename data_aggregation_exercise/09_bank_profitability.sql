-- Find the average interest rates of all "deposit_groups" rounded down to the nearest integer. The query should categorize the deposits based on whether they have expired or not and retrieve data only for deposits that have a "deposit_start_date" after '1985-01-01'. The results should be sorted in descending order by "deposit_group" and ascending order by the "is_deposit_expired" flag.


SELECT 
	deposit_group,
	is_deposit_expired,
	FLOOR(AVG(deposit_interest)) AS deposit_interest
FROM 
	wizard_deposits
WHERE 
	deposit_start_date > '1985-01-01'
GROUP BY
	deposit_group,
	is_deposit_expired
ORDER BY
	deposit_group DESC,
	is_deposit_expired;

