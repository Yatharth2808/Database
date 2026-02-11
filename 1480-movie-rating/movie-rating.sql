# Write your MySQL query statement below
(
    Select u.name as results
    from MovieRating m join Users u
    on m.user_id = u.user_id
    group by m.user_id, u.name
    order by COUNT(*) DESC , u.name asc
    Limit 1
)
UNION ALL
(
    Select m.title as results
    from MovieRating mv join Movies m
    on mv.movie_id = m.movie_id
    where mv.created_at >= '2020-02-01' and mv.created_at < '2020-03-01'
    group by m.title
    order by avg(mv.rating) desc , m.title asc
    Limit 1
)