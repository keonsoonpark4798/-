-- 코드를 입력하세요
SELECT year(t1.SALES_DATE) AS YEAR, month(t1.SALES_DATE) AS MONTH,t2.GENDER,COUNT(distinct(t1.USER_ID)) AS USERS
FROM ONLINE_SALE t1 JOIN USER_INFO t2 ON t1.USER_ID = t2.USER_ID
WHERE GENDER IS NOT NULL
GROUP BY YEAR, MONTH,t2.GENDER
ORDER BY YEAR, MONTH, t2.GENDER