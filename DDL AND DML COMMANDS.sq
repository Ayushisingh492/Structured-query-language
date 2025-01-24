#Create a database named company and a table named employees with the following fields:
#id (INT, Primary Key, Auto Increment)
#name (VARCHAR(100))
#position (VARCHAR(100))
#salary (DECIMAL(10,2))
#date_of_joining (DATE)


Create database company;

use company;
Create table employees(id int Primary key auto_increment,
name varchar(100), position varchar(100), salary decimal(10,2),
date_of_joining date);

#Insert the following data into the employees table:
#John Doe, Manager, 55000.00, 2020-01-15
#Jane Smith, Developer, 48000.00, 2019-07-10
#Alice Johnson, Designer, 45000.00, 2021-03-22
#Bob Brown, Developer, 50000.00, 2018-11-01


insert into employees(name,position,salary,date_of_joining)
values ("John Doe","Manager",55000.00,"2020-01-15"),
	   ("Jane Smith","Developer",48000.00,"2019-07-10"),
       ("Alice Johnson","Designer",45000.00,"2021-03-22"),
       ("Bob Brown","Developer",50000.00,"2018-11-01");

#Write a query to retrieve all employees who are Developers.
       
Select *from employees where position="Developer";

#Write a query to update the salary of Alice Johnson to 46000.00.
set sql_safe_updates=0;

update employees 
set salary=46000.00 where name="Alice Johnson";

#Write a query to delete the employee record for Bob Brown.
delete from employees where name="Bob Brown";

#Write a query to find the employees who have a salary greater than 48000.

select *from employees where salary>48000;

#Write a query to add a new column email to the employees table.

Alter Table Employees 
ADD Email varchar(50);

#Write a query to update the email for John Doe to john.doe@company.com.

Update Employees 
Set Email='john.doe@company.com' 
where Name='John Doe';

#Write a query to retrieve only the name and salary of all employees.

Select Name, Salary From Employees;

#Write a query to count the number of employees who joined after January 1, 2020.

Select Count(*) From Employees 
Where Date_of_Joining > '2020-01-01';

#Write a query to order the employees by salary in descending order.

select *from employees order by salary desc;

#Write a query to drop the email column from the employees table.

alter table employees drop column email;

#Write a query to find the employee with the highest salary.

select *from employees order by salary desc Limit 1; 
