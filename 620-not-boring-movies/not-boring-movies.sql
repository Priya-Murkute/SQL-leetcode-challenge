# Write your MySQL query statement below
SELECT *
FROM Cinema
WHERE id % 2 = 1 
AND description != LOWER('BORING')
ORDER BY rating DESC