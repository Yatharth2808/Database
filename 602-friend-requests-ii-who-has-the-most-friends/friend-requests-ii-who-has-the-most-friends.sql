# Write your MySQL query statement below
Select id, Count(*) as num
from(
    Select requester_id as id from RequestAccepted
    union all 
    Select accepter_id as id from RequestAccepted
) x
group by id 
order by num desc
limit 1