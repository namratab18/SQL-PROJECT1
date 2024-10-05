DELIMITER $$

CREATE PROCEDURE CreateOrder (
    IN p_CustomerID INT,
    IN p_ProductID INT,
    IN p_Quantity INT
)
BEGIN
    DECLARE v_OrderID INT;
    
    -- Insert into Orders table
    INSERT INTO Orders (CustomerID, OrderDate)
    VALUES (p_CustomerID, CURDATE());
    
    -- Get the last inserted OrderID
    SET v_OrderID = LAST_INSERT_ID();
    
    -- Insert into OrderDetails table
    INSERT INTO OrderDetails (OrderID, ProductID, Quantity)
    VALUES (v_OrderID, p_ProductID, p_Quantity);
    
    -- Update product stock (assuming there's a Stock field in Products)
    UPDATE Products
    SET Stock = Stock - p_Quantity
    WHERE ProductID = p_ProductID;
END$$

DELIMITER ;
