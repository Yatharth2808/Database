# Write your MySQL query statement below
Select distinct email as Email
from Person
group by email
having count(*) > 1

