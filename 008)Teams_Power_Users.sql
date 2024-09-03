SELECT sender_id,count(message_id) as message_count FROM messages
where year(sent_date)="2022" and month(sent_date)="8"
group by sender_id
order by message_count DESC
limit 2;

--https://datalemur.com/questions/teams-power-users
