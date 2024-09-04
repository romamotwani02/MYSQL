--q=>https://datalemur.com/questions/sql-avg-review-ratings
SELECT 
    MONTH(submit_date) AS mth,
    product_id,
    ROUND(AVG(stars), 2) AS avg_stars
FROM 
    reviews
GROUP BY 
    product_id, 
    MONTH(submit_date)
ORDER BY 
    mth, 
    product_id;
