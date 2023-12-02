# Write your MySQL query statement below
select 
round(sum(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END)/count(*) * 100, 2) as immediate_percentage 
from (
  select customer_id, min(order_date) as order_date, min(customer_pref_delivery_date) as customer_pref_delivery_date
  from delivery
  group by customer_id 
) as subquery