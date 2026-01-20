--- 📄practice.sal
--- sql파일에는 실행 가능한 쿼리만 넣을 것.
---FROM, WHERE, GROUP BY, HAVING, SELECT, ORDER BY, LIMIT/OFFSET
---흐름대로 조건채워가면서 사용할 것. 작성한 순서대로 진행되지 않음.


---데이터확인하기
-PRAGMA 데이터가 아닌 DB구조 정보, 10개의 데이터만 보게끔
PRAGMA TABLE_info(sales);
SELECT*FROM sales LIMIT 10;

---상품별 총 판매수량 
SELECT 
   name,
   SUM(sales) AS total_sales
FROM sales
GROUP BY name;

---가격이 4000원 이상인 상품만 집계
SELECT
   name,
   SUM(sales) AS total_sales
FROM sales
WHERE price >= 4000
GROUP BY name;

---상품별 총 매출이 30000원 이상인 상품
SELECT
   name,
   SUM(price*sales) AS total_revenue
FROM sales
GROUP BY name
HAVING SUM(price*sales) >= 30000;

---매출 기준 TOP3 상품
SELECT
   name,
   SUM(price*sales) AS total_revenue
FROM sales
GROUP BY name
ORDER BY total_revenue DESC
LIMIT 3;
--DESC 내림차순 /ASC 오름차순