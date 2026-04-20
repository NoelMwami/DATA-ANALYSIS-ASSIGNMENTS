--Section F: SET Operators (using both databases)
--Name: Noel
--Date:19/04/2026

--Q1.Write a UNION query to show a combined list of all unique cities 
--from the students table and the patients table. Order alphabetically.
select
	city
	from nairobi_academy.students
	union
select city
from city_hospital.patients
order by city asc;



--Q2.Write a UNION ALL query to combine all student first names 
--and all patient full names into one list. Add a second column called source that
-- says 'Student' or 'Patient' so you can tell where each name came from.

select 
	first_name as name,
	'Student' as source
from nairobi_academy.students
	union
union ALL
select
	full_name as name,
	'Patient' as source
from city_hospital.patients;

SELECT 
    first_name AS name,
    'Student' AS source
FROM nairobi_academy.students
	union
UNION ALL
SELECT 
    full_name AS name,
    'Patient' AS source
FROM city_hospital.patients;


--Q3.Write an INTERSECT query to find cities that appear in BOTH the students 
--table and the patients table - cities that are home to both students and patients.
select city
from nairobi_academy.students
	union
intersect 
select city
from city_hospital.patients;


--Q4.Write a query that combines all of the following into one result 
--using UNION ALL - student names (labelled 'Student'), patient full names (labelled 'Patient'),
-- and doctor full names (labelled 'Doctor'). Order the final result by the source label, then by name.

SELECT 
    concat(first_name,' ',last_name) AS name,
    'student' as source
from students
union all
select
    full_name AS name,
    'patient' as source
FROM city_hospital.patients
UNION ALL
SELECT 
    full_name AS name,
    'doctor' as source
FROM city_hospital.doctors
order by source, name;
