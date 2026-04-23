--HackerRank SQL Practice

--Problem :Given the CITY and COUNTRY tables, query the names of all the continents 
(COUNTRY.Continent) and their respective average city populations 
(CITY.Population) rounded down to the nearest integer.
--Rink : https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

--Anwser : 
SELECT COUNTRY.CONTINENT,
       FLOOR(AVG(CITY.POPULATION))
FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;

--Note : 
FLOOR는 소수점 밑으로 버리는 명령어고 ROUND는 반올림한다
JOIN은 WHERE 보다 ON 절을 사용하는 것이 가독성과 안정성 면에서 좋다