--2
SELECT namefirst, namelast, inducted
FROM people LEFT OUTER JOIN hof_inducted
ON people.playerid = hof_inducted.playerid;
--3
SELECT namefirst, namelast, birthyear, deathyear, birthcountry
FROM people JOIN hof_inducted
ON people.playerid = hof_inducted.playerid
WHERE hof_inducted.yearid = 2006 AND hof_inducted.votedby = 'Negro League';
--4
SELECT salaries.yearid, salaries.playerid, teamid, salary, category
FROM salaries JOIN hof_inducted
ON salaries.playerid = hof_inducted.playerid;
--5
SELECT salaries.playerid, salaries.yearid, teamid, lgid, salary, inducted
FROM salaries FULL OUTER JOIN hof_inducted
ON salaries.playerid = hof_inducted.playerid;
--6
SELECT DISTINCT playerid FROM hof_inducted
UNION ALL
SELECT DISTINCT playerid FROM hof_not_inducted;
--7
SELECT namelast, namefirst, SUM(salary) AS cumulative_salary
FROM people RIGHT OUTER JOIN salaries
ON people.playerid = salaries.playerid
GROUP BY namelast, namefirst;
--8
SELECT people.playerid, yearid, namefirst, namelast
FROM hof_inducted LEFT OUTER JOIN people
ON hof_inducted.playerid = people.playerid
UNION
SELECT people.playerid, yearid, namefirst, namelast
FROM hof_not_inducted LEFT OUTER JOIN people
ON hof_not_inducted.playerid = people.playerid;
--9
WITH cte AS
	(SELECT *, CONCAT(namelast, ', ', namefirst) AS namefull
	FROM hof_inducted LEFT OUTER JOIN people
	ON hof_inducted.playerid = people.playerid
	UNION ALL
	SELECT *, CONCAT(namelast, ', ', namefirst) AS namefull
	FROM hof_not_inducted LEFT OUTER JOIN people
	ON hof_not_inducted.playerid = people.playerid)
SELECT namefull, yearid, inducted
FROM cte
WHERE yearid > 1980
ORDER BY yearid, inducted DESC, namefull;
--10
WITH cte AS
	(SELECT teamid, yearid, playerid, salary
	FROM salaries
	WHERE salary IN
		(SELECT MAX(salary)
		FROM salaries
		GROUP BY yearid, teamid)
	ORDER BY salary DESC)
SELECT cte.*, namelast, namefirst
FROM cte LEFT OUTER JOIN people
ON cte.playerid = people.playerid;
--11
SELECT birthyear, deathyear, namefirst, namelast
FROM people
WHERE birthyear >
	(SELECT birthyear
	FROM people
	WHERE playerid = 'ruthba01')
ORDER BY birthyear;
--12
SELECT namefirst, namelast,
CASE
	WHEN birthcountry = 'USA' THEN 'USA'
	ELSE 'non-USA'
END AS usaborn
FROM people
ORDER BY usaborn;
--13
SELECT
AVG(CASE WHEN throws = 'R' THEN height END) AS right_height,
AVG(CASE WHEN throws = 'L' THEN height END) AS left_height
FROM people;
--14
WITH max_sal_by_team_by_year AS
	(SELECT teamid, yearid, MAX(salary) AS max_sal
	FROM salaries
	GROUP BY teamid, yearid)
SELECT teamid, AVG(max_sal) AS avg_max_sal_since_2010
FROM max_sal_by_team_by_year
WHERE yearid > 2010
GROUP BY teamid;