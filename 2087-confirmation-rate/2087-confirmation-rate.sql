# Write your MySQL query statement below
SELECT s.user_id, round(IFNULL(AVG(c.action = 'confirmed'), 0), 2) AS confirmation_rate
FROM signups AS s
LEFT JOIN Confirmations AS c ON c.user_id = s.user_id
GROUP BY s.user_id;