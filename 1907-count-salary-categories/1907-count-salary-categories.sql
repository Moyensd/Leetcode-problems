# Write your MySQL query statement below

SELECT 
    b.category,
    COUNT(a.account_id) AS accounts_count
FROM 
    (SELECT 'Low Salary' AS category
     UNION
     SELECT 'High Salary' AS category
     UNION
     SELECT 'Average Salary' AS category) AS b
LEFT JOIN Accounts a ON (
    (b.category = 'Low Salary' AND a.income < 20000) OR
    (b.category = 'High Salary' AND a.income > 50000) OR
    (b.category = 'Average Salary' AND a.income BETWEEN 20000 AND 50000)
)
GROUP BY b.category;
