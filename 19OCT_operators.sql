create database organization;
use organization;

create table employee3(Empid INT not null PRIMARY KEY, FirstName VARCHAR(50),LastName VARCHAR (50), Gender VARCHAR(20),Role VARCHAR(20),Dept VARCHAR(50),Manager_id VARCHAR(30));

Insert into employee3 values (1,'Ashwini','Gund','F','Team leader','Retail','M11'),
(2,'Sanika','Kale','F','Team leader','Finanace','M12'),
(3,'Sushant','Kende','M','Manager','Retail','M13'),
(4,'Tanvi','Babar','F','Manager','Finanace','M14'),
(5,'Prathmesh','Deshmane','M','Team leader','Retail','M15');

select * from employee3;

-- DISTINCT display total category names from your table(dept,role) used with order by clause
select distinct Dept from employee3 order by Dept; 

select distinct Role from employee3 order by Role;

-- AND logical operator that combines two or more boolean expressions -- using with where 
-- if matches then returns otherwise returns null
select * from employee3 where role='Manager' AND dept='Retail';

select * from employee3 where role='President' AND dept='HR';


-- OR logical operato that combines two boolean expressions but returns 1 --using with where

select * from employee3 where role='President' OR role='Team leader';

select * from employee3 where role='Manager' OR role='Team leader';

select * from employee3 where role='Manager' OR dept='Retail';


-- IN operator which is used to determine if value matches any other value in the list. using with where 
select * from employee3 WHERE Role IN('Manager');

select * from employee3 WHERE Dept IN ('HR');

-- NOT IN operator(opposite to IN operator) 
select * from employee3 WHERE Role NOT IN('Manager');

-- BETWEEN is logical operator. determines whether value begins in a range
alter table employee3 add column Experience INT;

update employee3 set Experience=3 WHERE Empid=1;
update employee3 set Experience=6 WHERE Empid=2;
update employee3 set Experience=7 WHERE Empid=3;
update employee3 set Experience=2 WHERE Empid=4;
update employee3 set Experience=3 WHERE Empid=5;

-- BETWEEN is logical operator. determines whether value begins in a range
select * from employee3 WHERE Experience BETWEEN 6 AND 10;

-- Like operator is a logical operator that determines whether or not a string contains a specified person
select * from employee3 WHERE LastName like 'G%';
select * from employee3 WHERE LastName like 'K%';
select * from employee3 WHERE LastName like 'z%';

-- LIMIT operator in the select
select * from employee3 order by Experience limit 5;
select * from employee3 order by Experience limit 3;

Insert into employee3 values (6,'Minakshi','Gund','F',null,'Retail','M11',9),
(7,'Mahesh','Shelke','M','Team leader',null,'M12',4),
(8,'Vaishnavi','Shah','F','Manager','HR',null,5);

select * from employee3 WHERE Manager_id is null;
select * from employee3 WHERE Role is null;


