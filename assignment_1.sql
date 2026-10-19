create database Assignment;
use Assignment;
show databases;
create table Employee(emp_id INT PRIMARY KEY ,emp_name VARCHAR(100), City VARCHAR(100), bdate DATE);
create table Investor(inv_no INT PRIMARY KEY, inv_name VARCHAR(100), inv_amt INT);
select * from Investor;
select * from Employee;
show tables;

desc Investor;
desc Employee;

drop table Investor;

insert into Employee values 
(101,'Ashwini Gund','Pune','2005-10-31'),
(102,'Sanika Kale','Pune','2006-03-27'),
(103,'Isha Bhagat','Pune','2005-02-26'),
(104,'Sushant Kende','Pune','2005-08-23'),
(105,'Vaishnavi Gund','Pune','2000-03-12');

Insert into Investor values
(1,'MutualFunds',20000),
(2,'MutualFunds',700650),
(3,'FixedDeposit',564340),
(4,'MutualFunds',20000),
(5,'FixedDeposits',20000);

alter table Employee add column age INT check(age<=50);
alter table Employee add column salary INT check(salary>=10000);

desc Employee;
desc Investor;

alter table Investor add column age INT;

alter table Investor modify column inv_name text;

alter table Employee rename column emp_id to e_id;  

update Employee set city='Nagpur' where emp_id = 104;
select * from employee;

delete from Investor where inv_no = 1;
select *from Investor;

alter table Investor drop column age;
desc Investor;

show create table Employee; 

alter table Employee drop check age;

alter table Investor add column emp_id INT;

alter table Investor add constraint e_inv foreign key(emp_id) references Employee (emp_id);
desc Investor;

select inv_no,inv_name,inv_amt,emp_id from Investor;

alter table Employee rename Emp;
show tables;

truncate table Investor;
truncate table emp;

drop table Employee;
drop table Investor;
show tables;

alter table Investor drop constraint forign_key_1;
show create table emp;











