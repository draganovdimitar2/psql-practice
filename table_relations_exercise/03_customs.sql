/* 
To fulfill this assignment, you are required to establish a new database named "customs_db" and produce two tables inside it,
named "passports" and "people".

a. Create and Insert Passports Table

Wright a SQL statement to create a new table called "passports" with two columns, "id" and "nationality". The "id" column should be an automatically incremented primary key, starting at 100 and incrementing by 1. The "nationality" column should have a maximum character limit of 50.
Then, insert three rows into the "passports" table with values 'N34FG21B', 'K65LO4R7', and 'ZE657QP2' for the "nationality" column.


b. Create and Insert People Table

In the next step of this task, your objective is to create a new table called "people" which includes the following columns:
-	"id" column that is an automatically incremented SERIAL PRIMARY KEY;
-	"first_name" column with a maximum length of 50 characters and is of type VARCHAR;
-	"salary" column which is specified to the second decimal place and has a maximum of 10 digits;
-	"passport_id" column of type INT which is established as a FOREIGN KEY constraint and refers to the "id" column of the "passports" table.
After creating the "people" table, you need to insert three rows into it, each row should have values for the "first_name", "salary", and "passport_id" columns:
-	('Roberto', 43300.0000, 101)
-	('Tom', 56100.0000, 102)
-   ('Yana', 60200.0000, 100)
*/


CREATE TABLE IF NOT EXISTS passports(
	id INT GENERATED ALWAYS AS IDENTITY (START WITH 100 INCREMENT BY 1) PRIMARY KEY,
	nationality VARCHAR(50)
);

INSERT INTO passports(nationality)
VALUES
	('N34FG21B'),
	('K65LO4R7'),
	('ZE657QP2');

CREATE TABLE IF NOT EXISTS people(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	salary NUMERIC(10, 2),
	passport_id INT REFERENCES passports(id) -- Constraint name by default: people_passport_id_fkey
);

INSERT INTO people(first_name, salary, passport_id) 
VALUES
	('Roberto', 43300.0000, 101),
	('Tom', 56100.0000, 102),
	('Yana', 60200.0000, 100);