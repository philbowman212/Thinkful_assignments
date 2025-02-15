--1
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'naep';

--2
SELECT *
FROM naep
LIMIT 50;

--3
SELECT state, COUNT(avg_math_4_score), AVG(avg_math_4_score), MIN(avg_math_4_score), MAX(avg_math_4_score)
FROM naep
GROUP BY state
ORDER BY state;

--4
SELECT state, COUNT(avg_math_4_score), AVG(avg_math_4_score), MIN(avg_math_4_score), MAX(avg_math_4_score)
FROM naep
GROUP BY state
HAVING MAX(avg_math_4_score) - MIN(avg_math_4_score) > 30
ORDER BY state;

--5
SELECT state AS bottom_10_states
FROM naep
WHERE year = 2000
ORDER BY avg_math_4_score
LIMIT 10;

--6
SELECT ROUND(AVG(avg_math_4_score), 2)
FROM naep
WHERE year = 2000;

--7
SELECT state AS below_average_states_y2000
FROM naep
WHERE avg_math_4_score <
(
	SELECT AVG(avg_math_4_score)
	FROM naep
	WHERE year = 2000
)
AND year = 2000;

--8
SELECT state AS scores_missing_y2000
FROM naep
WHERE year = 2000
AND avg_math_4_score IS NULL;

--9
SELECT naep.state, ROUND(avg_math_4_score, 2) AS avg_math_4_score, total_expenditure
FROM naep LEFT OUTER JOIN finance
ON naep.id = finance.id
WHERE naep.year = 2000
AND avg_math_4_score IS NOT NULL
ORDER BY total_expenditure DESC;