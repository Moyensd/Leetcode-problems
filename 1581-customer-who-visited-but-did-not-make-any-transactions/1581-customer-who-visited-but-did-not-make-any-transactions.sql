# Write your MySQL query statement below
select customer_id, count(*) as count_no_trans 
from (
select v.visit_id, v.customer_id, t.transaction_id 
from visits as v
left join transactions as t on v.visit_id = t.visit_id
where amount is null
group by v.visit_id
) as grp
group by customer_id 