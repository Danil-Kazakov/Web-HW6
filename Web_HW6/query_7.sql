SELECT s.fullname AS student_name, g.grade
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN subjects sb ON g.subject_id = sb.id
JOIN groups gr ON s.group_id = gr.id
WHERE sb.name = 'owner' AND gr.name = 'yeah';