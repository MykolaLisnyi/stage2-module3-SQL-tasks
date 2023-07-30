INSERT INTO students(name, birthday, groupnumber)
VALUES
    (“John”,   "2005-05-12", 1),
    (“Chris”,  "2005-01-01", 1),
    (“Carl”,   "2004-11-29", 1),
    (“Oliver”, "2004-07-02", 2),
    (“James”,  "2004-10-20", 2),
    (“Lucas”,  "2003-04-09", 2),
    (“Henry”,  "2003-05-07", 2),
    (“Jacob”,  "2002-03-17", 3),
    (“Logan”,  "2001-08-27", 3),
    (“Mykola”, "2000-08-21", 4),
    (“Ivan”,   "2001-08-20", 4),
    (“Maria”,  "2000-07-27", 5),
    (“Anna”,   "2001-09-29", 5);

INSERT INTO subjects(name, grade)
VALUES
    ("Art", 1),
    ("Music", 1),
    ("Geography", 2),
    ("History", 2),
    ("PE", 3),
    ("Math", 3),
    ("Science", 4),
    ("IT", 4),
    ("Mechanic", 5),
    ("Politic", 5);

INSERT INTO paymenttype(name)
VALUES
    ("DAILY"),
    ("WEEKLY"),
    ("MONTHLY");

INSERT INTO payment(type_id, amount, payment_date, student_id)
VALUES
    ((SELECT id FROM paymenttype WHERE name = "Weekly"  LIMIT 1), 100, CURRENT_TIMESTAMP, (SELECT id FROM students WHERE name = "John"   LIMIT 1)),
    ((SELECT id FROM paymenttype WHERE name = "Monthly" LIMIT 1), 445, CURRENT_TIMESTAMP, (SELECT id FROM students WHERE name = "Oliver" LIMIT 1)),
    ((SELECT id FROM paymenttype WHERE name = "Weekly"  LIMIT 1), 80,  CURRENT_TIMESTAMP, (SELECT id FROM students WHERE name = "Henry"  LIMIT 1)),
    ((SELECT id FROM paymenttype WHERE name = "Daily"   LIMIT 1), 9,   CURRENT_TIMESTAMP, (SELECT id FROM students WHERE name = "James"  LIMIT 1)),
    ((SELECT id FROM paymenttype WHERE name = "Daily"   LIMIT 1), 8,   CURRENT_TIMESTAMP, (SELECT id FROM students WHERE name = "Anna"   LIMIT 1));

INSERT INTO mark(student_id, subject_id, mark)
VALUES
    ((SELECT id FROM students WHERE name = "Chris"  LIMIT 1), (SELECT id FROM students WHERE name = "Art"       LIMIT 1), 8),
    ((SELECT id FROM students WHERE name = "Oliver" LIMIT 1), (SELECT id FROM students WHERE name = "History"   LIMIT 1), 5),
    ((SELECT id FROM students WHERE name = "James"  LIMIT 1), (SELECT id FROM students WHERE name = "Geography" LIMIT 1), 9),
    ((SELECT id FROM students WHERE name = "Jacob"  LIMIT 1), (SELECT id FROM students WHERE name = "Math"      LIMIT 1), 4),
    ((SELECT id FROM students WHERE name = "Logan"  LIMIT 1), (SELECT id FROM students WHERE name = "PE"        LIMIT 1), 9),
    ((SELECT id FROM students WHERE name = "Lucas"  LIMIT 1), (SELECT id FROM students WHERE name = "IT"        LIMIT 1), 7),
    ((SELECT id FROM students WHERE name = "Anna"   LIMIT 1), (SELECT id FROM students WHERE name = "Politic"   LIMIT 1), 7);