/* 
Create a SQL query to retrieve the "booking_id" of bookings and the corresponding "companion_full_name" from the "customers" table, 
where the "apartment_id" has not been assigned yet.
*/


SELECT
	b.booking_id,
	b.apartment_id,
	c.companion_full_name
FROM
	bookings AS b
JOIN
	customers AS c
USING
	(customer_id)
WHERE 
	b.apartment_id IS NULL;
