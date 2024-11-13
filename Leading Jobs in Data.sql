

--Exploratory Data Analysis using Sql. 
--In this Project, i use SQL to answer 24 questions related to dataset in other to gain meaningful insight


----1. *what is the average salary for diffrent experience level.*



SELECT 
experience_level,
AVG(salary) as average_salary
FROM Jobs_in_data 
GROUP BY experience_level
ORDER BY average_salary DESC




----2. *Retrieve all job titles with salaries greater than $80,000.*

SELECT
job_title
FROM Jobs_in_data
WHERE salary > 80000
GROUP BY job_title






----3. *what is the total salary spend in each year for all job categories *

SELECT
job_category,
Work_Year,
SUM(salary) as total_salary
FROM jobs_in_data
GROUP BY Work_Year, job_category
ORDER BY Work_Year DESC, job_category 



----4. *Find the highest-paying job title.*


SELECT TOP 1
job_title,
SUM(salary) as salary
FROM Jobs_in_data
GROUP BY job_title
ORDER BY salary DESC



----5. *Calculate the total salary for jobs in the "Data Analysis" category.*


SELECT 
SUM(salary) as total_salary_of_data_analyst
FROM Jobs_in_data
WHERE job_category = 'Data Analysis'



----6. *Retrieve total number of employees residing in "United States*


SELECT
COUNT(*) as Employees_that_stays_at_United_states
FROM Jobs_in_data
WHERE employee_residence = 'United States'


----7. *Find the total number of Employees with "Entry-level" experience.*


SELECT
COUNT(*) as Employees_with_entry_level_experience
FROM Jobs_in_data
WHERE experience_level = 'Entry-level'



----8. *List companies with job offers in "Remote" work settings.*

SELECT DISTINCT
job_title
FROM Jobs_in_data
WHERE work_setting = 'Remote'


----9. *What is the average salary for jobs in the "Data Engineering" category.*


SELECT
job_category,
AVG(salary)
FROM Jobs_in_data
WHERE job_category = 'Data Engineering'
GROUP BY job_category


----10. *Find job titles with salaries between $50,000 and $70,000.*


SELECT DISTINCT
job_title,
salary
FROM jobs_in_data
ORDER BY salary

----11. *Retrieve total number of Employes that work from "Canada".*


SELECT
employee_residence,
COUNT(employee_residence) as Number_of_employees
FROM jobs_in_data
WHERE employee_residence = 'Canada'
GROUP BY employee_residence



----12. *What is the  the total number of Job title and Job Category*


SELECT DISTINCT
COUNT(job_title)as Total_Job_title,
COUNT(job_category)as Total_job_category
FROM Jobs_in_data



----13. *Find the lowest-paying job title.*


SELECT TOP 1 
job_title,
salary
FROM Jobs_in_data
ORDER BY salary


----14. *List job categories with average salaries above $100,000.*


SELECT 
job_category,
AVG(salary)as average_salary
FROM Jobs_in_data
GROUP BY job_category
HAVING AVG(salary) > 100000


----15. *Find the total number of Employees with "Senior-level" experience.*

SELECT
experience_level,
COUNT(experience_level)as number_of_Senior_level
FROM Jobs_in_data
WHERE experience_level = 'senior'
GROUP BY experience_level



----16. *Find the number of jobs in the "Bi and Visualization" category.*



SELECT 
job_category,
COUNT(job_category)number_of_jobs
FROM Jobs_in_data
WHERE job_category = 'Bi and Visualization'
GROUP job_category



----17. *What is the average salary for jobs in "Remote" work settings.*



SELECT
job_title,
AVG(salary)as average_salary
FROM Jobs_in_data
WHERE work_setting = 'Remote'
GROUP BY job_title
ORDER BY job_title


----18. *Retrieve job titles with salary between $80,000 and $120,000*


SELECT job_title,
salary
FROM Jobs_in_data
WHERE salary BETWEEN 80000 AND 120000
ORDER BY salary 



----19. *Find total number of empoyees in "in person" work settings.*

SELECT 
COUNT(*) as Employees_that_work_in_person
FROM Jobs_in_data
WHERE work_setting = 'in-person'


----20. *Determine the most common job category.*


SELECT 
job_category,
Count(job_category)as Number_of_jobs
FROM Jobs_in_data
GROUP BY job_category
ORDER BY Number_of_jobs DESC, job_category


----21. Determine the most common work setting.


SELECT 
work_setting,
Count(work_setting)as Number_of_empoyees
FROM Jobs_in_data
GROUP BY work_setting
ORDER BY Number_of_empoyees DESC, work_setting



--- 22. Calculate the average salary difference between "Senior-level" and "Mid-level" experience.



SELECT
(SELECT AVG(salary) 
	FROM Jobs_in_data 
	WHERE experience_level = 'senior') - (SELECT AVG(salary)
												FROM Jobs_in_data
												WHERE experience_level = 'mid-level')
as avg_salary_diffrence



----23. Retrieve job titles with salaries above the average salary for "Mid-level" experience.



SELECT 
job_title,
salary
FROM Jobs_in_data
WHERE salary > (SELECT
				AVG(salary)
				FROM Jobs_in_data
				WHERE experience_level = 'mid-level'
				) 
and experience_level = 'mid-level'
ORDER BY salary DESC, job_title 



----24. Retrieve total number of company that reside in a country that start with M .

SELECT
company_location,
count(company_location)as number_of_Companies_reside_in_each_country
FROM Jobs_in_data
WHERE company_location LIKE 'M%'
GROUP BY company_location


-----Here we GO>>>>>>


SELECT * FROM Jobs_in_data
