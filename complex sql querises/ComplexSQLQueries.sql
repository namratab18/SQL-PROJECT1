-- Find total sales per product
SELECT Products.Name, SUM(OrderDetails.Quantity * Products.Price) AS TotalSales
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY Products.Name;

-- Find the most purchased product
SELECT Products.Name, SUM(OrderDetails.Quantity) AS TotalQuantity
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY Products.Name
ORDER BY TotalQuantity DESC
LIMIT 1;
