use administration;

select * from stringdata;

select @@autocommit; # auto commit

# 0 or 1 ON or OFF
set autocommit = 1;

delete from stringdata where key_id=15; 
rollback;
#if autocommit = 0;
commit; 