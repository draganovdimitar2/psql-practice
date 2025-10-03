/* 
Begin by establishing a new database called subqueries_joins_booking_db and accessing its designated query tool. 
Retrieve the exercise_subqueries_and_joins_booking_db.sql file from the data folder and input it into the query section of your database tool. 
*/

/*
TASK:
Perform a JOIN operation between the "apartments" table and the "bookings" table to retrieve only matching rows. 
The resulting columns should be renamed as "apartment_address" for the concatenated "address" and "address_2" columns and "nights" 
for the "booked_for" column. Conclude by arranging the outcome in ascending order based on the "apartment_id" column.
*/



SELECT
	CONCAT(a.address, ' ', a.address_2) AS apartment_address,
	b.booked_for AS nights
FROM
	apartments AS a
JOIN
	bookings AS b
USING               -- ON 
	(booking_id)    --   a.booking_id = b.booking_id
ORDER BY
	a.apartment_id;