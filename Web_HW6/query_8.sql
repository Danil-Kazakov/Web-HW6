SELECT t.fullname AS teacher_name, AVG(g.grade) AS average_grade
FROM teachers t
JOIN subjects sb ON t.id = sb.teacher_id
JOIN grades g ON sb.id = g.subject_id
GROUP BY t.fullname;