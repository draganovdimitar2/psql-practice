/* 
Write a query to calculate the area of triangles with a given side and height from table triangles.
Display the resulting table with columns id and area. Order by id.
*/


SELECT 
	id,
	side * height / 2 AS area
FROM 
	triangles;