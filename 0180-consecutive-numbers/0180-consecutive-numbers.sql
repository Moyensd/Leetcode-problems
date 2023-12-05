# Write your MySQL query statement below
SELECT DISTINCT num as ConsecutiveNums 
FROM (
SELECT
    num,
    LAG(num) OVER (ORDER BY id) AS prev_num,
    LEAD(num) OVER (ORDER BY id) AS next_num
  FROM
    logs
) AS ConsecutiveNumbers
WHERE
  num = prev_num AND num = next_num;