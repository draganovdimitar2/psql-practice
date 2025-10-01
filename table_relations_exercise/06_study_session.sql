/* 
To complete this task, create a database named "study_session_db" that includes the following tables: "students", "exams", "study_halls", and "students_exams".
The "students" table should have a column for "student_name". In the "exams" table, include a column for "exam_name". 
The "study_halls" table should contain columns for "study_hall_name" and "exam_id". The "students_exams" table should have columns for "student_id" 
and "exam_id". You are free to choose the appropriate data type for each column but ensure each has a unique identifier. 
Note that the "exams" identifier should start at 101 and increment by 1. It is important to correctly set up the foreign keys.
*/


CREATE TABLE IF NOT EXISTS students(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	student_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS exams(
	id INT GENERATED ALWAYS AS IDENTITY (START WITH 101 INCREMENT BY 1) PRIMARY KEY,
	exam_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS study_halls(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	study_hall_name VARCHAR(50),
	exam_id INT REFERENCES exams(id)
);

CREATE TABLE IF NOT EXISTS students_exams (
    student_id INT,
    exam_id INT,
    PRIMARY KEY (student_id, exam_id),
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (exam_id) REFERENCES exams(id)
);


INSERT INTO 
	students (student_name) 
VALUES
	('Mila'),
	('Toni'),
	('Ron');

INSERT INTO 
	exams (exam_name) 
VALUES
	('Python Advanced'),
	('Python OOP'),
	('PostgreSQL');

INSERT INTO 
	study_halls (study_hall_name, exam_id) 
VALUES
	('Open Source Hall', 102),
	('Inspiration Hall', 101),
	('Creative Hall', 103),
	('Masterclass Hall', 103),
	('Information Security Hall', 103);

INSERT INTO 
	students_exams (student_id, exam_id)
VALUES
	(1, 101),
	(1, 102),
	(2, 101),
	(3, 103),
	(2, 102),
	(2, 103);
