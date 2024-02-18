SELECT s.fullname, AVG(g.grade) AS average_grade
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN subjects sb ON g.subject_id = sb.id
WHERE sb.name = 'rule'
GROUP BY s.fullname
ORDER BY average_grade DESC
LIMIT 1;