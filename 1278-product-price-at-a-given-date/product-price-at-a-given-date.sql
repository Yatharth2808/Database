# Write your MySQL query statement below
SELECT DISTINCT x.product_id, COALESCE(p.new_price, 10) AS price
FROM (SELECT DISTINCT product_id FROM Products) x
LEFT JOIN (
    SELECT product_id, MAX(change_date) AS change_date
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
) y
  ON x.product_id = y.product_id
LEFT JOIN Products p
  ON p.product_id = y.product_id
 AND p.change_date = y.change_date;
