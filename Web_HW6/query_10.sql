SELECT DISTINCT sb.name AS subject_name
FROM students s
JOIN groups g ON s.group_id = g.id
JOIN grades gr ON s.id = gr.student_id
JOIN subjects sb ON gr.subject_id = sb.id
JOIN teachers t ON sb.teacher_id = t.id
WHERE s.fullname = 'David Schultz' AND t.fullname = 'Steve Long';