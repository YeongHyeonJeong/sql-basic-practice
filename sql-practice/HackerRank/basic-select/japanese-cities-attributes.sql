-- HackerRank SQL Practice

-- problem: Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
-- Link: https://www.hackerrank.com/challenges/japanese-cities-attributes/problem

-- My Answer

SELECT * 
FROM CITY
WHERE countrycode='JPN';

-- Note 
-- 문자형식일 때는 ''로 문자취급을 한다.