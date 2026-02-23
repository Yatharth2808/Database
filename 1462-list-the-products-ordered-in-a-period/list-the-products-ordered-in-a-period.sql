# Write your MySQL query statement below
Select product_name, sum(o.unit) as unit
from Orders o join Products p on o.product_id = p.product_id 
where order_date >= '2020-02-01' and order_date < '2020-03-01'
group by o.product_id 
having sum(o.unit) >= 100
order by o.product_id 