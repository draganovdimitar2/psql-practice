/* 
Write a SQL query that groups employees by their job titles and calculates the average salary for each group. The query should also add a column called "category" that categorizes each "job_title" based on the following rules:
•	if the average "salary" is greater than 45,800, the category should be "Good"
•	if the average "salary" is between 27,500 and 45,800 (inclusive), the category should be "Medium"
•	if the average salary for the job title is less than 27,500, the scale should be "Need Improvement"
Arrange the outcomes based on the "category" column in ascending sequence. If there are several employees within the group, arrange them by their "job_title" in alphabetical order. 
*/


SELECT 
	job_title,
	CASE	
		WHEN AVG(salary) > 45800 THEN 'Good'
		WHEN AVG(salary) < 27500 THEN 'Need Improvement'
		ELSE 'Medium'
	END AS category
FROM
	employees
GROUP BY
	job_title
ORDER BY
	category,
	job_title;