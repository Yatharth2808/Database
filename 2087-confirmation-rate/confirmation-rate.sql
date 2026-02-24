# Write your MySQL query statement below
Select s.user_id, round(coalesce(avg(
    Case when action = 'confirmed' then 1.0 else 0 end
), 0.0), 2) as confirmation_rate 
from Signups s left join Confirmations c on s.user_id = c.user_id 
group by s.user_id
