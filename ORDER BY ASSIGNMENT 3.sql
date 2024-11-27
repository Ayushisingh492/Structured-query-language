

create database assignment3;

use assignment3;

create table staff1(emp_id int Primary key auto_increment, first_name varchar(20),last_name varchar(20),
department varchar(10),salary int,hire_date date);

insert into staff1(first_name,last_name,department,salary,hire_date)
values("John","Doe","IT",60000.00,"2019-01-10"),
("Jane","Smith","HR",55000.00,"2018-03-05"),
("Emily","Jones","IT",62000.00,"2020-07-23"),
("Micheal","Brown","Finance",70000.00,"2016-05-14"),
("Sarah","Davis","Finance",69000.00,"2017-11-18"),
("David","Johnson","HR",48000.00,"2021-09-10");

#1. Find the average salary of employees in each department. 
Select * from staff1;
select distinct department,avg(salary) from staff1 group by department;

#2. Find the total number of employees hired after 2019. 
Select count(*) as "Total employees" from staff1 where hire_date>"2019-12-31" ;

#3. List the departments and the total salary of all employees in each department, ordered by the total salary. 
Select distinct department , sum(salary) as "Total Salary" from staff1 group by department order by sum(salary) ;

#4. Find the highest salary in the Finance department. 
Select max(salary) as "Highest_Salary" from staff1 where department="Finance";

#5. Get the top 3 highest-paid employees. 
Select concat(first_name," ",last_name) AS Employee_Name, salary as "Highest_paid_employees" from staff1
  order by salary desc limit 3;

#6. Find the department with the minimum average salary.  
Select department ,avg(salary) from staff1 group by department order by avg(salary) asc limit 1;

#7. Display the total number of employees in each department, ordered by the number of employees. 
Select distinct department ,count(*) from staff1 group by department order by count;

#8. Find the average salary of employees who were hired before 2020.  
select avg(salary) as "Average salary of employees" from staff1 where hire_date<"2020-01-01" ;

#9. List the names of employees in the IT department ordered by hire date, with the most recently hired employees first. 
Select concat(first_name," ",last_name) AS Employee_Name
 ,hire_date from staff1 where department = "IT" order by hire_date desc;

# 10. Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary. 
Select  sum(salary) AS "Total Salary" from staff1 where hire_date>"2019-01-01" order by salary;

#11. Get the employee with the lowest salary in the HR department. 
Select concat(first_name," ",last_name) AS Employee ,salary from staff1 
where department = "HR" order by salary limit 1;

#12. Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments.  
Select department, sum(salary) as "Total salary" from staff1
 group by department order by sum(salary) desc limit 2;
 
 #13. List all employees hired after 2018, ordered by salary, and show only the first 4 employees.  
Select concat(first_name," ",last_name) AS Employee, salary from staff1 where hire_date>2018-12-31 order by salary limit 4;

#14. Find the highest salary in the IT department, but limit the results to the top 1 result.   
Select department, max(salary) as "Highest Salary" from staff1 where department="IT";

#15. Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.  
Select department, avg(salary) as "Average salary" from staff1 group by department having avg(salary)>60000;


