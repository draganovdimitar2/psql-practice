/* 
Create a SQL query to retrieve the YEAR, MONTH, DAY, HOUR, MINUTE, and SECOND values from the "booked_at" column. Use the CEILING() function to round up the SECOND value to the nearest whole number.
*** Note that the "booked_at" column is stored as "TIMESTAMPTZ" (timestamp with time zone) data type. When extracting hours from this column, please be aware that the extraction considers your account's time zone
information, which may result in different hour values based on the time zone. To ensure consistent results for this task, utilize the "AT TIME ZONE" function to convert the timestamp to the UTC time zone before extracting the hour. This approach will help ensure uniformity in the results.
*/

SELECT
    EXTRACT(YEAR FROM booked_at AT TIME ZONE 'UTC')   AS year,
    EXTRACT(MONTH FROM booked_at AT TIME ZONE 'UTC')  AS month,
    EXTRACT(DAY FROM booked_at AT TIME ZONE 'UTC')    AS day,
    EXTRACT(HOUR FROM booked_at AT TIME ZONE 'UTC')   AS hour,
    EXTRACT(MINUTE FROM booked_at AT TIME ZONE 'UTC') AS minute,
    CEILING(EXTRACT(SECOND FROM booked_at AT TIME ZONE 'UTC')) AS second
FROM bookings;