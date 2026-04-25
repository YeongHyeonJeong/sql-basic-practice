--HackerRank SQL Practice

--Problem : https://www.hackerrank.com/challenges/the-report/problem
--점수 구간 테이블과 JOIN하여 등급을 매기고, 
등급에 따라 출력값과 정렬 기준을 다르게 처리하는 문제
--Rink : https://www.hackerrank.com/challenges/the-report/problem

--Anwser : 
SELECT 
     CASE WHEN GRADE>=8 THEN NAME ELSE NULL END,
     GRADE,
     MARKS
FROM STUDENTS
JOIN GRADES
ON MARKS BETWEEN MIN_MARK AND MAX_MARK
ORDER BY 
     GRADE DESC,
     CASE WHEN GRADE>=8 THEN NAME END,
     CASE WHEN GRADE<8 THEN MARKS END;
