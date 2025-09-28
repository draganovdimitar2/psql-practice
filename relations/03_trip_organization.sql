-- Get information about people who are drivers (driver_name and driver_id) and their vehicle type. The driver’s name field represents the full name of a driver.



SELECT 
	c.id AS driver_id,
	v.vehicle_type AS vehicle_type,
	CONCAT(c.first_name, ' ', c.last_name) AS full_name
FROM
	campers AS c
		JOIN vehicles AS v
			ON v.driver_id = c.id