/* 
Write a query to create two tables – mountains and peaks and link their fields properly by setting Foreign Key Constraint (fk_peaks_mountains). Tables should have:

o Mountains:
    - id
    - name, max-length = 50

o Peaks:
    - id
    - name, max-length = 50
    - mountain_id
*/


CREATE TABLE mountains(
	id INT GENERATED ALWAYS AS IDENTITY UNIQUE,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE peaks(
	id INT GENERATED ALWAYS AS IDENTITY UNIQUE,
	name VARCHAR(50) NOT NULL,
	mountain_id INT,
	CONSTRAINT fk_peaks_mountains
		FOREIGN KEY(mountain_id)
			REFERENCES mountains(id)
);