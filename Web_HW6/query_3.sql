SELECT g.name AS group_name, AVG(gr.grade) AS average_grade
FROM groups g
JOIN students s ON g.id = s.group_id
JOIN grades gr ON s.id = gr.student_id
JOIN subjects sb ON gr.subject_id = sb.id
WHERE sb.name = 'rule'
GROUP BY g.name;