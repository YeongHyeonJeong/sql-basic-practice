-- HackerRank SQL Practice

-- problem: Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u)
-- Your result cannot contain duplicates.
-- Link: https://www.hackerrank.com/challenges/weather-observation-station-6/problem


-- first

SELECT DISTINCT CITY
FROM STATION 
WHERE CITY LIKE 'a%' OR  'e%' OR 'i%' OR 'o%'OR 'u%';

-- Answer

SELECT DISTINCT CITY
FROM STATION 
WHERE CITY LIKE 'a%' 
   OR CITY like 'e%'
   OR CITY like 'i%'
   OR CITY like 'o%'
   OR CITY like 'u%';

-- Note 
-- 컬럼마다 각각의 조건을 제시해줘야 한다. 
