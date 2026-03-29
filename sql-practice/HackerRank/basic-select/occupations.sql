-- HackerRank SQL Practice

-- problem: Pivot the Occupation column in OCCUPATIONS
-- Link: https://www.hackerrank.com/challenges/occupations/problem


-- My Answer

SELECT 
    MAX(CASE WHEN OCCUPATION = 'Doctor' THEN NAME END) AS Doctor,
    MAX(CASE WHEN OCCUPATION = 'Professor' THEN NAME END) AS Professor,
    MAX(CASE WHEN OCCUPATION = 'Singer' THEN NAME END) AS Singer,
    MAX(CASE WHEN OCCUPATION = 'Actor' THEN NAME END) AS Actor
FROM (
    SELECT 
      NAME,
      OCCUPATION,
      ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) as RN
    FROM OCCUPATIONS
    ) t
GROUP BY RN
ORDER BY RN;

-- Note 
서브 쿼리하는 이유 :
 ROW_NUMBER는 계산된 값이기 때문에 그 값을 기준으로 GROUP BY하려면 미리 만들어져야 한다. 
CASE WHEN 은 값을 나누고, GROUP BY는 행을 묶는다.
MAX는 여러 값을 하나로 줄이기 위해 사용.