-- Change the property "VARCHAR(50)" to "VARCHAR(100)" for the middle_name column in "employees" table.


ALTER TABLE employees
ALTER COLUMN middle_name TYPE VARCHAR(100);