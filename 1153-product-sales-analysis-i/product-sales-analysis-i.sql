# Write your MySQL query statement below
SELECT pt.product_name,
    s.year,
    s.price
FROM Sales s
JOIN Product pt
USING(product_id)