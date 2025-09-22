-- Retrieve all projects without an "end_date", and add 5 months to their "start_date".


UPDATE
	projects
SET
	end_date = start_date + INTERVAL '5 months'
WHERE 
	end_date IS NULL;