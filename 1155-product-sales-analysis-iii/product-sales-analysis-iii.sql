# Write your MySQL query statement below
Select product_id, year as first_year, quantity, price
from (
    Select s.* , DENSE_RANK() OVER (PARTITION BY product_id ORDER BY year) AS rnk
    FROM Sales s
) x
where rnk = 1
