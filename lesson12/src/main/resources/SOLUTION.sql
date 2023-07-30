DELETE s
FROM student s
JOIN mark m ON s.id = m.student_id
JOIN subject sbj ON m.subject_id = sbj.id
GROUP BY s.id
HAVING MAX(sbj.grade) > 4;

DELETE s
FROM student s
JOIN mark m ON s.id = m.student_id
GROUP BY s.id
HAVING MIN(m.grade) < 4;

DELETE FROM paymenttype
WHERE name = "DAILY";

DELETE FROM mark
WHERE mark < 7;