with cte as (
select user_id,count(tweet_id) as tweets_2022_count
from tweets
 WHERE tweet_date BETWEEN '2022-01-01' 
    AND '2022-12-31'
group by user_id
)
SELECT tweets_2022_count as tweet_bucket, count(user_id) as users_num FROM cte
group by tweets_2022_count
