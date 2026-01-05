WITH rol1 AS (
SELECT ageGroup , avg(DailyRate) AS avg_ratings,
NTILE(2)OVER(ORDER BY avg(DailyRate) desc) AS ranks
FROM hranalytics
 GROUP BY AgeGroup
),
 rol2 AS (SELECT ranks,ageGroup,avg_ratings,
 CASE WHEN avg_ratings <= 500  THEN 'low spenders'
    WHEN avg_ratings BETWEEN 700 AND 800 THEN 'average spenders'
    ELSE 'high spenders' END AS  cluster
    
    FROM rol1)
    SELECT * 
    FROM rol2
 
