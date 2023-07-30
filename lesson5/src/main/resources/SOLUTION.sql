SELECT * FROM payment WHERE amount >= 500;
SELECT * FROM student WHERE DATEDIFF(year, birthday, CURRENT_DATE) > 20;
SELECT * FROM student WHERE groupnumber = 10 AND DATEDIFF(year, birthday, CURRENT_DATE) < 20;
SELECT * FROM student WHERE name = 'Mike' OR groupnumber IN (4, 5, 6);
SELECT * FROM payment WHERE DATEDIFF(month, payment_date, CURRENT_DATE) < 8;
SELECT * FROM student WHERE name LIKE 'A%';
SELECT * FROM student WHERE ((name = 'Roxi' AND groupnumber = 4) OR (name = 'Tallie' AND groupnumber = 9));