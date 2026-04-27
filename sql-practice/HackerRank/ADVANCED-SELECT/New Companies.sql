-- HackerRank SQL Practice

-- problem: new companies
-- Link: https://www.hackerrank.com/challenges/the-company/problem


-- My Answer

SELECT 
      C.COMPANY_CODE,
      C.FOUNDER,
      COUNT(DISTINCT LM.lead_manager_code),
      COUNT(DISTINCT SM.senior_manager_code),
      COUNT(DISTINCT M.manager_code),
      COUNT(DISTINCT E.employee_code)
FROM COMPANY C
LEFT JOIN lead_manager LM 
     ON C.COMPANY_CODE = LM.COMPANY_CODE
LEFT JOIN senior_manager SM 
     ON LM.lead_manager_code = SM.lead_manager_code
LEFT JOIN manager M 
     ON SM.senior_manager_code = M.senior_manager_code
LEFT JOIN employee E 
     ON M.manager_code = E.manager_code
GROUP BY COMPANY_CODE,FOUNDER
ORDER BY COMPANY_CODE


-- Note 
join으로 데이터가 늘어나서 count(distinct)로 중복 제거 필요