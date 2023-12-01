# Write your MySQL query statement below
select machine_id, round(avg(processing_time), 3) as processing_time 
from (
select *, max(timestamp) - min(timestamp) as processing_time 
from Activity as a1
group by machine_id, process_id
) as ptime
group by machine_id 
