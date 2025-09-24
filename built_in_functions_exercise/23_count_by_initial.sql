/* 
To generate a report displaying the user count grouped by their initials, you can utilize an SQL query. This query involves selecting the initial two characters from the "first_name" column of the "users" table and storing them in a newly created column named "initials". Afterward, you can use the GROUP BY clause to group the users based on their initials. Then, employ the COUNT() function to retrieve the number of users in each group, and name the resulting column "user_count". Finally, you can arrange the resulting data in descending order according to the "user_count" column. In cases where multiple groups have the same count, you can further sort them alphabetically based on their "initials"
*/


SELECT
    LEFT(first_name, 2) AS initials,
    COUNT(*) AS user_count
FROM 
    users
GROUP BY 
    initials
ORDER BY 
    user_count DESC, initials ASC;
