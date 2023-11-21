# Write your MySQL query statement below
SELECT DISTINCT Sales.product_id , Product.product_name 
FROM Sales
left join Product on Product.product_id = Sales.product_id
WHERE Sales.product_id NOT IN (
    SELECT product_id
    FROM Sales
    WHERE sale_date < '2019-01-01' OR sale_date > '2019-03-31'
);
