CREATE SCHEMA `administration_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;

-- create
#numericdata
create table numericdata (
	tinyint_type tinyint,
    smallint_type smallint,
    mediumint_type mediumint,
    int_type int,
    bigint_type bigint,
    float_type float,
    double_type double,
    decimal_type decimal
);

#stringdata
create table stringdata (
	char_type char(1),
    varchar_type varchar(55),
    tinytext_type tinytext,
    text_type text
);

#datedata
create table datedata (
	date_type date,
    datetime_type datetime,
    timestamp_type timestamp
);

-- alter
alter table numericdata 
drop column decimal_type;

alter table numericdata
add column decimal_type decimal(10,2) after bigint_type;

ALTER TABLE `administration_db`.`stringdata` 
ADD COLUMN `key` INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (`key`);
;

ALTER TABLE `administration_db`.`stringdata` 
CHANGE COLUMN `key_id` `key_id` INT NOT NULL AUTO_INCREMENT FIRST;


-- truncate
truncate table stringdata;