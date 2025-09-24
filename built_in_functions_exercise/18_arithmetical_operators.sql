/* 
Let's apply our understanding of mathematical operators in SQL. To begin, create a fresh table named "bookings_calculation" and load the queries from booking_db_data into it. You can achieve this by selecting the "booked_for" values from the "bookings" table where the "apartment_id" equals 93. The "booked_for" column signifies the number of nights the apartment is booked.
Next, alter the table by adding two new columns:
· "multiplication" column with a NUMERIC data type
· "modulo" column, also of NUMERIC data type
For the final step, proceed to calculate the earnings earned by the owner for each night, following these instructions:

· populate the "multiplication" column by multiplying the "booked_for" values by 50

· fill the "modulo" column with values representing the remainder when "booked_for" is divided by 50
*/


CREATE TABLE
	bookings_calculation
AS
SELECT 
	booked_for,
	CAST(booked_for * 50 AS NUMERIC) AS multiplication,
	CAST(booked_for % 50 AS NUMERIC) AS modulo
FROM 
	bookings
WHERE
	apartment_id = 93;