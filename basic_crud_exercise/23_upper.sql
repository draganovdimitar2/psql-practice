-- Modify the "projects" table by changing the "name" column to its uppercase equivalent.

UPDATE
	projects
SET 
	name = UPPER(name);