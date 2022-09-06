create database AddressBook
create table AddressBook
(fname varchar(20),lname varchar(20),address varchar(20),city varchar(20),state varchar(20),zip int,phone int);


insert into AddressBook
values
('Pallavi','Jawanjal','Rims Society','pune','Maharashtra',401501,935678929)

select*from AddressBook
update AddressBook set phone=85795426
where fname='Pallavi';


delete AddressBook where fname='Pallavi';


select * from AddressBook where city='Mumbai' or state='Goa';


select count(city) cityCount,count(state) stateCount from AddressBook;


select * from AddressBook where city='Mumbai' order by fname;


alter table AddressBook 
add type varchar(20) default 'NA',name varchar(20) default 'NA';


select count(type) from AddressBook;


update AddressBook set type='Family' where fname='Pallavi';


select * from AddressBook;
