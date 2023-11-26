# Write your MySQL query statement below
SELECT customer_number 
FROM (
    SELECT customer_number, COUNT(order_number) as total_orders
    FROM orders
    GROUP BY customer_number
) AS subquery
ORDER BY total_orders DESC
LIMIT 1;