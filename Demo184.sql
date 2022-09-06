create database Demo184

create table Employee
(
ID int,
Name varchar(250),
Address varchar(200)
)
select * from Employee

insert into Employee(ID,Name,Address) values (1 ,'rita', 'Amravati')
insert into Employee (ID,Name,Address) values (2 ,'pihu', 'Amravati')
insert into Employee (ID,Name,Address) values (3 ,'pallavi', 'Amravati')
insert into Employee (ID,Name,Address) values (4 ,'monu', 'Amravati')
insert into Employee (ID,Name,Address) values (5,'Akshay', 'Akola')
insert into Employee (ID,Name,Address) values (6 ,'Raj', 'London')
alter table EmployeeUpdate
add Gender char (1)
update Employee
set Gender='F'

update Employee
set Gender='M'
where ID in (5,6)

update Employee
set Address ='pune'
where ID in (1,4)

delete Employee
where ID in (4,4)

create table Employee_Payroll
(
ID int primary key identity,
name varchar(200) not null,
salary int,
startdate date
)

alter Table Employee_Payroll
add Gender char (1)
update Employee_Payroll
set Gender='M'
where ID in (1,2,4)
update Employee_Payroll
set Gender='F'
where ID =3
 

select * from Employee_Payroll

insert into Employee_Payroll(Name,salary,startdate) values ('shalesh', 2000,GETDATE())
insert into Employee_Payroll(Name,salary,startdate) values ('Akshay', 50000,GETDATE())
insert into Employee_Payroll(Name,salary,startdate) values ('Pallavi', 80000,GETDATE())
insert into Employee_Payroll(Name,salary,startdate) values ('Pratik', 2000,GETDATE())
select * from Employee_Payroll where salary between 3000 and 90000

select MIN (salary) from Employee_Payroll

select Max (salary) from Employee_Payroll

select count  (salary) from Employee_Payroll

select count (*) from Employee_Payroll group by Gender

