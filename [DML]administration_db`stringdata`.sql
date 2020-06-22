use administration_db;

-- select
select * from stringdata;

SELECT 
	CONCAT('(', char_type, ')'), 
	CONCAT('(', varchar_type, ')') 
FROM stringdata;

-- insert
insert into stringdata (char_type, varchar_type)
value 
(' 8  ', '    varchar 8    ');


-- delete
# MySQLWorkbench → preferences → □safe
start transaction;
savepoint del1;

delete from stringdata where key_id between 10 and 22;
savepoint del2;

delete from stringdata; 

rollback to del2;
rollback to del1;


