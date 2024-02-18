SELECT DISTINCT sb.name AS subject_name
FROM teachers t
JOIN subjects sb ON t.id = sb.teacher_id
WHERE t.fullname = 'Steve Long';
