# Write your MySQL query statement below
WITH x AS (
  SELECT
    id, visit_date, people,
    id - ROW_NUMBER() OVER (ORDER BY id) AS grp
  FROM Stadium
  WHERE people >= 100
),
y AS (
  SELECT grp
  FROM x
  GROUP BY grp
  HAVING COUNT(*) >= 3
)
SELECT x.id, x.visit_date, x.people
FROM x
JOIN y ON x.grp = y.grp
ORDER BY x.visit_date;
