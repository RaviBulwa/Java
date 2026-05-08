SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;
select @@tx_isolation 
alter table students engine=innodb 

#T2 EFG
begin;
select * from students;
#(F) 
update students set 
student_name='ZZ1' where student_id=1;
rollback;



#T1 BCD
begin;
select * from students;
#(C)
select * from students; 
#(D)
select * from students;
rollback;




#T1 A
#BEGIN;
#select * from students;
#rollback;
