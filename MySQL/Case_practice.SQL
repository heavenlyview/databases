SELECT CategoryID, (
	CASE WHEN Price < 30 THEN '잇 쏘 저렴'
	WHEN Price > 60 THEN '잇 쏘 비쌈'
	ELSE '잇 쏘 적당'
	END) AS Price 
FROM Products
WHERE CategoryID IN (3, 6)
ORDER BY SupplierID
;

        