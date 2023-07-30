INSERT INTO student(name, birthday, groupnumber) VALUES ('John',   '2005-05-12', 1), ('Chris',  '2005-01-01', 1), ('Carl',   '2004-11-29', 1), ('Oliver', '2004-07-02', 2), ('James',  '2004-10-20', 2), ('Lucas',  '2003-04-09', 2), ('Henry',  '2003-05-07', 2), ('Jacob',  '2002-03-17', 3), ('Logan',  '2001-08-27', 3), ('Mykola', '2000-08-21', 4), ('Ivan',   '2001-08-20', 4), ('Maria',  '2000-07-27', 5), ('Anna',   '2001-09-29', 5);
INSERT INTO subject(name, grade) VALUES ('Art', 1), ('Music', 1), ('Geography', 2), ('History', 2), ('PE', 3), ('Math', 3), ('Science', 4), ('IT', 4), ('Science', 5), ('History', 5);
INSERT INTO paymenttype(name) VALUES ("DAILY"), ("WEEKLY"), ("MONTHLY");
INSERT INTO payment(type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'Weekly'  ), 100, CURRENT_TIMESTAMP, (SELECT id FROM students WHERE name = 'John')), ((SELECT id FROM paymenttype WHERE name = 'Monthly'), 445, CURRENT_TIMESTAMP, (SELECT id FROM students WHERE name = 'Oliver')), ((SELECT id FROM paymenttype WHERE name = 'Weekly'), 80,  CURRENT_TIMESTAMP, (SELECT id FROM students WHERE name = 'Henry')), ((SELECT id FROM paymenttype WHERE name = 'Daily'), 9,   CURRENT_TIMESTAMP, (SELECT id FROM students WHERE name = 'James')), ((SELECT id FROM paymenttype WHERE name = 'Daily'), 8,   CURRENT_TIMESTAMP, (SELECT id FROM students WHERE name = 'Anna'));
INSERT INTO mark(student_id, subject_id, mark) VALUES ((SELECT id FROM students WHERE name = 'Chris'), (SELECT id FROM students WHERE name = 'Art'), 8), ((SELECT id FROM students WHERE name = 'Oliver'), (SELECT id FROM students WHERE name = 'History'), 5), ((SELECT id FROM students WHERE name = 'James'  ), (SELECT id FROM students WHERE name = 'Geography'), 9), ((SELECT id FROM students WHERE name = 'Jacob'), (SELECT id FROM students WHERE name = 'Math'), 4), ((SELECT id FROM students WHERE name = 'Logan'), (SELECT id FROM students WHERE name = 'PE'), 9), ((SELECT id FROM students WHERE name = 'Lucas'), (SELECT id FROM students WHERE name = 'IT'), 7), ((SELECT id FROM students WHERE name = 'Anna'), (SELECT id FROM students WHERE name = 'Politic'), 7);