CREATE TABLE student(id BIGINT PRIMARY KEY, name VARCHAR, birthday DATE, groupnumber INT);
CREATE TABLE subject(id BIGINT PRIMARY KEY, name VARCHAR, description VARCHAR, grade INT);
CREATE TABLE paymentType(id BIGINT PRIMARY KEY, name VARCHAR);
CREATE TABLE payment(id BIGINT PRIMARY KEY, type_id BIGINT, amount DECIMAL, student_id BIGINT, payment_date DATETIME, FOREIGN KEY (type_id) REFERENCES paymentType(type_id), FOREIGN KEY (student_id) REFERENCES student(student_id));
CREATE TABLE mark(id BIGINT PRIMARY KEY, student_id BIGINT, subject_id BIGINT, mark INT, FOREIGN KEY (student_id) REFERENCES student(student_id), FOREIGN KEY (subject_id) REFERENCES subject(subject_id));