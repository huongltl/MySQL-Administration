USE thriftshop;


-- Stored procedures

#Delete the procedure if available
DROP PROCEDURE IF EXISTS sp_selectInventory;

#Changing the delimiter 
DELIMITER //

CREATE PROCEDURE sp_selectInventory()
BEGIN
	SELECT * FROM inventory;
END //

#Changing the delimiter back to the default
DELIMITER ;

#Call the procedure that we have created
CALL sp_selectInventory();


USE sloppyjoes;


-- Stored procedures

#Delete the procedure if available
DROP PROCEDURE IF EXISTS sp_selectCount;

#Changing the delimiter 
DELIMITER //

CREATE PROCEDURE sp_selectCount()
BEGIN
SELECT 
	staff_id,
	COUNT(order_id) AS orders_served
FROM customer_orders 
GROUP BY staff_id;
END //

#Changing the delimiter back to the default
DELIMITER ;


#Call the procedure that we have created
CALL sp_selectCount();



