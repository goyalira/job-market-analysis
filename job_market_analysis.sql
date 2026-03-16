SELECT dept,
COUNT(*) AS total_jobs
FROM jobs where dept is not null
GROUP BY dept
ORDER BY total_jobs DESC;


select Primary_City,count(*)
as total_jobs from jobs 
where Primary_City
IS NOT NULL
group by Primary_City
Order By total_jobs desc 
limit 10;


SELECT company,
ROUND(AVG(max_lpa - min_lpa),2) AS avg_salary_gap
FROM jobs
WHERE max_lpa IS NOT NULL
AND min_lpa IS NOT NULL
GROUP BY company
ORDER BY avg_salary_gap DESC
LIMIT 10;

SELECT company,
ROUND(AVG(max_lpa - min_lpa),2) AS avg_salary_gap
FROM jobs
WHERE max_lpa IS NOT NULL
AND min_lpa IS NOT NULL
GROUP BY company
ORDER BY avg_salary_gap DESC
LIMIT 10;

SELECT company,
ROUND(AVG(starRating),2) AS avg_rating
FROM jobs
WHERE starRating IS NOT NULL
GROUP BY company
HAVING COUNT(*) >= 5
ORDER BY avg_rating DESC
LIMIT 10;

SELECT posted_on,
COUNT(*) AS jobs_posted
FROM jobs
GROUP BY posted_on
ORDER BY posted_on;

SELECT 
CASE 
WHEN min_exp = 0 THEN 'Fresher'
WHEN min_exp BETWEEN 1 AND 3 THEN 'Junior'
WHEN min_exp BETWEEN 4 AND 7 THEN 'Mid'
ELSE 'Senior'
END AS experience_level,
ROUND(AVG(min_lpa),2) AS avg_salary
FROM jobs
WHERE min_lpa IS NOT NULL
GROUP BY experience_level
ORDER BY avg_salary DESC;

create view city_salary as SELECT Primary_City,
ROUND(AVG(min_lpa),2) AS avg_salary
FROM jobs
WHERE min_lpa IS NOT NULL
GROUP BY primary_city
ORDER BY avg_salary DESC;

create view company_salary as Select company,Max(Max_Lpa)
As highest_salary
From jobs Where Max_Lpa Is Not Null
group by company 
Order By highest_salary Desc 
Limit 10;

