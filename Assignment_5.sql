--Q1-1
select * from employees

--Q1-2
select e.employee_id, e.first_name, e.last_name, d.department_id from employees e, departments d where e.department_id = d.department_id
union 
select null, city, null, null from locations where city = 'Cairo';

--Q2-1
select distinct department_id from employees

--Q3
create table students (
    ID int identity(1,1) primary key,
    first_name varchar(50) not null,
    last_name varchar(50) default 'Unknown',
    address varchar(100) default 'N/A',
    city varchar(50) default 'N/A',
    birth_date date
);

--Q3-2
drop table students

--Q4-1
insert into students values ('Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01')
select * from students

--Q4-2
update students
set address = 'Cairo' where last_name = 'Ahmed';

--Q5
begin transaction
delete from students where city = 'Cairo'
rollback transaction 