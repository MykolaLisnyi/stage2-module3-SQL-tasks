SELECT MAX(birthday) FROM student;
SELECT MIN(payment_date) FROM payment;

SELECT AVG(m.mark)
FROM mark m
JOIN subject s ON m.subject_id = s.id
WHERE s.name = "Math";

SELECT MIN(p.amount)
FROM payment p
JOIN paymenttype pt ON p.type_id = pt.id
WHERE pt.name = "WEEKLY";