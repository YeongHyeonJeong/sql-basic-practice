--Problem: Olivander's Inventory
--Concept: 같은 그룹 최솟값 찾기
--Rink: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem

--My Anwser:

SELECT W.id,Wp.age,W.coins_needed,W.power
FROM Wands W
JOIN Wands_Property WP
ON W.code=WP.code
WHERE WP.is_evil=0 AND
      coins_needed=(
        SELECT MIN(coins_needed)
        FROM Wands W2
        JOIN Wands_Property WP2
        ON W2.code=WP2.code
        WHERE W2.power=W.power AND WP.age=WP2.age
      )
ORDER BY power DESC, age DESC;

--Note:
1.상관 서브쿼리는 바깥 쿼리의 현재 행 값을 서브쿼리 내부에서 비교가능.
2.같은 그룹(power,age) 안에서 최솟값(min)을 찾을 때 사용 가능(group by안써도 가능)
3.테이블을 여러 번 쓸 경우 alias 나눠서 구분