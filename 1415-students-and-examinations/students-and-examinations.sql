# Write your MySQL query statement below
SELECT  st.student_id,
    st.student_name,
    s.subject_name,
    COUNT(ex.student_id) as attended_exams
FROM Students st
CROSS JOIN subjects s
LEFT JOIN Examinations ex
USING(student_id, subject_name)
GROUP BY st.student_id,
        s.subject_name,
        st.student_name
ORDER BY st.student_id