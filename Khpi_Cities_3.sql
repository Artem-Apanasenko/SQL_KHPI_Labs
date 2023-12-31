# LAB3
SELECT name
FROM cities
WHERE name LIKE '%ськ';

SELECT name
FROM cities
WHERE name LIKE '%донец%';

SELECT Concat(name, ' (', region, ')')
FROM cities
WHERE population > 100000
ORDER BY name;

SELECT name, population, population/40000000*100 AS procent
FROM cities
ORDER BY population DESC
LIMIT 10;

SELECT CONCAT(name, ' (', population/40000000*100, ')')
FROM cities
WHERE population/40000000*100 > 0.099
ORDER BY population/40000000*100 DESC;