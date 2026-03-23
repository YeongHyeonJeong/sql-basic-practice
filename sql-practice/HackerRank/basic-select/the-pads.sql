-- HackerRank SQL Practice

-- problem: Query an alphabetically ordered list of all names in OCCUPATIONS
-- Query 'There are a total of [occupation_count] [occupation]s'
-- Link: https://www.hackerrank.com/challenges/the-pads/problem


-- My Answer

SELECT CONCAT(NAME,'(',SUBSTR(OCCUPATION,1,1),')')
FROM OCCUPATIONS
ORDER BY NAME;

SELECT CONCAT('There are a total of ',count(occupation), ' ', LOWER(occupation),'s.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(OCCUPATION)
        ,OCCUPATION;

-- Note 
MySQL에서는 SUBSTR 대신 LEFT(OCCUPATION,1)도 사용 가능
단어사이에 공백 마련하기. 
