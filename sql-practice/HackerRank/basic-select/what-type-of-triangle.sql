-- HackerRank SQL Practice

-- problem: Qyery triangle table using its three side lengths.
-- Link: https://www.hackerrank.com/challenges/what-type-of-triangle/problem


-- My Answer

SELECT 
CASE 
     WHEN NOT (A+B>C AND B+C>A AND A+C>B) THEN 'Not A Triangle'
     WHEN A=B AND B=C THEN 'Equilateral'
     WHEN A=B OR B=C OR A=C THEN 'Isosceles'
     ELSE 'Scalene'
END
FROM TRIANGLES;

-- Note 
두 관계를 한 문장으로 나타낼 수 없음. 
A=B=C (X)