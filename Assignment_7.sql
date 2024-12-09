-- Task 1
create view vw_employee_details as select e.first_name,e.last_name,d.department_name 
from employees e join departments d on e.department_id = d.department_id;

select * from vw_employee_details

-- Task 2
create or alter view vw_work_hrs as select e.first_name,e.last_name,j.job_title, d.department_id 
from employees e  join jobs j on e.job_id = j.job_id 
join departments d on e.department_id = d.department_id where e.department_id = 5;

-- Task 3
create view vw_high_status_supplies as select * from suppliers where status > 15;
