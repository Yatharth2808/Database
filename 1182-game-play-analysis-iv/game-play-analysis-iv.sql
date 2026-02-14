# Write your MySQL query statement below

# w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
#Select player_id, min(event_date) as first_login,
#from Activity
#group by player_id

SELECT round(sum(CASE WHEN a.player_id IS NOT NULL THEN 1.0 ELSE 0.0 END)/(Count(*)), 2)
AS fraction FROM (
  SELECT player_id, MIN(event_date) AS first_login
  FROM Activity
  GROUP BY player_id
) f
LEFT JOIN Activity a
  ON a.player_id = f.player_id
 AND a.event_date = DATE_ADD(f.first_login, INTERVAL 1 DAY);
