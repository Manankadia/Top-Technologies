-- 1. Create database company_1
create database company_1;

-- 2. Delete Database company_1
drop database company_1;

-- 3. Create Database (company)
create database company;

-- 4. Create tables in the company database.
-- i. (employee) – emp_id , first_name, last_name, salary , age ,dept_id 
-- ii. (department) - dept_id , dept_name, address

use  company;
create table employee
(employee_id int primary key,
first_name varchar (50) not null,
last_name varchar (50) not null,
salary int,
age int,
department_id int);

-- 5. insert 10 records into the both the tables
select * from employee;

-- 6. insert into employee values
insert into employee values
(1,"shubham" ,"bhatt" , 20000, 25, 1),
(2,"sachin" , "patel" , 30000, 27, 2),
(3,"vijay" ,"chudasma" , 250000, 26, 3),
(4,"dhiren" ,"chaudhary" , 230000, 25, 4),
(5,"himanshu" ,"pansuriya" , 220000, 26, 5),
(6,"romil" ,"patel" , 320000, 26, 6),
(7,"ajay" ,"patel" , 250000, 25, 7),
(8,"dhruv" ,"prajapati" , 230000, 24, 8),
(9,"jay" ,"raval" , 210000, 26, 9),
(10,"nikunj" ,"dobariya", 250000, 26, 10);

create table department
(department_id int primary key,
department_name varchar (50) not null,
address varchar (50) not null);
select * from department;

-- 7. select and view all data from department
insert into department values
(1 , "it" , "ahmedabad"),
(2 , "marketing" , "gandhinagar"),
(3 , "accounting" , "kalol"),
(4 , "finance" , "ahmedabad"),
(5 , "Engineering" , "gandhinagar"),
(6 , "electrical" , "ahmedabad"),
(7 , "technical" , "rajkot"),
(8 , "human resources"  , "gandhinagar"),
(9 , "sales" , "ahmedabad"),
(10 , "manufacturing" , "kalol");
