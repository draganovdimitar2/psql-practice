/* 
In the newly created database, add a new table. Write an SQL statement to create a table "minions" including columns:
    "id" - should be a primary key, and automatically incremented; 
    "name" - with a max length of 30 characters;
    "age" - should be a whole number (SMALLINT or INT);
 */

 CREATE TABLE minions (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	NAME VARCHAR(30),
	AGE INT
);