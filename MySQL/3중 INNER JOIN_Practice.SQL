SELECT Orders.OrderID
		, Customers.CustomerName
		, Shippers.ShipperName
        , Products.ProductName
FROM (
		(
        	(
        		(Orders INNER JOIN Customers 
         				ON Orders.CustomerID = Customers.CustomerID) INNER JOIN Shippers 
         											  		 	 	 ON Orders.ShipperID = Shippers.ShipperID) INNER JOIN OrderDetails
                                                                 										   	   ON Orders.OrderID = OrderDetails.OrderID)
                                                                                                           												INNER JOIN Products
                                                                                                                                                    	ON OrderDetails.ProductID = Products.ProductID)
                                                                 													                                                             									                                                                                   
;

        