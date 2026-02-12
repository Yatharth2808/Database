# Write your MySQL query statement below
SELECT
  MAX(CASE WHEN dr = 2 THEN salary END) AS SecondHighestSalary
FROM (
  SELECT
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dr
  FROM Employee
) x;
