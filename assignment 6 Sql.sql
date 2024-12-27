create database company01;

use company01;

create table employees(emp_id int,name varchar(20),department varchar(20),salary int);

insert into employees(emp_id,name,department,salary)
values
(1,"john","HR",5000),
(2,"alice","IT",7000),
(3,"bob","finance",6000),
(4,"eve","IT",8000),
(5,"charlie","finance",7500);

create table departments(dept_id int,dept_name varchar(20));

insert into departments(dept_id,dept_name)
values
(1,"HR"),
(2,"IT"),
(3,"finance");

#1. Find employees with salaries greater than the average salary of all employees. 

SELECT*FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);


#2. Find employees whose salary is higher than the salary of 'Alice'. 

SELECT*FROM employees
WHERE salary > (SELECT salary FROM employees WHERE name = 'Alice');


#3. List employees who belong to a department that has the name 'IT'. 

Select*From employees
where department = 'IT';


#4. Get the names of employees who earn the highest salary in their department. 

Select name, department, salary
from employees e1
where salary = (SELECT MAX(salary)
from employees e2 where e1.department = e2.department);

#5. Retrieve the departments where at least one employee earns more than 7000. 

Select distinct department
from employees
where salary > 7000;


#6. List employees who do not belong to any department in the departments table. 

Select e.*from employees e
left join departments d 
on e.department = d.dept_name
where d.dept_name is null ;

#7. Find the second-highest salary among employees. 

Select MAX(salary) as second_highest_salary from employees
where salary < (select MAX(salary) from employees);

#8. Retrieve the names of employees who work in the department with the highest number of employees. 

select Name,Department
from Employees
where Department in  (
select Department 
from Employees
group by department having count(*) = (
select count(*) 
from Employees 
group by department order by count(*) desc limit 1));

#9. Find employees who earn more than the average salary in their department. 

Select e.name, e.department, e.salary from employees e
where e.salary > (select avg(e2.salary)
from employees e2
where e2.department = e.department);

#10. Retrieve employees whose salary is above 7000 and belong to departments in the departments table. 

Select e.*from employees e
join departments d 
on e.department = d.dept_name
where e.salary > 7000;

#11. List all departments that have no employees. 

select d.dept_name
from departments d
left join employees e on d.dept_name = e.department
where e.department is null;

#12. Find employees who have the same salary as another employee in a different department. 

select e1.name, e1.department, e1.salary
from employees e1
join employees e2 
on e1.salary = e2.salary
where e1.department != e2.department;


#13. Get the total salary of the department with the maximum total salary. 

select department, SUM(salary) as total_salary
from employees
group by department
order by total_salary desc
limit 1;


#14 Retrieve employees whose department has more than two employees. 

Select e.*
from employees e
join (select department
from employees
group by department
having COUNT(*) > 2) dept 
on e.department = dept.department;


#15. Find employees whose salary is higher than the average salary of employees in the IT department. 

select e.name, e.department, e.salary
from employees e
where e.salary > (select avg(e2.salary)
from employees e2 where e2.department = 'IT');