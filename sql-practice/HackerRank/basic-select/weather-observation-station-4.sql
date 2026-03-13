-- HackerRank SQL Practice

-- problem: Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
-- Link: https://www.hackerrank.com/challenges/weather-observation-station-4/problem

-- FIRST TRY
--COUNT CITY

-- My Answer
SELECT COUNT(CITY)-COUNT(DISTINCT CITY)
FROM STATION;

-- Note 
-- COUNT 함수는 COUNT(COLUMN)형태로 사용한다.
-- COUNT(COLUMN)은 NULL값 제외
-- 중복을 제외하려면 COUNT(DISTINCT COLUMN)을 사용한다.