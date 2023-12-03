# Write your MySQL query statement below
select round(sum(login)/count(distinct player_id), 2) as fraction
from
(
SELECT
    player_id,
    DATEDIFF(event_date, MIN(event_date) OVER(PARTITION BY player_id)) = 1 AS login
FROM Activity
) as subquery