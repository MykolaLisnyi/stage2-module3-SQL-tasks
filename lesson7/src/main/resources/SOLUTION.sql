SELECT * FROM mark WHERE mark > 6 ORDER BY mark DESC;
SELECT * FROM payment WHERE amount < 300 ORDER BY amount;
SELECT * FROM paymenttype ORDER BY name;
SELECT * FROM student ORDER BY name DESC;
SELECT DISTINCT (s.name) FROM student AS s INNER JOIN payment AS p ON s.id = p.student_id WHERE p.amount > 1000 ORDER BY s.birthday ASC;