--question>https://datalemur.com/questions/completed-trades
SELECT city,count(order_id) as total_orders
FROM trades
join users
ON
trades.user_id=users.user_id
where status='Completed'
group by city
order by total_orders desc
limit 3
