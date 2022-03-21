create database anudip;

-- Q1 Create the following table CUSTOMER

use anudip;

create table CUSTOMER(
Cust_id varchar(5),
Fname varchar(15),
Lname varchar(15),
Area char(2),
Phone numeric(10),
DOB Date,
Payment numeric(6,2)
);

insert into CUSTOMER(Cust_id,Fname,Lname,Area,Phone,DOB,Payment) values
('A01','Ivan','Ross','SA',6125467,'1986-01-15',800.50),
('A02','Vandana','Ray','MU',5560379,'1987-12-20',1000.75),
('A03','Pramada','Jauguste','DA',4560389,'1967-07-25',500),
('A04','Basu','Navindi','BA',6125401,'1956-02-28',860),
('A05','Ravi','Shridhar','NA',null,'1989-02-15',500.50),
('A06','Rukmini','Aiyer','GH',5125274,'1987-07-23',1500.50);


-- Q2. Display the structure of the table you have created.alter

desc CUSTOMER;

-- Q3. Display the data of the created table

select * from CUSTOMER;


-- Q4. Insert a row which will accept system date.

alter table CUSTOMER add column System_Date date ;

-- Q5. Display the data in the table

select * from CUSTOMER;

-- Q6. Update the phone number of customer A02 and A04.

Set sql_safe_updates=0;
update CUSTOMER set Phone=6125634 where Cust_id='A02';
update CUSTOMER set phone=12323432 where Cust_id='A04';

-- Q7. Update the date of birt of customer A03 and A05.

update CUSTOMER set DOB='1966-07-22' where Cust_id='A03';
update CUSTOMER set DOB='1986-02-02' where Cust_id='A05';

-- Q8. Display the updated Table.alter

select * from CUSTOMER;

-- Q9. Delete 2 rows from the table for customer A01 and A05.

delete from CUSTOMER where Cust_id='A01';



-- Q10. Delete all the rows from the table

truncate table CUSTOMER;

-- Q11. Insert 5 records according to your own wish 

insert into CUSTOMER(Cust_id,Fname,Lname,Area,Phone,DOB,Payment,System_Date) values
('A11','Venus','Roster','MU',123456,'1992-12-11',1200,sysdate()),
('A12','Mercury','Galaxy','M',1233432,'1912-01-15',200,sysdate()),
('A13','Mars','Moon','MA',322131,'1955-03-19',1400,sysdate()),
('A14','Earth','Sun','E',232323,'1945-01-16',1700,sysdate()),
('A15','Jupiter','Milkyway','J',165565,'1923-10-19',2500,sysdate());

-- Q12. Update one record based on any criteria according to your own wish.

update Customer set phone=3434332 where Cust_id='A11';
update Customer set Payment=2343 where Cust_id='A14';

-- Q13. Delete any 1 record from the table based on particular criteria.

delete from Customer where Area='E';