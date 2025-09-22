-- Create a view named "view_company_chart" that selects "full_name" and "job_title" for all employees whose "manager_id" is 184, from the recently created table company_chart.


CREATE VIEW
	view_company_chart
AS
SELECT
	full_name,
	job_title
FROM
	company_chart
WHERE 
	manager_id = 184;
	