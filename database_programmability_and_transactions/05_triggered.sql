/* 
Create a table deleted_employees(employee_id PK, first_name, last_name, middle_name, job_title, department_id, salary) 
that will hold information about fired (deleted) employees from the employees table. Add a trigger to the employees table 
that inserts the corresponding information into deleted_employees table.

 * deleted_employees table:
- employee_id – primary key
- first_name - max-length 20
- last_name - max-length 20
- middle_name - max-length 20
- job_title – max-length 50
- department_id – integer
- salary – numeric (19,4)
*/


CREATE TABLE IF NOT EXISTS deleted_employees (
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	middle_name VARCHAR(20),
	job_title VARCHAR(50),
	department_id INT,
	salary NUMERIC(19,4)
);

CREATE OR REPLACE FUNCTION fn_backupd_fired_employees()
RETURNS TRIGGER
AS
$$
	BEGIN
		INSERT INTO deleted_employees(first_name, last_name, middle_name, job_title, department_id, salary)
		VALUES(
			old.first_name, 
			old.last_name, 
			old.middle_name, 
			old.job_title, 
			old.department_id, 
			old.salary
		);
		RETURN NEW;
	END;
$$

LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER backup_employees
AFTER DELETE ON employees
FOR EACH ROW EXECUTE PROCEDURE fn_backupd_fired_employees();