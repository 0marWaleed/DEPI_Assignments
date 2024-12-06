--Task 1
select employee_id, last_name, salary from employees
where salary between 2000 and 5000 and manager_id not in (101, 200);


--Task 2
select e.first_name,e.last_name,d.department_name
from employees e inner join departments d on e.department_id = d.department_id order by d.department_name asc;


--Task 3
select e.department_id, count(e.employee_id) as employee_id, avg(e.salary) as average_salary
from employees e group by e.department_id; 
