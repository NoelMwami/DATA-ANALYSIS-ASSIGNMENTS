create schema nairobi_academy;

set search_path = nairobi_academy;

create table students(
 	student_id INT primary key,
 	first_name VARCHAR(100) not null,
 	last_name VARCHAR (100) not null,
 	gender VARCHAR(100) ,
 	date_of_birth DATE ,
 	class VARCHAR(10) ,
 	city VARCHAR(50)
 );

create table subjects (
 	subject_id INT primary key,
 	Subject_name VARCHAR(100) not null unique,
 	department VARCHAR (50),
 	teacher_name VARCHAR(100) ,
 	credit INT
 );

create table exam_results(
	results_id INT primary key,
	student_id INT not null,
	subject_id INT not null,
	marks INT not null,
	exam_date DATE,
	grade VARCHAR (2)
	);
select * from students;

alter table students
add column phone_number VARCHAR(20);


alter table subjects
rename column credit to credit_hours;

alter table students
drop column phone_number;

INSERT INTO students (student_id, first_name, last_name, gender, date_of_birth, class, city)
VALUES
    (1, 'Amina', 'Wanjiku', 'F', '2008-03-12', 'Form 3', 'Nairobi'),

INSERT INTO students 
VALUES 
	(2, 'Brian', 'Ochiengalter', 'M', '2007-07-25', 'Form 4', 'Mombasa');
INSERT INTO students 
VALUES 
    (3, 'Cynthia', 'Mutua', 'F', '2008-11-05', 'Form 3', 'Kisumu'),
    (4, 'David', 'Kamau', 'M', '2007-02-18', 'Form 4', 'Nairobi'),
    (5, 'Esther', 'Akinyi', 'F', '2009-06-30', 'Form 2', 'Nakuru'),
    (6, 'Felix', 'Otieno', 'M', '2009-09-14', 'Form 2', 'Eldoret'),
    (7, 'Grace', 'Mwangi', 'F', '2008-01-22', 'Form 3', 'Nairobi'),
    (8, 'Hassan', 'Abdi', 'M', '2007-04-09', 'Form 4', 'Mombasa'),
    (9, 'Ivy', 'Chebet', 'F', '2009-12-01', 'Form 2', 'Nakuru'),
    (10, 'James', 'Kariuki', 'M', '2008-08-17', 'Form 3', 'Nairobi');

select *from subjects

INSERT INTO subjects (subject_id, subject_name, department, teacher_name, credit_hours)
VALUES
    (1, 'Mathematics', 'Sciences', 'Mr.Njoroge', 4),
    (2, 'English', 'Languages', 'Ms.Adhiambo', 3),
    (3, 'Biology', 'Sciences', 'Ms.Otieno', 4),
    (4, 'History', 'Humanities', 'Mr.Waweru',3),
    (5, 'Kiswahili', 'Languages', 'Ms.Nduta', 3),
    (6, 'Physics', 'Sciences', 'Mr.Kamande', 4),
    (7, 'Georgraphy', 'Humanities', 'Ms.Chebet', 3),
    (8, 'Chemistry', 'Sciences', 'Ms.Muthoni',4),
    (9, 'Computer studies', 'Sciences', 'Mr.Oduya', 3),
    (10, 'Business studies', 'Humanities', 'Ms.Wangari', 3);

select *from exam_results


INSERT INTO exam_results (results_id, student_id, subject_id, marks, exam_date, grade)
values
	(1, 1, 1, 78, '2024-03-15', 'B'),
	(2, 1, 2, 85, '2024-03-16', 'A'),
	(3, 2, 1, 92, '2024-03-15', 'A'),
	(4, 2, 3, 55, '2024-03-17', 'C'),
	(5, 3, 2, 49, '2024-03-16', 'D'),
	(6, 3, 4, 71, '2024-03-18', 'B'),
	(7, 4, 1, 88, '2024-03-15', 'A'),
	(8, 4, 6, 63, '2024-03-19', 'C'),
	(9, 5, 5, 39, '2024-03-20', 'F'),
	(10, 6, 9, 95, '2024-03-21', 'A');
		
select *from exam_results

select *from subjects

select *from students

UPDATE students
SET city = 'Nairobi'
WHERE student_id = 5;

UPDATE exam_results
SET marks = 59
WHERE results_id = 5;

DELETE FROM exam_results
WHERE results_id = 9;

SELECT *
FROM students
WHERE class = 'Form 4';

SELECT *
FROM subjects
WHERE department = 'Sciences';

SELECT *
FROM exam_results
WHERE MARKS >= 70

select *
from students
where gender = 'F'

select *
from STUDENTS
where class = 'Form 3' and city = 'Nairobi'


select *
from STUDENTS
where class = 'Form 2' or class ='Form 4'

SELECT *
FROM exam_results
WHERE MARKS >= 50 and marks <= 80

SELECT *
FROM exam_results
WHERE exam_date >= '2024-03-15' and exam_date <= '2024-03-18'

SELECT *
FROM students
WHERE city IN ('Nairobi', 'Mombasa', 'Kisumu');


select *
from STUDENTS
where class not in ('Form 2','Form 3');

SELECT *
FROM students
WHERE first_name LIKE 'A%'OR first_name LIKE 'E%';

SELECT *
FROM subjects
WHERE subject_name LIKE '%studies%';

SELECT COUNT(*) AS form3_students
FROM students
WHERE class = 'Form 3';

SELECT COUNT(*) AS high_scores
FROM exam_results
WHERE marks >= 70;

SELECT *,
       CASE 
           WHEN marks >= 80 THEN 'Distinction'
           WHEN marks >= 60 THEN 'Merit'
           WHEN marks >= 40 THEN 'Pass'
           ELSE 'Fail'
       END AS performance
FROM exam_results;

SELECT *,
       CASE 
           WHEN class IN ('Form 3', 'Form 4') THEN 'Senior'
           WHEN class IN ('Form 1', 'Form 2') THEN 'Junior'
       END AS student_level
FROM students;








   


