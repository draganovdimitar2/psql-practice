/* 
Retrieve the "companion_full_name" and "email" columns from the "users" table where the following conditions are met:
• the "companion_full_name" column should contain the substring '%aNd%' in a case-insensitive manner
• the "email" column should NOT contain the substring '%@gmail' in a case-sensitive manner
*/


SELECT
    companion_full_name,
    email
FROM 
	users
WHERE 
	companion_full_name ILIKE '%aNd%' AND email NOT LIKE '%@gmail';
