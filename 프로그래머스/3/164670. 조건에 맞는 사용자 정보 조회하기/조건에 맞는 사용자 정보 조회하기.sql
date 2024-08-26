-- 코드를 입력하세요
SELECT t2.WRITER_ID,NICKNAME,CONCAT(CITY,' ',STREET_ADDRESS1,' ',STREET_ADDRESS2) AS 전체주소,
CONCAT(SUBSTR(TLNO,1,3),'-',SUBSTR(TLNO,4,4),'-',SUBSTR(TLNO,8)) AS TLNO
FROM USED_GOODS_USER t1 JOIN USED_GOODS_BOARD t2 ON t1.USER_ID = t2.WRITER_ID
GROUP BY t2.WRITER_ID
HAVING COUNT(t2.WRITER_ID)>2
ORDER BY USER_ID DESC;