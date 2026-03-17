-- HackerRank SQL Practice

-- problem: Query the list of CITY names first and last with vowels (i.e., a, e, i, o, or u)
-- Your result cannot contain duplicates.
-- Link: https://www.hackerrank.com/challenges/weather-observation-station-8/problem


-- My Answer

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '^[aeiou]'
and CITY REGEXP '[aeiou]$';

-- Answer

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';


-- Note 
^ 시작 
$ 끝 
.* 중간 
문자열을 넣지 않으면 아무거나 허용한다.
