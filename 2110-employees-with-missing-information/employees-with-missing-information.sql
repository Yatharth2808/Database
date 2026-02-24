# Write your MySQL query statement below
SELECT e.employee_id as employee_id
FROM employees e
LEFT JOIN salaries s
ON e.employee_id = s.employee_id
where salary is null

UNION

SELECT s.employee_id as employee_id
FROM employees e
RIGHT JOIN salaries s
ON e.employee_id = s.employee_id
where name is null

order by employee_id