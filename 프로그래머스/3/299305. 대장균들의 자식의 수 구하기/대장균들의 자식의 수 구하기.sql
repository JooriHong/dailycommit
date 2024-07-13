-- 코드를 작성해주세요
SELECT E1.ID AS ID, 
    IFNULL(COUNT(E2.ID), 0) AS CHILD_COUNT
FROM ECOLI_DATA E1
LEFT JOIN ECOLI_DATA E2 ON E1.ID = E2.PARENT_ID
GROUP BY E1.ID
ORDER BY 1