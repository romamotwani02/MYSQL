SELECT candidate_id FROM candidates
where skill in ('Python','Tableau','PostgreSQL')
group by candidate_id
having count(skill)=3
order by candidate_id asc
