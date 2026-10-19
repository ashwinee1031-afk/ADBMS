create database User2;
Show databases;
use User2;
create table Customers(Custid INT PRIMARY KEY, custname VARCHAR(100), city VARCHAR(100), product VARCHAR(15), price INT);

Insert into Customers (Custid, custname,city,product,price)
values(101,'Ashwini','Pune','ABC',2000),
(102,'Sanika','Mumbai','XYZ',2000),
(103,'Swarali','Pune','ABC',3000);

select * from Customers;

select * from Customers where Custid = 103;

create table Clonetable as select * from Customers; -- imppp(copy of table is clone)
select * from Clonetable;

select * from Customers where city = "Pune";

select * from Customers order by price; -- ascending order

select * from Customers order by price desc; -- descending order

-- sorting data by mutliple columns 
select * from Customers order by city;
select * from Customers order by price;

select * from Customers order by city desc;
select * from Customers order by price desc;

--  single row functions
-- case conversion
select upper(custname),lower(product) from Customers;
select * from Customers;

-- add last name in customer table
alter table Customers add column lastname VARCHAR(100);
select * from Customers;

update Customers set lastname = "Gund" where Custid = 101;
update Customers set lastname = "Kale" where Custid = 102;
update Customers set lastname = "Gadhave" where Custid = 103;
select * from Customers;

-- concat two columns
select concat(custname , ' ' ,lastname)as Fullname  from Customers;

-- use of SUBSTR and INSTR functions
-- substr showing - characters
-- instr position of character(1)

select * from Customers;
select substr(custname,1,4) from Customers;
select substr(custname,0,4) from Customers; -- no output 
select substr(custname,1,0) from Customers; -- no output


select instr(custname,'z')as position from Customers; -- position is called alias name 
select instr(custname,'a')as position from Customers; -- position is returning only first not second 

select substr(custname,1,2)as Substring , instr(custname,'i')as Instring from Customers;

select substr(custname,1,5),instr(custname,'h') from Customers where custid < 103;

select now();

select now() as current_datetime;

alter table Customers add column date date;

update Customers set date='2005-10-31' where Custid=101;
update Customers set date='2010-5-23' where Custid=102;
update Customers set date='2006-12-2' where Custid=103;

select *from Customers;






