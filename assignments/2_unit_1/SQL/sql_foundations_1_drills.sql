--#1
SELECT COUNT(*)
FROM vehicles; --33442
--#2
SELECT *
FROM vehicles;
--#3
SELECT id, make, model
FROM vehicles
WHERE year = 2010;
--#4
SELECT COUNT(*)
FROM vehicles
WHERE year = 2010; --1109
--#5
SELECT COUNT(*)
FROM vehicles
WHERE year BETWEEN 2010 AND 2015; --5995
--#6
SELECT COUNT(*)
FROM vehicles
WHERE year IN(1990, 2000, 2010); --3026
--#7
SELECT COUNT(*)
FROM vehicles
WHERE (year BETWEEN 1987 AND 2005)
AND (year NOT IN(1990, 2000)); --17235
--#8
SELECT year, make, model, hwy + cty / 2 AS average_mpg
FROM vehicles;
--#9
SELECT year, make, model, CONCAT(hwy, ' highway; ', cty, ' city')
FROM vehicles;
--#10
SELECT id, make, model, year
FROM vehicles
WHERE (cyl IS NULL) OR (displ IS NULL);
--#11
SELECT *
FROM vehicles
WHERE (drive = 'Rear-Wheel Drive')
AND (fuel = 'Diesel')
AND (year >= 2000)
ORDER BY year DESC, hwy DESC;
--#12
SELECT COUNT(*)
FROM vehicles
WHERE (make IN('Ford', 'Chevrolet')) AND (class IN('Compact Cars', 'Two Seaters')); --612
--#13
SELECT *
FROM vehicles
ORDER BY hwy DESC
LIMIT 10;
--#14
SELECT *
FROM vehicles
WHERE (year >= 2000) AND (model LIKE 'X%')
ORDER BY make;
SELECT *
FROM vehicles
WHERE (year >= 2000) AND (model LIKE 'x%')
ORDER BY make; --case matters (different result)
--#15
SELECT COUNT(*)
FROM vehicles
WHERE cyl IS NULL; --58
--#16
SELECT COUNT(*)
FROM vehicles
WHERE (year < 2000)
AND (hwy > 20)
AND (displ > 3); --1964
--#17
SELECT *
FROM vehicles
WHERE model LIKE '__X%';