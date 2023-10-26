# Write your MySQL query statement below
select score, dense_rank() over (order by score Desc) as "rank"
from Scores
order by score Desc;