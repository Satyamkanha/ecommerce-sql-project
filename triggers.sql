DELIMITER //

CREATE TRIGGER update_stock
AFTER INSERT ON Order_Items
FOR EACH ROW

BEGIN

UPDATE Inventory
SET stock_quantity = stock_quantity - NEW.quantity
WHERE product_id = NEW.product_id;

END //

DELIMITER ;
