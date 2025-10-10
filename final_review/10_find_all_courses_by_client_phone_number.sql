CREATE OR REPLACE FUNCTION fn_courses_by_client(
	phone_num VARCHAR(20)
) RETURNS INT
AS
$$
DECLARE
	cl_id INT;
BEGIN
	cl_id := (SELECT id FROM clients WHERE clients.phone_number = phone_num);
	RETURN (SELECT COUNT(*) FROM courses AS co WHERE co.client_id = cl_id);
END;
$$
LANGUAGE plpgsql;

