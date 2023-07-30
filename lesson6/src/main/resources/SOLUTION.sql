SELECT (p.id, p.type_id, p.amount, p.payment_date, p.student_id)
FROM payment p
JOIN paymenttype pt ON p.type_id = pt.id
WHERE pt.name = "MONTHLY";

SELECT (m.id, m.student_id, m.subject_id, m.mark)
FROM mark m
JOIN subject s ON m.subject_id = s.id
WHERE s.name = "Art";

SELECT (s.id, s.name, s.birthday, s.groupnumber)
FROM student s
JOIN payment p ON s.id = p.student_id
JOIN paymenttype pt ON p.type_id = pt.id
WHERE pt.name = "WEEKLY";

SELECT (s.id, s.name, s.birthday, s.groupnumber)
FROM student s
JOIN mark m ON s.id = m.student_id
JOIN subject sbj ON m.subject_id = sbj.id
WHERE sbj.name = "Math";