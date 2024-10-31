Select * 
FROM employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
age,
age + 10
FROM Parks_and_Recreation.employee_demographics;

## Group By Lesson#

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;  

## Order By ##

SELECT *
FROM employee_demographics; 

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40 
;


select occupation, AVG(salary)
from employee_salary
WHERE occupation LIKE '%manager%'
group by occupation
HAVING AVG(salary) > 75000 #aggregate function
;

# Limit & Aliasing#
SELECT *
from employee_demographics
order by age DESC
LIMIT 2, 1
;



-- Aliasing
SELECT gender ,AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;
