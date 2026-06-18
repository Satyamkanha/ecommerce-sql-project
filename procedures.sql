DELIMITER //

CREATE PROCEDURE GetCustomerOrders(
    IN cust_id INT
)
BEGIN

SELECT *
FROM Orders
WHERE customer_id = cust_id;

END //

DELIMITER ;
