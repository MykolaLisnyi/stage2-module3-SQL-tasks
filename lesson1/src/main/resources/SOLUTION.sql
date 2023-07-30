CREATE TABLE student(id INT PRIMARY KEY, name VARCHAR, birthday DATE, groupnumber INT);
CREATE TABLE subject(id INT PRIMARY KEY, name VARCHAR, description VARCHAR, grade INT);
CREATE TABLE paymentType(id INT PRIMARY KEY, name VARCHAR);
CREATE TABLE payment(id INT PRIMARY KEY, type_id INT, amount DECIMAL, student_id INT, payment_date DATETIME, FOREIGN KEY (type_id) REFERENCES paymentType(type_id), FOREIGN KEY (student_id) REFERENCES student(student_id));
CREATE TABLE mark(id INT PRIMARY KEY, student_id INT, subject_id INT, mark INT, FOREIGN KEY (student_id) REFERENCES student(student_id), FOREIGN KEY (subject_id) REFERENCES subject(subject_id));