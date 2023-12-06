# Write your MySQL query statement below
SELECT * 
FROM Users
WHERE REGEXP_LIKE(mail, '^[a-zA-Z][a-zA-Z0-9_.-]*@[a-zA-Z0-9_.-]+\.[a-zA-Z]+$') 
  AND mail LIKE '%@leetcode.com';
