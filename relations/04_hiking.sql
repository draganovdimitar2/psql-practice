-- Get information about the hiking routes (start_point and end_point) and their leaders (leader_name and leader_id).


SELECT 
	r.start_point,
	r.end_point,
	r.leader_id,
	CONCAT(c.first_name, ' ', c.last_name) AS leader_name
FROM
	routes AS r
		JOIN campers AS c
			ON r.leader_id = c.id