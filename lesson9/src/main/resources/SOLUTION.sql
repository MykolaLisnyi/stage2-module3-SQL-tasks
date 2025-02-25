SELECT (s.name) FROM student AS s INNER JOIN mark AS m ON s.id = m.student_id GROUP BY s.id HAVING AVG(m.mark) > 8;
SELECT (s.id, s.name) FROM student AS s INNER JOIN mark AS m ON s.id = m.student_id GROUP BY s.id HAVING MIN(m.mark) > 7;
SELECT (s.id, s.name) FROM student AS s INNER JOIN payment AS p ON s.id = p.student_id WHERE YEAR(s.payment_date) = 2019 GROUP BY s.id HAVING COUNT(s.id) > 2;