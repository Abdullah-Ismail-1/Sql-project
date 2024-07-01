/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely.
- Focuses on job postings withe specified salaries (remove nulls).
- Why? Highlight the top-paying opportunities for Data Analyst, offered insights into employees
*/
SELECT 
	job_id,
	job_title,
	job_location,
	job_schedule_type,
	salary_year_avg,
	job_posted_date,
	name AS company_name
FROM 
    job_postings_fact AS jp_fact
LEFT JOIN company_dim AS c_dim
	ON jp_fact.company_id = c_dim.company_id
WHERE job_title_short = 'Data Analyst'
AND job_location = 'Anywhere'
AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10
