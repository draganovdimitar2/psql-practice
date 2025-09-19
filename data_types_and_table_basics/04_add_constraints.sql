-- In the table "employees", set the salary column as Not NULL with a default value of 0. Set the hiring date column as Not NULL too.


ALTER TABLE employees
ALTER COLUMN salary SET NOT NULL,
ALTER COLUMN SALARY SET DEFAULT 0,
ALTER COLUMN hiring_date SET NOT NULL;