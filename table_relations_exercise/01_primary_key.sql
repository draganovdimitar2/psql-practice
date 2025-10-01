/* 
a. Create a table

Create a new table called "products" that includes a column named "product_name" which has a maximum character limit of 100.
Insert the following values into the "products" table: 'Broccoli', 'Shampoo', 'Toothpaste', and 'Candy'.
*/


CREATE TABLE products(
    product_name VARCHAR(100)
);

INSERT INTO products (product_name)
VALUES 
    ('Broccoli'),
    ('Shampoo'), 
    ('Toothpaste'),
    ('Candy');

/* 
b. Define the primary key when changing the existing table structure

The newly created table does not have a unique identifier. To add a PRIMARY KEY, use the ALTER TABLE statement.
Submit your queries for the two-step task in the Judge system.
*/


ALTER TABLE products
ADD COLUMN "id" SERIAL PRIMARY KEY;