CREATE VIEW CustomerOrders AS
SELECT Customers.Name, Orders.OrderID, SUM(OrderDetails.Quantity * Products.Price) AS TotalAmount
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY Customers.Name, Orders.OrderID;
