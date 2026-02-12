CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
    SELECT
    MAX(CASE WHEN dr = N THEN salary END) AS SecondHighestSalary
    FROM (
    SELECT
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dr
    FROM Employee
    ) x

  );
END