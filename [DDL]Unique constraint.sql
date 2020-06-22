USE thriftshop;

-- Unique constraint
-- 同じ値を登録できないような項目を設定する為

#UQ set up
ALTER TABLE `thriftshop`.`inventory` 
ADD UNIQUE INDEX `item_name_UNIQUE` (`item_name` ASC) VISIBLE;

#UQ delete
ALTER TABLE `thriftshop`.`inventory`
DROP INDEX `item_name_UNIQUE`;

-- Examp
#Ok
INSERT INTO inventory 
VALUE (10, "value 1", 2);
#Error
INSERT INTO inventory
VALUE (11, "value 1", 2);
#Ok
INSERT INTO inventory
VALUE (11, "value 2", 2);
