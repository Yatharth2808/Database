SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM (
  SELECT departmentId, MAX(salary) AS max_salary
  FROM Employee
  GROUP BY departmentId
) xd
JOIN Employee e
  ON e.departmentId = xd.departmentId
 AND e.salary = xd.max_salary
JOIN Department d
  ON d.id = e.departmentId;
