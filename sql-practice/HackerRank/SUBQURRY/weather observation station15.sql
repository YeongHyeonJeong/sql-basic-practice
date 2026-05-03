--Problem: Weather Observation Station15
--Concept: SUBQUERY+MAX(AGGREGATE)

--My Anwser

SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N=(
    SELECT MAX(LAT_N)
    FROM STATION
    WHERE LAT_N<137.2345
)
;

--Note: 집계(MAX)전에 WHERE 조건 먼저 적용