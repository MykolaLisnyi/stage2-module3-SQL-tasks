DELETE student FROM student AS s INNER JOIN mark AS m ON s.id = m.student_id INNER JOIN subject AS sbj ON m.subject_id = sbj.id GROUP BY s.id HAVING MAX(sbj.grade) > 4;
DELETE student FROM student AS s INNER JOIN mark AS m ON s.id = m.student_id GROUP BY s.id HAVING MIN(m.grade) < 4;
DELETE FROM paymenttype WHERE name = 'DAILY';
DELETE FROM mark WHERE mark < 7;