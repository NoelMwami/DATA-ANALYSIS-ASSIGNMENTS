--Section C: Date and Time Functions  (using: Nairobi_academy) 
--Name: Noel
--Date:19/04/2026
--Q1:Write a query to extract the birth year, birth month, and birth day from each student's date_of_birth as three separate columns. Show first_name alongside them.

select date_of_birth, 
extract(year from date_of_birth)as birth_year,
extract(month from date_of_birth) as birth_month,
extract(day from date_of_birth) as birth_day
from students;


--Q2:Write a query to show each student's full name, their date_of_birth, and their age in complete years. Order from oldest to youngest.

select first_name|| ' ' || last_name as _Full_name,
Date_of_birth,
Age(current_date,date_of_birth) as Age
from students
order by Age DESC;

--Q3:Write a query to display each exam date in this exact format: 'Friday, 15th March 2024'.. Call the column formatted_date.
select * from exam_results;

select to_char(exam_date, ' Day, DDth Month YYYY') as formatted_date
from exam_results;

