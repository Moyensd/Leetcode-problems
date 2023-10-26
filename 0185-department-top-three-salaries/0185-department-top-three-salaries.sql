# Now We clean up the unnecessary headers
# Personally I'd add Order by statement here so table is easier to read
SELECT e.name AS Employee, e.salary AS Salary, d.name AS Department

FROM employee AS e

LEFT JOIN department AS d ON e.departmentid = d.id

LEFT JOIN employee AS e2 ON e.departmentid = e2.departmentid 

AND e.salary <= e2.salary

GROUP BY e.id

HAVING COUNT(DISTINCT e2.salary) <= 3

ORDER BY d.id, e.salary DESC;