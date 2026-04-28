-- HackerRank SQL Practice

-- problem: maximum total earnings to be the maximum total earnings
-- Link: https://www.hackerrank.com/challenges/earnings-of-employees/problem

-- My Answer

SELECT 
     MAX(EARNINGS),
     COUNT(*)
FROM (
     SELECT MONTHS*SALARY AS EARNINGS
      FROM EMPLOYEE
)T
WHERE EARNINGS = (
    SELECT MAX(MONTHS*SALARY)
    FROM EMPLOYEE
);

-- Note 
MAX()와 COUNT()는 함께 사용할 수 있지만 
COUNT(MAX())처럼 중첩 집계는 불가능하다.
최댓값의 개수는 WHERE로 필터링 후 COUNT로 구한다