--Problem: Weather Observation Station20
--Concept: Meadian number
--Rink: https://www.hackerrank.com/challenges/weather-observation-station-20/problem

--My Anwser

SELECT ROUND(AVG(LAT_N), 4)
FROM (
    SELECT 
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
        COUNT(*) OVER () AS cnt
    FROM STATION
) T
WHERE rn IN ((cnt + 1) / 2, (cnt + 2) / 2);

--Note:
1.ROW_NUMBER로 순서 생성
2.COUNT(*)OVER()로 전체 개수 유지
3.중앙값은 가운데 행 선택 후 AVG()로 홀짝 동시 처리