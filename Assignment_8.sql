-- Task 1
select * from employees where hire_date >= dateadd(day,-30,getdate())


-- Task 2
create procedure sp_get_employee_hours
    @employee_id int
as
begin
    select e.fname,e.lname,sum(w.hours) as totalhours from employees e
    inner join works_on w on e.employee_id = w.employee_id
    where e.employee_id = @employee_id group by e.fname, e.lname;
end;

exec sp_get_employee_hours @employee_id = 101;


-- Task 3
create procedure sp_department_employee_count
as
begin
    select d.department_id, d.department_name, count(e.employee_id) as employee_count 
    from departments d
    inner join employees e on d.department_id = e.department_id
    group by d.department_id, d.department_name
    having count(e.employee_id) > 5;
end;

exec sp_department_employee_count
