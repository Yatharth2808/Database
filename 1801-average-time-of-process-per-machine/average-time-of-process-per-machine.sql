# Write your MySQL query statement below
Select machine_id, round(avg(
    Case when activity_type = 'start' then -timestamp else timestamp end
)*2,3) as processing_time
from Activity 
group by machine_id
