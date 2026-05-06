--Problem: Weather Observation Station19
--Concept: Euclidean Distance. SQRT,POWER
--Rink: https://www.hackerrank.com/challenges/weather-observation-station-19

--My Anwser:

SELECT ROUND(SQRT(POWER(MAX(LAT_N)-MIN(LAT_N),2)+POWER(MAX(LONG_W)-MIN(LONG_W),2)),4)
FROM STATION;

--Note: 
1. SQRT 제곱근 반환
2. POWER(x,n) x의 n제곱
3. 거리계산시 SQRT(POWER(dx,2)+POWER(dy,2)) 형태
