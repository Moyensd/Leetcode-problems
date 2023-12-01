# Write your MySQL query statement below
select e.name, b.bonus
from employee as e
left join bonus as b on e.empid = b.empid
where COALESCE(b.bonus, 0) < 1000;