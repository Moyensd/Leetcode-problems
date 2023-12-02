# Write your MySQL query statement below
select query_name, 
round(avg(rating/position), 2) as quality, 
round(COUNT(CASE WHEN rating < 3 THEN 1 ELSE NULL END)/count(*) * 100, 2) AS poor_query_percentage 
from queries
where query_name is not null
group by query_name
