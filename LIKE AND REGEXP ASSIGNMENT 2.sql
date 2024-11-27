       #MY SQL ASSIGNMENT 2
# 1 Create a database named library and a table named books with the following columns:
#id (INT, Primary Key, Auto Increment)
#title (VARCHAR(255))
#author (VARCHAR(100))
#year (YEAR)
#genre (VARCHAR(100))

Create database Library;
Use Library;
create table books ( id int primary key auto_increment,
 title varchar (255),
 author varchar(100),year int, genre varchar(100));
 
 
#Insert the following book records into the books table:
#"The Great Gatsby", "F. Scott Fitzgerald", 1925, "Fiction"
#"Pride and Prejudice", "Jane Austen", 1813, "Romance"
#"To Kill a Mockingbird", "Harper Lee", 1960, "Fiction"
#"1984", "George Orwell", 1949, "Dystopian"
#"Moby Dick", "Herman Melville", 1851, "Adventure"

insert into books (id ,title,author,year,genre)
Values (1,"The Great Gatsby","F.Scott Fitzgerald", 1925,"Fiction"),
(2,"Pride and Prejustice","Jane Austen",1913,"Romance"),
(3,"To Kill a Mockingbird","Harper Lee",1960,"Fiction"),
(4,"1984","George Orwell",1949,"Dystopian"),
(5,"Moby Dick","Herman Melville",1951,"Adventure");

#Write a query to select all books where the title starts with the letter 'T' using the LIKE operator.

select*from books where title like "T%";

#Write a query to find all books where the author's last name ends with 'son' using the LIKE operator.
select*from books where author like "%son";

#Write a query to find all books where the title contains the word 'and' using the LIKE operator.
select*from books where title like "%and%";

#Write a query to retrieve all books where the title ends with the word 'bird' using the LIKE operator.
select*from books where title like "%bird";

#Write a query to find all books where the title has exactly 3 characters using the REGEXP operator.
select*from books where title regexp "[A-Z]e|[A-Z]e|[A-Z]e";

#Write a query to select all books where the title contains a number using the REGEXP operator.
select*from books where title regexp"[0-9]";

#Write a query to retrieve all books where the author's name starts with any letter between 'A' and 'J' using the REGEXP operator.
select*from books where author regexp "^[A-J]";

#Write a query to select all books where the genre is either 'Fiction' or 'Adventure' using the REGEXP operator.
select*from books where genre regexp "Fiction|Adventure";

#Write a query to find all books where the title contains at least one uppercase letter using the REGEXP operator.
select*from books where title regexp "[A-Z]";

#Write a query to find all books where the year of publication is between 1800 and 1950 using the LIKE operator.
select*from books where year like "19%" and year<1951;

#Write a query to retrieve all books where the author's name contains exactly two words using the REGEXP operator.
select*from books where author regexp "[A-Z]e|[A-Z]e";

#Write a query to find all books where the title starts with the letter 'P' and contains exactly two words using the REGEXP operator.
select*from books where title regexp "^P" and title regexp "[A-Z]e|[A-Z]e";

#Write a query to find all books where the title contains any special characters (e.g., '!', '@', '#', etc.) using the REGEXP operator.
select * from Books where Title regexp '[!@#\$%&*]';
