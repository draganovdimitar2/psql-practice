-- Write a query to count the number of employees who receive salaries higher than the average.


SELECT 
    COUNT(*)
FROM 
    employees
WHERE 
    salary > (
        SELECT 
            AVG(salary)
        FROM 
            employees
);
