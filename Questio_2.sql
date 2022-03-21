create database anudip;
use anudip;
-- Q1. Create table Emp1 with following stucture

create table EMP1(ID numeric(2),Name varchar(10),Basic numeric(6,2),Designation varchar(10),Age numeric(2));

-- Q2. Change the data type of the field Basic from float to integer with required size of the EMP1 table.alter

alter table EMP1
modify Basic numeric(6);

--  Q3. Change the field size of Name column of the EMP1 table from 10 to 15.

alter table EMP1
modify Name varchar(15);

-- Q4. Create another table EMP_trainee with the same structure.

create table EMP_trainee as select * from EMP1;

-- The Column ID to be renamed Emp_id in the EMP_trainee table.alter.

alter table EMP_trainee 
rename column ID to EMP_ID;

-- Q5. Insert following data in EMP 1 Table:-

/*
(1, Rohit, 6700, Manager, 24)
(2, Sunil, 6200, Engineer, 27)
(3, Payal, 6300, Engineer, 25)
(4, Kunal, 6700, Trainee, 28)
(5, Sunita, 6230, Trainee, 26)
(6, Bimal, 7000, Trainee, 25)
*/

insert into EMP1(ID,Name,Basic,Designation,Age) values
(1,'Rohit',6700,'Manager',24),
(2,'Sunil',6200,'Engineer',27),
(3,'Payal',6300,'Engineer',25),
(4,'Kunal',6700,'Trainee',28),
(5,'Sunita',6230,'Trainee',26),
(6,'Bimal',7000,'Trainee',25);

-- Q6. insert all rows with the designation 'trainee' from the EMP1 table to EMP_trainee table.

insert into EMP_trainee (select * from anudip.EMP1 where Designation='Trainee');

-- Q7. Display the stucture of both the tables.

desc EMP1;
desc EMP_trainee;

/* Q8. Add Column skills (data type-varchar and size 10) and DOJ(data type-date) to the EMP1
table and add data for the skills and DOJ columns according to your own wish.
*/

alter table EMP1 add column Skills varchar(10), add column DOJ date;

-- Q9. Change the designation of all trainee in EMP_trainee table to 'Programmer_Trainee'.

alter table EMP_trainee 
modify Designation varchar(20);

update EMP_trainee  set  Designation='Programmer_trainee' where Designation='trainee';

-- Q10. Update more than one row in one query in EMP1 Table. 

update EMP1 set Designation='Engineers' where Designation='Engineer';

-- Q11. Change the data type of ID in EMP1 table to varhcar and increase the data size to 5.

alter table EMP1
modify ID varchar(5);

-- Q12. Display both the tables EMP1 and EMP_trainee.
select * from EMP1;
select * from EMP_trainee;

-- Q13. Rename the column Age of EMP1 table to Age_in_Years.alter

alter table EMP1 
rename column Age to Age_in_Years;

-- Q14. Delete the details of all the trainee from EMP1 table.

delete from EMP1 where Designation='trainee';

-- Q15. Drop the Age column from the EMP_trainee table.
alter table EMP_trainee
drop column Age ;

-- Q16. Drop two column in one query from EMP_trainee table.

alter table EMP_trainee
drop column EMP_ID, drop column Basic;

-- Q17. Rename the table EMP to EMP_Mgr_Engr.

rename table EMP1 to EMP_Mgr_Engr;

-- Q18. Drop the table EMP_trianee.

drop table EMP_trainee;

-- Q19. truncate EMP_Mgr_Engr table.

truncate table EMP_Mgr_Engr;

-- Q20. Recover the data of EMP_Mgr_Engr.

