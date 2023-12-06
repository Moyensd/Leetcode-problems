# Write your MySQL query statement below
SELECT
    sell_date,
    COUNT(product) AS num_sold,
    GROUP_CONCAT(product ORDER BY product ASC SEPARATOR ',') AS products
FROM
    (SELECT DISTINCT * FROM activities) c
GROUP BY
    sell_date;