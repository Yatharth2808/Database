with t as (
    select *,
    id-row_number() over (order by id) as grp
    from Stadium
    where people >99
)

 
select id, visit_date, people from 
t where grp in (
    select grp from t group by grp having count(*) >2
)