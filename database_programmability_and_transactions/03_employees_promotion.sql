/* 
Create a stored procedure sp_increase_salaries(department_name) to increase the salary of all employees working at a given department 
(provided as a parameter). Increase salaries by 5%.
*/


CREATE OR REPLACE PROCEDURE sp_increase_salaries(department_name VARCHAR)
AS
$$
	BEGIN
		UPDATE employees
		SET salary = salary * 1.05
		WHERE department_id = (
			SELECT
				d.department_id
			FROM
				departments AS d
			WHERE
				d.name = department_name
		);
	END;
$$
LANGUAGE plpgsql;
