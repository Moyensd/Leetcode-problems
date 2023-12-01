# Write your MySQL query statement below
select e2.employee_id, e2.name, count(*) as reports_count,  round(sum(e1.age)/count(e1.age)) as average_age
from employees as e1
join employees as e2 on e1.reports_to = e2.employee_id
group by e1.reports_to
order by e2.employee_id