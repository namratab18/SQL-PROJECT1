-- Insert new customer
INSERT INTO Customers (CustomerID, Name, Email, Phone)
VALUES (1, 'John Doe', 'john@example.com', '123-456-7890');

-- Select all orders for a customer
SELECT * FROM Orders WHERE CustomerID = 1;

-- Update product price
UPDATE Products SET Price = 19.99 WHERE ProductID = 101;

-- Delete customer by ID
DELETE FROM Customers WHERE CustomerID = 1;
