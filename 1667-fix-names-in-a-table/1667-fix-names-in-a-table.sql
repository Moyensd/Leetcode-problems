# Write your MySQL query statement below
SELECT
  user_id,
  CONCAT(UPPER(SUBSTRING(name, 1, 1)), LOWER(SUBSTRING(name  , 2))) AS name
FROM
  Users
WHERE
  name IS NOT NULL
order by user_id asc
