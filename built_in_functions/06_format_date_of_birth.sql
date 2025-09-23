/* 
Write a query to display the author’s last name and date of birth in the format 15 (Mon) Sep 1890.
    use date format: DD (Dy) Mon YYYY
    born field(formatted) as Date of Birth
    last_name as Last Name
*/


SELECT 
	last_name as "Last Name",
	TO_CHAR(born, 'DD (Dy) Mon YYYY') AS "Date of Birth"
from authors;