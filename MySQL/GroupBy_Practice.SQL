-- Category ID 별로 sum, count, avg price 보기
-- 테이블은 Products
SELECT SUM(Price), COUNT(Price), AVG(Price)
FROM Products
GROUP BY CategoryID
;