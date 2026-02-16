# Write your MySQL query statement below
Select query_name, 
round(sum(rating/position)/Count(*) ,2) as quality, 
round(100.0 * sum(Case when rating < 3 then 1 else 0 end)/Count(*),2) as poor_query_percentage
from Queries
group by query_name