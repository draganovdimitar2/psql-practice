-- Create an SQL query that utilizes the AVG() function to calculate the average value of the "multiplication" column in the "bookings_calculation" table


SELECT
    AVG(multiplication) AS average_multiplication
FROM 
    bookings_calculation;
