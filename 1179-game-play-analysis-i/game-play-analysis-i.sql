# Write your MySQL query statement below
Select distinct player_id, min(event_date) as first_login
from Activity
group by player_id