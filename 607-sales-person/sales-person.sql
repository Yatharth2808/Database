# Write your MySQL query statement below
Select s.name from 
Salesperson s left join Orders o on s.sales_id = o.sales_id
left join Company c on o.com_id = c.com_id
group by s.name
having Count(Case when c.name = 'RED' then 1 END) = 0