# Write your MySQL query statement below
Select id, (Case
    when p_id is null then 'Root' 
    when id in (SELECT p_id FROM Tree WHERE p_id IS NOT NULL) then 'Inner'
    else 'Leaf'
    end 
    ) as type
from Tree
order by id