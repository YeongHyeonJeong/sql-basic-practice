--Problem: Top Competitors
--Concept: join - group by - having - count 흐름
--Rink: https://www.hackerrank.com/challenges/full-score/problem

--My Anwser:
SELECT 
    H.hacker_id,
    H.name
FROM Submissions S
JOIN Challenges C
    ON S.challenge_id = C.challenge_id
JOIN Difficulty D
    ON C.difficulty_level = D.difficulty_level
JOIN Hackers H
    ON S.hacker_id = H.hacker_id
WHERE S.score = D.score
GROUP BY H.hacker_id, H.name
HAVING COUNT(S.challenge_id) > 1
ORDER BY COUNT(S.challenge_id) DESC,
         H.hacker_id;

--Note:
1. JOIN은 여러 번 이어서 사용할 수 있다.
2. 중간 테이블을 통해 다른 테이블과 연결 가능