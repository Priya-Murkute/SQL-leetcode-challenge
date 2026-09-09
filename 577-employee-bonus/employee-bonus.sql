# Write your MySQL query statement below
SELECT emp.name,
    b.bonus
FROM Employee emp
LEFT JOIN Bonus b
USING(empId)
WHERE b.bonus is NULL or b.bonus <1000