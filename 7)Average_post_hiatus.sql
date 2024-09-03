SELECT user_id,
       DATEDIFF(MAX(post_date), MIN(post_date)) AS days_between_posts
FROM posts
WHERE YEAR(post_date) = 2021
GROUP BY user_id
HAVING COUNT(post_id) > 1;





SELECT
    user_id,
    DATEDIFF(
        MAX(STR_TO_DATE(post_date, '%Y/%m/%d')),
        MIN(STR_TO_DATE(post_date, '%Y/%m/%d'))
    ) AS days_between_posts
FROM posts
WHERE STR_TO_DATE(post_date, '%Y/%m/%d') BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY user_id
HAVING COUNT(post_id) > 1;
