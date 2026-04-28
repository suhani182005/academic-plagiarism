CREATE DATABASE acadshield;
USE acadshield;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE submissions (
    submission_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    file_name VARCHAR(100),
    submission_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

CREATE TABLE reports (
    report_id INT PRIMARY KEY AUTO_INCREMENT,
    submission_id INT,
    similarity INT,
    status VARCHAR(20),
    checked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (submission_id) REFERENCES submissions(submission_id)
);
