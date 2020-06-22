-- TRIGGERS
-- Triggers are a very common way to make sure
-- related tables remain in sync as they are updated over time

-- BEFORE AFTER INSERT UPDATE or DELETE

DROP TRIGGER IF EXISTS `sloppyjoes`.`customer_orders_AFTER_INSERT`;

DELIMITER $$
USE `sloppyjoes`$$
CREATE DEFINER=`root`@`localhost` TRIGGER `customer_orders_AFTER_INSERT` AFTER INSERT ON `customer_orders` FOR EACH ROW BEGIN
UPDATE staff
	SET orders_served = orders_served + 1
    WHERE staff.staff_id = NEW.staff_id;
END$$
DELIMITER ;