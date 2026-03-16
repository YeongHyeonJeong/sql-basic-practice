-- HackerRank SQL Practice

-- problem: Query the two cities in STATION with the shortest and longest CITY names
-- Link: https://www.hackerrank.com/challenges/weather-observation-station-5/problem


-- My Answer
(SELECT CITY,LENGTH(CITY) 
FROM STATION 
ORDER BY LENGTH(CITY),
        CITY 
LIMIT 1) 

UNION

(SELECT CITY,LENGTH(CITY) 
FROM STATION
ORDER BY LENGTH(CITY) DESC,
         CITY
LIMIT 1);

-- Note 
-- mysql에서 top()을 사용할 수 없어서 limit 사용