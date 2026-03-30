--HackerRank SQL Practice

--Problem : query the sum of the populations of all cities where the CONTINENT is 'Asia'.
--CITY.CountryCode and COUNTRY.Code are matching key columns.
--Rink : https://www.hackerrank.com/challenges/asian-population/problem

--Anwser : 
SELECT SUM(CITY.POPULATION)
FROM CITY,
     COUNTRY
WHERE CITY.COUNTRYCODE = COUNTRY.CODE
      AND COUNTRY.CONTINENT = 'ASIA'

--Note : 
CITY와 COUNTRYFMF COUNTRYCODE = CODE로 조인하여 정보를 가져왔다.
INNER JOIN 과 EQUL조인이 성립된다.