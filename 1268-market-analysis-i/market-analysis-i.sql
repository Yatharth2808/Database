# Write your MySQL query statement below
select user_id AS buyer_id, join_date, 
SUM(case when YEAR(order_date) = 2019 THEN 1 ELSE 0 END) AS orders_in_2019
from users u
left join orders o
on u.user_id = o.buyer_id
group by u.user_id, join_date