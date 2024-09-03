with cte1 as
(select company_id,title,description,
count(job_id) as job_count
from job_listings
group by company_id,title,description
)
select count(distinct company_id)
from cte1
where job_count>1

--https://datalemur.com/questions/duplicate-job-listings
