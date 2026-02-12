# Write your MySQL query statement below
Select d.name as Department, e.name as Employee, e.salary as Salary
from
(
    Select *, dense_rank() over (Partition by departmentId order by salary desc) as dr
    from employee 
) e
join department d on
e.departmentId = d.id
where dr < 4