--q)https://datalemur.com/questions/sql-ibm-db2-product-analytics
explain analyze with cte AS (SELECT e.employee_id,coalesce(count(distinct q.query_id),0) as unique_queries 
FROM employees  e
left join 
queries q
on e.employee_id=q.employee_id
and q.query_starttime >= '2023-07-01T00:00:00Z'
and q.query_starttime < '2023-10-01T00:00:00Z'
group by e.employee_id)
select unique_queries,count(employee_id) as employee_count from cte
group by unique_queries
order by unique_queries
-- observer how after left join time condititon are included in on clause only not where clause, as where clause wont return 0 unique queries.
