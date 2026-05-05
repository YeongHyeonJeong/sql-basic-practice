Problem: Weather Observation Station18
Concept: aggregate min,max,abs
Rink: https://www.hackerrank.com/challenges/weather-observation-station-18/problem

My Anwser:

SELECT ROUND((ABS(c-a))+(ABS(d-b)),4)
FROM (
    SELECT MIN(LAT_N) a,
           MIN(LONG_W) b,
           MAX(LAT_N) c,
           MAX(LONG_W) d
    FROM STATION
)t
;

Note:
1. 맨해튼 거리 = 같은 축끼리 절댓값 차이의 합
2. 여러 집계함수는 GROUP BY 없으면 한 행으로 반환
3. FROM절의 서브쿼리는 alias 필수
4. SUBQURRY는 필수아님