-- HackerRank SQL Practice

-- problem: Query CITY names from STATION where  ID is even. 
-- exclude duplicates from the answer.

-- Link: https://www.hackerrank.com/challenges/weather-observation-station-3/problem

-- My Answer
SELECT DISTINCT CITY 
FROM STATION
 WHERE MOD(ID, 2) = 0;

-- Note 
-- MOD(ID, 2) = 0 을 사용해 ID가 짝수인 행만 조회한다