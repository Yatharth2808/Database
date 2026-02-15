# Write your MySQL query statement below
Select x, y, z ,  
(Case when (x < y + z) and (y < x + z ) and (z < y + x ) then 'Yes'
    else 'No'
    
end ) as Triangle from 
Triangle