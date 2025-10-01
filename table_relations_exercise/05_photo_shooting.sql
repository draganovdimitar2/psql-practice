/* 
To finish this assignment, you need to create a database called "photo_shooting_db" that comprises two tables: "customers" and "photos".
The "customers" table should contain two columns - "name" and "date". In the "photos" table, you should include columns for "url" and "place". 
The data type for each column can be chosen according to your preference, but it is essential to ensure that each column has a unique identifier. 
Moreover, correctly setting up the foreign keys is crucial.
*/


CREATE TABLE IF NOT EXISTS customers(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name VARCHAR(50),
	"date" DATE
);

CREATE TABLE IF NOT EXISTS photos(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	url VARCHAR(50),
	place VARCHAR(50),
	customer_id INT REFERENCES customers(id)
);

INSERT INTO
	customers(name, "date")
VALUES
	('Bella', '2022-03-25'),
	('Philip', '2022-07-05');

INSERT INTO
	photos(url, place, customer_id)
VALUES
	('bella_1111.com', 'National Theatre', 1),
    ('bella_1112.com', 'Largo', 1),
    ('bella_1113.com', 'The View Restaurant', 1),
    ('philip_1121.com', 'Old Town', 2),
    ('philip_1122.com', 'Rowing Canal', 2),
    ('philip_1123.com', 'Roman Theater', 2);