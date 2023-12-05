# Write your MySQL query statement below
WITH ModifiedProducts AS (
  SELECT
    product_id,
    CASE WHEN change_date > '2019-08-16' THEN '2000-01-01' ELSE change_date END AS change_date,
    CASE WHEN change_date > '2019-08-16' THEN 10 ELSE new_price END AS new_price
  FROM Products
)

SELECT o.product_id, MAX(o.new_price) AS price
FROM ModifiedProducts o
LEFT JOIN ModifiedProducts b
  ON o.product_id = b.product_id AND o.change_date < b.change_date
WHERE b.change_date IS NULL
GROUP BY o.product_id;
