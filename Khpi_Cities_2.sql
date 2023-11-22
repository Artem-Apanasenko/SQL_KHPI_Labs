# LAB2

SELECT name
FROM khpi_cities.cities t
WHERE population >=1000000

SELECT region, population
FROM khpi_cities.cities t
WHERE region='W' OR region='E'
ORDER BY population DESC

SELECT region, name, population
FROM khpi_cities.cities t
WHERE population >=50000 AND region IN('S','C','N')
ORDER BY population DESC

SELECT region, name, population
FROM khpi_cities.cities t
WHERE (population>=150000 AND population<=350000) AND region IN('E','W','N')
ORDER BY name ASC
LIMIT 20

SELECT name, region, population, id
FROM khpi_cities.cities t
WHERE NOT region IN('W','E')
ORDER BY population DESC
LIMIT 10
OFFSET 10 # =LIMIT 10,10