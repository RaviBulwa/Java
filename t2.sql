SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;
select @@tx_isolation 
alter table students engine=innodb 

#T2 EFG
begin;
#(E)
select * from students;
# (G)
update students set
student_name='ZZ2' where student_id=1;
rollback;




#T2 BCD
begin; 
#(B)
update students set
student_name='XX2' where student_id=1;
commit;

Update students set 
student_name='MARSHALL' where student_id=1; 



#T2 A
#BEGIN;
#Update students set 
#student_name='XX' where student_id=1; 
rollback;