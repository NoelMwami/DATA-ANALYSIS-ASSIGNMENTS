--Section B: Number Functions  (using: Nairobi_academy) 
--Name: Noel
--Date:19/04/2026
 
--Q1:Write a query to show each exam result alongside the mark rounded to 1 decimal place, the mark rounded UP to the nearest 10 using CEIL, and the mark rounded DOWN using FLOOR.

SELECT marks,
    ROUND(marks, 1) AS rounded_1dp,
    CEIL(marks / 10.0) * 10 AS rounded_up_10,
    FLOOR(marks) AS rounded_down
FROM exam_results;


--Q2:Write a query to calculate the following summary statistics for exam_results in one query: total number of results (COUNT), average mark (AVG rounded to 2 decimal places), highest mark (MAX), lowest mark (MIN), and total marks added together (SUM)
select count(*) as total_results,
Round(avg(marks), 2) as AVG_Mark,
MAX(marks) as highest_mark,
MIN(marks) as lowest_mark,
SUM(marks) as total_mark
From exam_results;

--Q3):The school wants to apply a 10% bonus to all marks. Write a query to show each result_id, the original marks, and the new boosted_mark rounded to the nearest whole number.
select marks as original_mark,
Round(marks * 1.1) as boosted_mark
from exam_results;

