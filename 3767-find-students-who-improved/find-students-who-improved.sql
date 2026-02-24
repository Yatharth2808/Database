# Write your MySQL query statement below
Select distinct * from (Select student_id, subject, (First_value(score) over (Partition by student_id,subject order by exam_date)) as first_score, (First_value(score) over (Partition by student_id,subject order by exam_date desc)) as latest_score from Scores
) x 
where first_score < latest_score
order by student_id, subject
