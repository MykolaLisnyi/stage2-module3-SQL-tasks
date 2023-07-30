SELECT * FROM payment WHERE amount >= 500;
SELECT * FROM student WHERE DATEDIFF(year, CURRENT_DATE, date) > 20;
SELECT * FROM student WHERE groupnumber = 10 AND DATEDIFF(year, CURRENT_DATE, date) < 20;
SELECT * FROM student WHERE name = "Mike" OR groupnumber IN (4, 5, 6);
SELECT * FROM payment WHERE DATEDIFF(month, CURRENT_DATE, payment_date) < 8;
SELECT * FROM student WHERE name LIKE "A%";
SELECT * FROM student WHERE (name = "Roxi" AND groupnumber = 4) OR (name = "Tallie" AND groupnumber = 9);

--For tasks 2,3,5 use function dateadd()
--and add to this function current date
--like '20001010'(format: YearMonthDate).