
--Section A: – String Functions ( using: Nairobi_academy)
--Name: Noel
--Date:19/04/2026

--Q1: Write a query to display each student's full name in UPPERCASE and their city in lowercase. Name the columns upper_name and lower_city.

select upper(CONCAT (first_name, ' ', Last_Name)) as upper_name,Lower(City)as Lower_city
from students;

--Q2:Write a query to show each student's first name and the LENGTH of their first name. Order the results from longest to shortest name.

select first_name, length(first_name)
from students
order by length desc;


--Q3:Write a query to show each subject's name and a short version - the first 4 characters of the subject name ... called short_name. Also show the full subject name length.

select subject_name, left(subject_name, 4) as short_name
from subjects;

select subject_name, substring(subject_name from 1 for 4) as short_name
from subjects;

--4:Write a query using CONCAT(||) to produce a sentence for each student in this format: 'Amina Wanjiku is in Form 3 and comes from Nairobi'. Call the column student_summary.
select concat(first_name, ' ',last_name, ' ','is in', ' ',class, ' ', 'and comes from',' ' ,city) as student_summary
from students;


select first_name|| ' ' || last_name as _Full_name
from students;

