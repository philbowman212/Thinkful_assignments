--#1
SELECT DISTINCT country
FROM ksprojects;
--#2
SELECT COUNT(DISTINCT main_category) AS main_count, COUNT(DISTINCT category) AS cat_count
FROM ksprojects;
--#3
SELECT DISTINCT main_category, category
FROM ksprojects
ORDER BY main_category;
--#4
SELECT main_category, COUNT(DISTINCT category) AS dist_cat_count
FROM ksprojects
GROUP BY main_category;
--#5
SELECT main_category, ROUND(AVG(backers),0) AS avg_backers
FROM ksprojects
GROUP BY main_category
ORDER BY avg_backers DESC;
--#6
SELECT category, COUNT(*) AS no_successes, AVG(pledged - goal) AS avg_diff
FROM ksprojects
WHERE state = 'successful'
GROUP BY category;
--#7
SELECT main_category, COUNT(*) AS zero_backers, MAX(goal) AS max_goal
FROM ksprojects
WHERE backers = 0
GROUP BY main_category;
--#8
SELECT category, AVG(usd_pledged/NULLIF(backers, 0)) AS avg_per_backer
FROM ksprojects
GROUP BY category
HAVING AVG(usd_pledged/NULLIF(backers, 0)) < 50
ORDER BY avg_per_backer DESC;
--#9
SELECT main_category, COUNT(*) AS backers_5_10
FROM ksprojects
WHERE backers BETWEEN 5 AND 10
AND state = 'successful'
GROUP BY main_category;
--#10
SELECT currency, SUM(pledged) as total_pledged
FROM ksprojects
GROUP BY currency
ORDER BY total_pledged DESC;
--#11
SELECT main_category, SUM(backers)
FROM ksprojects
WHERE main_category NOT IN('Games', 'Technology')
AND state = 'successful'
GROUP BY main_category
HAVING SUM(backers) > 100000
ORDER BY main_category;