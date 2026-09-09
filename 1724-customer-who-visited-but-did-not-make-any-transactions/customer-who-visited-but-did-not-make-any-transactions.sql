# Write your MySQL query statement below
SELECT v.customer_id,
    COUNT(v.visit_id) count_no_trans
FROM Visits v
WHERE v.visit_id 
NOT IN (SELECT visit_id
    FROM transactions)
GROUP BY v.customer_id 