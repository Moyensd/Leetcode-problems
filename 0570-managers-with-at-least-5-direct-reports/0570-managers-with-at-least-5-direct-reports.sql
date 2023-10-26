# Write your MySQL query statement below
select 
  e.name

from employee as e
left join employee as e2 ON e.id = e2.managerid
group by e.id
Having count(e2.managerid) >= 5