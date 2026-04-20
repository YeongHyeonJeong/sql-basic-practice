-- HackerRank SQL Practice

-- problem: The Blunder(average salary error
-- Link: https://www.hackerrank.com/challenges/the-blunder/problem


-- My Answer

SELECT CEIL(
    AVG(SALARY) - AVG(
        CAST(NULLIF(REPLACE(SALARY, '0', ''), '') AS UNSIGNED)
    )
)
FROM EMPLOYEES;

-- Note 
문자열 함수 사용으로 연산불가 -> CAST사용
0제거시 빈 문자열 발생 가능->
MYSQL에서 CAST(AS INT) 불가
CAST(AS SIGNED/UNSIGNED)사용