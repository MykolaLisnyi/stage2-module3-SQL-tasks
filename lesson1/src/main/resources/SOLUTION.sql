CREATE TABLE student(
    id BIGINT,
    name VARCHAR,
    birthday DATE,
    group INT,
    PRIMARY KEY (id)
);

CREATE TABLE subject(
    id BIGINT,
    name VARCHAR,
    description VARCHAR,
    grade INT,
    PRIMARY KEY (id)
);

CREATE TABLE paymentType(
    id BIGINT,
    name VARCHAR,
    PRIMARY KEY (id)
);

CREATE TABLE payment(
    id BIGINT,
    type_id BIGINT,
    amount DECIMAL,
    student_id BIGINT,
    payment_date DATETIME,
    PRIMARY KEY (id),
    FOREIGN KEY (type_id) REFERENCES paymentType(type_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);

CREATE TABLE mark(
    id BIGINT,
    student_id BIGINT,
    subject_id BIGINT,
    mark INT,
    PRIMARY KEY (id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id)
);