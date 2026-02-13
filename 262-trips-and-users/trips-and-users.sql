SELECT
  t.request_at AS Day,
  ROUND(
    SUM(CASE WHEN t.status IN ('cancelled_by_driver','cancelled_by_client') THEN 1 ELSE 0 END) / COUNT(*) ,
    2
  ) AS `Cancellation Rate`
FROM Trips t
JOIN Users uc
  ON uc.users_id = t.client_id
JOIN Users ud
  ON ud.users_id = t.driver_id
WHERE t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
  AND uc.banned = 'No'
  AND ud.banned = 'No'
GROUP BY t.request_at
ORDER BY t.request_at;
