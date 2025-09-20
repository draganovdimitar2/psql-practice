/* 
Create a new table to store information about the Minions' birthdays and organize surprise parties. Make sure to add constraints to the data types, the "id" must be UNIQUE, and be cautious of non-NULL and DEFAULT values. The table should be named "minions_birthdays" and include the following columns:
    "id";
    "name" - with a max length of 50 characters;
    "date_of_birth" - should be of type Date;
    "age";
    "present" - with a max length of 100 characters;
    "party" - should contain both date and time, with time zone because the guests are coming from different countries;
*/


CREATE TABLE minions_birthdays (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name VARCHAR(50),
	date_of_birth DATE,
	age INT,
	present VARCHAR(100),
	party TIMESTAMPTZ
);