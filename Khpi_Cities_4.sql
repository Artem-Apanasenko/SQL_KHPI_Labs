# LAB4
SELECT UPPER(name) 
FROM cities 
ORDER BY name 
LIMIT 5 OFFSET 5   

SELECT name, CHAR_LENGTH(name) as len
FROM cities
WHERE CHAR_LENGTH(name) NOT BETWEEN 8 AND 10

SELECT SUM(population), region
FROM cities
WHERE region IN ('S','C')
GROUP BY region

SELECT AVG(population), region
FROM cities
WHERE region ='W'

SELECT COUNT(name), region
FROM cities
WHERE region ='E'