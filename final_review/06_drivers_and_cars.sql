SELECT 
	d.first_name,
	d.last_name,
	c.make,
	c.model,
	c.mileage
FROM
	cars_drivers AS cd
JOIN
	drivers AS d
ON	
	cd.driver_id = d.id
JOIN
	cars AS c
ON
	c.id = cd.car_id
WHERE
	c.mileage IS NOT NULL
ORDER BY
	mileage DESC,
	first_name ASC;