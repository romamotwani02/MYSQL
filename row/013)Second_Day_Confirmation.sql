--q)->https://datalemur.com/questions/second-day-confirmation
SELECT distinct e.user_id 
FROM emails e
join texts t 
on
e.email_id=t.email_id
where t.action_date=date_add(e.signup_date,interval 1 day)
and 
t.signup_action='Confirmed'
