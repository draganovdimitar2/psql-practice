/* 
Write SQL queries to create two new tables: "customers" and "contacts". The "customers" table should have a column for "customer_name", 
and the "contacts" table should contain columns for "contact_name", "phone", "email", and "customer_id". You can choose the data type for 
each column based on your preference, but it's important to ensure that each table has a unique identifier.
To set up the foreign keys correctly, make sure that when a record in the "customers" table is deleted, the corresponding records 
in the "contacts" table have their "customer_id" value set to NULL. Additionally, when a row in the "customers" table is updated, 
ensure that matching rows in the "contacts" table are also updated accordingly.
Finally, remove the row from the "customers" table where the value of the "id" column matches 1.
*/


CREATE TABLE customers(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	customer_name VARCHAR(50)
);

CREATE TABLE contacts(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	contact_name VARCHAR(50),
	phone VARCHAR(50),
	email VARCHAR(50),
	customer_id INT REFERENCES customers(id) ON DELETE SET NULL ON UPDATE CASCADE
);

INSERT INTO 
    customers (customer_name) 
VALUES
    ('BlueBird Inc'),
    ('Dolphin LLC');

INSERT INTO 
    contacts (contact_name, phone, email, customer_id) 
VALUES
    ('John Doe', '(408)-111-1234', 'john.doe@bluebird.dev', 1),
    ('Jane Doe', '(408)-111-1235', 'jane.doe@bluebird.dev', 1),
    ('David Wright', '(408)-222-1234', 'david.wright@dolphin.dev', 2);


DELETE FROM
	customers
WHERE 
	id = 1; 