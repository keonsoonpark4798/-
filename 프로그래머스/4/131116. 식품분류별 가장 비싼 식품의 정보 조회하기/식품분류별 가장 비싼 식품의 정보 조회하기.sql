-- 코드를 입력하세요
SELECT CATEGORY, PRICE, PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE ((CATEGORY, PRICE) IN (SELECT CATEGORY, MAX(PRICE)
                                  FROM FOOD_PRODUCT
                                  GROUP BY CATEGORY)) AND 
                                  (CATEGORY LIKE "%과자%" OR 
                                   CATEGORY LIKE "%국%" OR CATEGORY LIKE "%김치%" OR
                                   CATEGORY LIKE "%식용유%")
ORDER BY PRICE DESC;