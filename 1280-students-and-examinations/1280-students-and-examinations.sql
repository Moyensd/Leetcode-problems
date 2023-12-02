# Write your MySQL query statement below
SELECT s.student_id, s.student_name, c.subject_name, COALESCE(e.attended_exams, 0) AS attended_exams 
FROM students AS s
CROSS JOIN Subjects AS c
LEFT JOIN (
    SELECT student_id, subject_name, COUNT(subject_name) AS attended_exams
    FROM Examinations
    GROUP BY student_id, subject_name
) AS e ON e.student_id = s.student_id AND e.subject_name = c.subject_name
order by s.student_id, c.subject_name