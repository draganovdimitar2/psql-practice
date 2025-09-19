/*
Table "employees":
	id – serial, primary key, Not NULL;
	first_name – character varying, max length 30;
	last_name – character varying, max length 50; 
	hiring_date – date, default '2023-01-01'; 
	salary – numeric, specified to the second decimal place, and has 10 digits in total;
	devices_number – integer; 
Create the "departments" and "issues" tables analogically:
Table "departments":
	id – serial, primary key, Not NULL;
	name – character varying, max length 50; 
	code – character, fixed length 3;
	description – text; 
Table "issues":
	id – serial, primary key, unique;
	description – character varying, max length 150;
	date – date;
	start – timestamp without time zone;
*/

CREATE TABLE employees (
	id SERIAL PRIMARY KEY NOT NULL,
	first_name VARCHAR(30),
	last_name VARCHAR(50),
	hiring_date DATE DEFAULT '2023-01-01',
	salary NUMERIC(10,2),
	devices_number INT
);

CREATE TABLE departments (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(50),
	code CHAR(3),
	description TEXT
);

CREATE TABLE issues (
	id SERIAL PRIMARY KEY UNIQUE,
	description VARCHAR(150),
	date DATE,
	start TIMESTAMP
);