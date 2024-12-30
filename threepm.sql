create database threepm;     
use threepm;
create table Table_1(col1 varchar(50));
select*from table_1;
drop table table_1;

 create table SQL_CLASS(
 ROLL_no int,
 Name varchar(50),
 Subject varchar(80),
 Gender varchar(50)   





 );
 
 select *from SQL_CLASS;
 
 insert into SQL_CLASS 
 values(101,'Abhishek','SQL','M'),
 (102,'Sadik','SQL','F'),
 (103,'Manshi','Python','F'),
 (104,'Puspendra','excel','M'),
 (105,'Adil','SQL','M'),
 (106,'Sahil','Python','M');
 
drop table SQL_CLASS;
use threepm;
create table SQL_CLASS(
Roll_no int primary key,
Name varchar(50) not null,
AGE int check (age>18),
Subject varchar(50) unique,
Gender varchar(1));
select * from SQL_CLASS;
insert into SQL_CLASS values
(null,'Abhishek','19','SQL','M'),
(null,'Sadik','19','SQL7','F'),
(null,'Manshi','22','SQL1','F'),
(null,'Puspendra','23','SQL2','M'),
(null,'Adil','34','SQL3','M'),
(null,'Sahil','55','SQL4','M');

alter table SQL_CLASS
drop column Roll_no;

alter table SQL_CLASS
add Roll_No int primary key auto_increment;

alter table SQL_CLASS
add column Address varchar(50);

update SQL_CLASS set age=30 where Roll_No = 2;

delete from SQL_CLASS where Roll_NO = 2;

select * from SQL_CLASS where Gender = 'M';
select * from SQL_CLASS where Gender = 'M' and AGE = 60;
select * from SQL_CLASS where Gender = 'M' and AGE = 19 or AGE = 60;
select * from SQL_CLASS where Gender = 'M' and AGE in (19,23,60,55);
select * from SQL_CLASS where Subject = "SQL1";
select * from SQL_CLASS where not Subject = "SQL1" ;
select * from SQL_CLASS where Subject ="SQL1" and  AGE>19;
-- select * from SQL_CLASS where Subject in  and  AGE>19;

CREATE TABLE Employees (
id INT AUTO_INCREMENT PRIMARY KEY, 
first_name VARCHAR(50) NOT NULL, 
last_name VARCHAR(50) NOT NULL, 
age INT NOT NULL, 
city VARCHAR(50), 
salary INT ,
 emp_status  ENUM('employed', 'not employed'),
 joining_date  DATE,
 department  VARCHAR(50) );
 

INSERT INTO Employees (first_name, last_name, age, city, salary, emp_status, joining_date, department)
VALUES
('John', 'Doe', 30, 'New York', 55000.00, 'employed', '2020-01-15', 'Sales'),
('Jane', 'Smith', 25, 'Los Angeles', 60000.00, 'employed', '2021-03-20', 'Marketing'),
('Michael', 'Johnson', 35, 'Chicago', 75000.00, 'employed', '2019-07-10', 'HR'),
('Emily', 'Davis', 28, 'Houston', 72000.00, 'employed', '2021-05-15', 'IT'),
('David', 'Brown', 42, 'Phoenix', 80000.00, 'employed', '2018-11-25', 'Finance'),
('Sarah', 'Wilson', 33, 'Philadelphia', 64000.00, 'employed', '2020-09-12', 'R&D'),
('Daniel', 'Taylor', 29, 'San Antonio', 71000.00, 'employed', '2018-06-22', 'Operations'),
('Laura', 'Miller', 39, 'San Diego', 78000.00, 'employed', '2019-10-30', 'Legal'),
('James', 'Williams', 31, 'Dallas', 56000.00, 'employed', '2021-01-05', 'Customer Service'),
('Mary', 'Jones', 27, 'San Jose', 63000.00, 'employed', '2017-08-14', 'Admin'),
('Robert', 'Garcia', 45, 'Austin', 85000.00, 'employed', '2016-04-18', 'HR'),
('Patricia', 'Martinez', 34, 'Jacksonville', 72000.00, 'employed', '2019-02-20', 'Sales'),
('Linda', 'Rodriguez', 38, 'San Francisco', 79000.00, 'employed', '2018-12-12', 'IT'),
('Barbara', 'Martinez', 40, 'Indianapolis', 67000.00, 'employed', '2020-06-21', 'Marketing'),
('Paul', 'Hernandez', 50, 'Columbus', 93000.00, 'employed', '2015-03-17', 'Finance'),
('Steven', 'Lopez', 37, 'Fort Worth', 82000.00, 'employed', '2017-09-23', 'HR'),
('George', 'Gonzalez', 31, 'Charlotte', 60000.00, 'employed', '2021-10-19', 'Sales'),
('Nancy', 'Wilson', 44, 'Detroit', 85000.00, 'employed', '2016-01-30', 'Operations'),
('Karen', 'Martinez', 36, 'Memphis', 78000.00, 'employed', '2018-05-12', 'IT'),
('Betty', 'Anderson', 29, 'Boston', 68000.00, 'employed', '2020-08-25', 'Marketing'),
('Helen', 'Thomas', 33, 'Seattle', 64000.00, 'employed', '2020-11-18', 'Finance'),
('Sandra', 'Moore', 39, 'Denver', 75000.00, 'employed', '2017-07-13', 'HR'),
('Donna', 'Jackson', 41, 'Washington', 77000.00, 'employed', '2018-09-22', 'Sales'),
('Carol', 'White', 27, 'Nashville', 61000.00, 'employed', '2021-05-16', 'Customer Service'),
('Ruth', 'Harris', 32, 'Oklahoma City', 62000.00, 'employed', '2019-04-28', 'Operations'),
('Sharon', 'Martin', 35, 'Las Vegas', 65000.00, 'employed', '2020-12-09', 'IT'),
('Michelle', 'Thompson', 38, 'Baltimore', 69000.00, 'employed', '2019-03-06', 'Marketing'),
('Laura', 'Martinez', 26, 'Louisville', 57000.00, 'employed', '2021-07-07', 'Finance'),
('Deborah', 'Clark', 29, 'Milwaukee', 63000.00, 'employed', '2020-06-02', 'HR'),
('Jessica', 'Lewis', 34, 'Albuquerque', 74000.00, 'employed', '2018-11-27', 'Sales'),
('Maria', 'Lee', 31, 'Tucson', 65000.00, 'employed', '2020-01-14', 'Customer Service'),
('Kevin', 'Walker', 32, 'Fresno', 67000.00, 'employed', '2018-09-25', 'Operations'),
('Jason', 'Hall', 39, 'Sacramento', 78000.00, 'employed', '2017-10-15', 'IT'),
('Jeffrey', 'Allen', 44, 'Mesa', 86000.00, 'employed', '2016-05-09', 'Marketing'),
('Amy', 'Young', 26, 'Atlanta', 59000.00, 'employed', '2021-06-04', 'Finance'),
('Carolyn', 'Hernandez', 37, 'Kansas City', 82000.00, 'employed', '2017-08-26', 'HR'),
('Julie', 'King', 30, 'Colorado Springs', 64000.00, 'employed', '2020-03-19', 'Sales'),
('Evelyn', 'Wright', 43, 'Miami', 87000.00, 'employed', '2016-11-22', 'Customer Service'),
('Beverly', 'Lopez', 35, 'Omaha', 74000.00, 'employed', '2018-07-29', 'Operations'),
('Joan', 'Gonzalez', 40, 'Oakland', 77000.00, 'employed', '2017-12-05', 'IT'),
('Ashley', 'Hall', 28, 'Minneapolis', 68000.00, 'employed', '2020-10-28', 'Marketing'),
('Rose', 'Rivera', 34, 'Tulsa', 73000.00, 'employed', '2019-09-21', 'Finance'),
('Anne', 'Hernandez', 31, 'Arlington', 62000.00, 'employed', '2020-04-08', 'HR'),
('Brenda', 'Martinez', 33, 'Wichita', 64000.00, 'employed', '2020-02-17', 'Sales'),
('Pamela', 'Robinson', 38, 'Cleveland', 69000.00, 'employed', '2019-07-20', 'Customer Service'),
('Virginia', 'Lopez', 41, 'New Orleans', 78000.00, 'employed', '2017-06-12', 'Operations'),
('Katherine', 'Clark', 45, 'Bakersfield', 88000.00, 'employed', '2015-04-14', 'IT'),
('Elizabeth', 'Young', 27, 'Tampa', 61000.00, 'employed', '2021-03-30', 'Marketing'),
('Barbara', 'Anderson', 29, 'Aurora', 62000.00, 'employed', '2020-09-01', 'Finance'),
('Margaret', 'King', 36, 'Anaheim', 72000.00, 'employed', '2018-04-07', 'HR'),
('Dorothy', 'Wright', 40, 'Honolulu', 81000.00, 'employed', '2016-02-24', 'Sales'),
('Mildred', 'Martinez', 37, 'Santa Ana', 79000.00, 'employed', '2017-03-18', 'Customer Service'),
('Gloria', 'Garcia', 32, 'Riverside', 68000.00, 'employed', '2019-12-13', 'Operations'),
('Theresa', 'Allen', 43, 'Corpus Christi', 86000.00, 'employed', '2016-10-25', 'IT'),
('Charlotte', 'Young', 35, 'Lexington', 75000.00, 'employed', '2018-05-25', 'Marketing'),
('Martha', 'Hernandez', 39, 'Stockton', 79000.00, 'employed', '2017-01-04', 'Finance'),
('Christine', 'King', 27, 'St. Louis', 60000.00, 'employed', '2021-02-09', 'HR'),
('Cheryl', 'Garcia', 31, 'St. Paul', 64000.00, 'employed', '2020-08-05', 'Sales'),
('Megan', 'Rivera', 36, 'Anchorage', 73000.00, 'employed', '2018-03-12', 'Customer Service'),
('Diana', 'Moore', 43, 'Pittsburgh', 82000.00, 'employed', '2016-12-27', 'Operations'),
('Joyce', 'Allen', 44, 'Cincinnati', 86000.00, 'employed', '2015-09-06', 'IT'),
('Alice', 'Lopez', 29, 'Henderson', 63000.00, 'employed', '2020-05-10', 'Marketing'),
('Kathleen', 'Young', 36, 'Greensboro', 69000.00, 'employed', '2018-08-19', 'Finance'),
('Catherine', 'Wilson', 41, 'Plano', 76000.00, 'employed', '2017-02-11', 'HR'),
('Frances', 'Martinez', 33, 'Lincoln', 64000.00, 'employed', '2020-12-22', 'Sales'),
('Ann', 'Hernandez', 37, 'Buffalo', 72000.00, 'employed', '2018-01-26', 'Customer Service'),
('Janet', 'Young', 44, 'Durham', 84000.00, 'employed', '2016-06-05', 'Operations'),
('Betty', 'Clark', 45, 'Orlando', 85000.00, 'employed', '2015-11-14', 'IT'),
('Judith', 'Allen', 32, 'St. Petersburg', 64000.00, 'employed', '2020-02-18', 'Marketing'),
('Shirley', 'Wilson', 39, 'Irvine', 78000.00, 'employed', '2017-09-10', 'Finance'),
('Marilyn', 'Taylor', 41, 'Chesapeake', 77000.00, 'employed', '2017-11-27', 'HR'),
('Marie', 'Hernandez', 37, 'Madison', 74000.00, 'employed', '2018-07-16', 'Sales'),
('Paula', 'Young', 30, 'Montgomery', 68000.00, 'employed', '2020-05-03', 'Customer Service'),
('Norma', 'Wilson', 28, 'Frisco', 65000.00, 'employed', '2020-03-08', 'Operations'),
('Bonnie', 'Garcia', 45, 'Lubbock', 87000.00, 'employed', '2015-09-30', 'IT'),
('Joyce', 'Allen', 33, 'Gilbert', 62000.00, 'employed', '2020-10-13', 'Marketing'),
('Irene', 'Young', 42, 'Reno', 81000.00, 'employed', '2016-07-19', 'Finance'),
('Julia', 'Hernandez', 38, 'Irving', 75000.00, 'employed', '2018-11-11', 'HR'),
('Lois', 'Clark', 40, 'Glendale', 78000.00, 'employed', '2017-02-26', 'Sales'),
('Emily', 'Martinez', 26, 'Hialeah', 61000.00, 'employed', '2021-04-01', 'Customer Service'),
('Wanda', 'Young', 29, 'Garland', 62000.00, 'employed', '2020-06-20', 'Operations'),
('Evelyn', 'Wilson', 34, 'Scottsdale', 73000.00, 'employed', '2018-09-25', 'IT'),
('Jean', 'Allen', 36, 'Chandler', 75000.00, 'employed', '2018-04-18', 'Marketing'),
('Phyllis', 'Hernandez', 37, 'Norfolk', 74000.00, 'employed', '2018-01-02', 'Finance'),
('Janice', 'Young', 44, 'Fremont', 86000.00, 'employed', '2015-10-23', 'HR'),
('Marie', 'Clark', 43, 'Boise', 79000.00, 'employed', '2016-02-21', 'Sales'),
('Alice', 'Garcia', 31, 'Richmond', 69000.00, 'employed', '2018-07-08', 'Customer Service'),
('Dorothy', 'Lopez', 29, 'Spokane', 63000.00, 'employed', '2020-06-28', 'Operations'),
('Rose', 'Martinez', 34, 'Fayetteville', 71000.00, 'employed', '2019-11-15', 'IT'),
('Ann', 'Allen', 36, 'Santa Clarita', 72000.00, 'employed', '2018-05-25', 'Marketing'),
('Patricia', 'Wilson', 41, 'Grand Prairie', 78000.00, 'employed', '2017-09-19', 'Finance'),
('Lisa', 'Hernandez', 39, 'Salem', 83000.00, 'employed', '2016-10-03', 'HR'),
('Rebecca', 'Young', 43, 'Torrance', 86000.00, 'employed', '2016-06-29', 'Sales'),
('Kathleen', 'Clark', 32, 'Savannah', 67000.00, 'employed', '2018-02-11', 'Customer Service'),
('Shirley', 'Martinez', 36, 'Lancaster', 74000.00, 'employed', '2018-04-23', 'Operations'),
('Debra', 'Garcia', 31, 'Eugene', 63000.00, 'employed', '2020-09-15', 'IT'),
('Janet', 'Allen', 41, 'Oceanside', 80000.00, 'employed', '2016-03-08', 'Marketing'),
('Carol', 'Young', 44, 'Escondido', 86000.00, 'employed', '2015-08-27', 'Finance'),
('Betty', 'Wilson', 40, 'Fort Lauderdale', 77000.00, 'employed', '2017-07-01', 'HR'),
('Sandra', 'Martinez', 32, 'Boulder', 67000.00, 'employed', '2018-05-10', 'Sales'),
('Ruth', 'Garcia', 35, 'Simi Valley', 71000.00, 'employed', '2019-06-03', 'Customer Service'),
('Donna', 'Young', 28, 'Charleston', 60000.00, 'employed', '2021-04-27', 'Operations'),
('Deborah', 'Wilson', 37, 'Santa Maria', 75000.00, 'employed', '2017-12-18', 'IT'),
('Cynthia', 'Martinez', 31, 'El Monte', 62000.00, 'employed', '2020-05-19', 'Marketing'),
('Laura', 'Allen', 36, 'Gresham', 74000.00, 'employed', '2018-08-21', 'Finance'),
('Virginia', 'Young', 38, 'Arvada', 77000.00, 'employed', '2017-04-17', 'HR'),
('Elizabeth', 'Wilson', 34, 'Elgin', 73000.00, 'employed', '2018-01-12', 'Sales'),
('Pamela', 'Martinez', 43, 'Sandy Springs', 81000.00, 'employed', '2016-07-22', 'Customer Service'),
('Barbara', 'Lopez', 45, 'Jurupa Valley', 90000.00, 'employed', '2015-03-28', 'Operations'),
('Patricia', 'Garcia', 28, 'Huntington Beach', 65000.00, 'employed', '2020-03-09', 'IT'),
('Sharon', 'Young', 30, 'McAllen', 67000.00, 'employed', '2019-12-30', 'Marketing'),
('Susan', 'Wilson', 38, 'Pasadena', 78000.00, 'employed', '2017-08-11', 'Finance'),
('Nancy', 'Martinez', 33, 'Salinas', 73000.00, 'employed', '2019-02-22', 'HR'),
('Dorothy', 'Garcia', 44, 'Cary', 87000.00, 'employed', '2016-10-08', 'Sales'),
('Helen', 'Allen', 45, 'Aurora', 90000.00, 'employed', '2015-05-13', 'Customer Service'),
('Catherine', 'Young', 34, 'Temecula', 78000.00, 'employed', '2017-11-09', 'Operations'),
('Margaret', 'Wilson', 40, 'Palmdale', 81000.00, 'employed', '2016-01-25', 'IT'),
('Karen', 'Martinez', 28, 'Macon', 62000.00, 'employed', '2020-07-02', 'Marketing'),
('Brenda', 'Lopez', 31, 'Midland', 65000.00, 'employed', '2020-06-21', 'Finance'),
('Evelyn', 'Garcia', 37, 'Lakeland', 74000.00, 'employed', '2018-08-15', 'HR'),
('Helen', 'Young', 39, 'Palm Bay', 77000.00, 'employed', '2017-09-17', 'Sales'),
('Marilyn', 'Wilson', 42, 'Pomona', 83000.00, 'employed', '2016-03-03', 'Customer Service'),
('Carolyn', 'Martinez', 31, 'Springfield', 65000.00, 'employed', '2020-05-08', 'Operations'),
('Shirley', 'Allen', 38, 'Pembroke Pines', 74000.00, 'employed', '2017-07-15', 'IT'),
('Pamela', 'Young', 28, 'Edison', 62000.00, 'employed', '2020-02-12', 'Marketing'),
('Rebecca', 'Wilson', 33, 'Odessa', 68000.00, 'employed', '2019-04-29', 'Finance'),
('Virginia', 'Martinez', 40, 'Rochester', 77000.00, 'employed', '2017-10-27', 'HR'),
('Donna', 'Garcia', 29, 'Surprise', 62000.00, 'employed', '2020-09-18', 'Sales'),
('Gloria', 'Lopez', 34, 'Escondido', 68000.00, 'employed', '2019-01-14', 'Customer Service'),
('Betty', 'Young', 39, 'Salem', 73000.00, 'employed', '2018-03-27', 'Operations'),
('Nancy', 'Wilson', 35, 'Olathe', 76000.00, 'employed', '2017-06-01', 'IT'),
('Barbara', 'Martinez', 41, 'Torrance', 80000.00, 'employed', '2016-08-04', 'Marketing'),
('Katherine', 'Garcia', 42, 'Lancaster', 82000.00, 'employed', '2016-05-02', 'Finance'),
('Linda', 'Lopez', 30, 'Thousand Oaks', 67000.00, 'employed', '2020-01-09', 'HR'),
('Diana', 'Young', 44, 'Palmdale', 85000.00, 'employed', '2015-11-19', 'Sales'),
('Patricia', 'Wilson', 33, 'Fargo', 70000.00, 'employed', '2019-07-21', 'Customer Service'),
('Sandra', 'Martinez', 38, 'Davenport', 74000.00, 'employed', '2018-10-11', 'Operations'),
('Janet', 'Garcia', 34, 'Stamford', 69000.00, 'employed', '2019-02-07', 'IT'),
('Ruth', 'Lopez', 41, 'Carrollton', 80000.00, 'employed', '2016-06-16', 'Marketing'),
('Susan', 'Young', 35, 'Fairfield', 74000.00, 'employed', '2018-05-05', 'Finance'),
('Mary', 'Wilson', 43, 'Lafayette', 83000.00, 'employed', '2016-03-14', 'HR'),
('Sharon', 'Martinez', 29, 'Pueblo', 62000.00, 'employed', '2020-08-29', 'Sales'),
('Karen', 'Garcia', 36, 'Columbia', 75000.00, 'employed', '2017-11-13', 'Customer Service'),
('Linda', 'Lopez', 42, 'Santa Maria', 81000.00, 'employed', '2016-02-02', 'Operations'),
('Deborah', 'Young', 44, 'Orange', 85000.00, 'employed', '2015-10-21', 'IT'),
('Patricia', 'Wilson', 33, 'Charleston', 67000.00, 'employed', '2018-12-24', 'Marketing'),
('Nancy', 'Martinez', 38, 'Tampa', 76000.00, 'employed', '2017-09-07', 'Finance'),
('Helen', 'Garcia', 37, 'Cape Coral', 74000.00, 'employed', '2018-08-01', 'HR'),
('Carol', 'Lopez', 34, 'Simi Valley', 70000.00, 'employed', '2019-04-03', 'Sales'),
('Janet', 'Young', 41, 'Tempe', 78000.00, 'employed', '2017-06-19', 'Customer Service'),
('Ruth', 'Wilson', 42, 'Stamford', 81000.00, 'employed', '2016-01-15', 'Operations'),
('Dorothy', 'Martinez', 40, 'Newark', 82000.00, 'employed', '2016-08-22', 'IT'),
('Barbara', 'Garcia', 31, 'Irvine', 64000.00, 'employed', '2020-05-18', 'Marketing'),
('Nancy', 'Lopez', 35, 'Huntington Beach', 68000.00, 'employed', '2019-10-29', 'Finance'),
('Donna', 'Young', 43, 'Amarillo', 79000.00, 'employed', '2017-09-24', 'HR'),
('Sharon', 'Wilson', 42, 'Providence', 78000.00, 'employed', '2017-11-04', 'Sales'),
('Rebecca', 'Martinez', 34, 'Burbank', 71000.00, 'employed', '2018-10-18', 'Customer Service'),
('Helen', 'Garcia', 44, 'Oceanside', 85000.00, 'employed', '2016-01-27', 'Operations'),
('Ruth', 'Lopez', 33, 'Thornton', 67000.00, 'employed', '2018-07-10', 'IT'),
('Linda', 'Young', 39, 'Round Rock', 75000.00, 'employed', '2017-07-31', 'Marketing'),
('Deborah', 'Wilson', 32, 'Costa Mesa', 66000.00, 'employed', '2020-04-13', 'Finance'),
('Elizabeth', 'Martinez', 37, 'Waco', 72000.00, 'employed', '2018-06-20', 'HR'),
('Patricia', 'Garcia', 41, 'Billings', 80000.00, 'employed', '2016-09-02', 'Sales'),
('Margaret', 'Lopez', 45, 'Clovis', 90000.00, 'employed', '2015-02-19', 'Customer Service'),
('Sandra', 'Young', 30, 'Bend', 67000.00, 'employed', '2020-02-16', 'Operations'),
('Nancy', 'Wilson', 36, 'Longview', 72000.00, 'employed', '2018-06-25', 'IT'),
('Helen', 'Martinez', 34, 'Peoria', 69000.00, 'employed', '2019-03-03', 'Marketing'),
('Carol', 'Garcia', 29, 'Tyler', 62000.00, 'employed', '2020-08-19', 'Finance'),
('Barbara', 'Lopez', 40, 'West Covina', 78000.00, 'employed', '2017-10-02', 'HR'),
('Betty', 'Young', 37, 'Burbank', 71000.00, 'employed', '2018-11-13', 'Sales'),
('Helen', 'Wilson', 38, 'Cedar Rapids', 74000.00, 'employed', '2018-04-26', 'Customer Service'),
('Sandra', 'Martinez', 42, 'Wilmington', 81000.00, 'employed', '2016-01-03', 'Operations'),
('Rebecca', 'Garcia', 45, 'Gainesville', 86000.00, 'employed', '2015-11-30', 'IT'),
('Linda', 'Young', 32, 'Bellevue', 66000.00, 'employed', '2020-01-31', 'Marketing'),
('Nancy', 'Wilson', 43, 'Daly City', 81000.00, 'employed', '2016-03-28', 'Finance'),
('Helen', 'Martinez', 39, 'Lakeland', 74000.00, 'employed', '2018-09-07', 'HR'),
('Laura', 'Garcia', 33, 'Norwalk', 67000.00, 'employed', '2019-01-06', 'Sales'),
('Ruth', 'Lopez', 36, 'Las Cruces', 72000.00, 'employed', '2018-02-11', 'Customer Service'),
('Virginia', 'Young', 41, 'Clinton', 78000.00, 'employed', '2017-10-14', 'Operations'),
('Deborah', 'Wilson', 45, 'Cary', 85000.00, 'employed', '2015-09-21', 'IT'),
('Betty', 'Martinez', 43, 'Newport News', 81000.00, 'employed', '2016-07-24', 'Marketing'),
('Shirley', 'Garcia', 40, 'Fort Lauderdale', 78000.00, 'employed', '2017-08-05', 'Finance'),
('Catherine', 'Young', 34, 'Elk Grove', 74000.00, 'employed', '2018-01-17', 'HR'),
('Ann', 'Wilson', 39, 'Westminster', 76000.00, 'employed', '2017-05-09', 'Sales'),
('Janet', 'Martinez', 44, 'Costa Mesa', 83000.00, 'employed', '2016-03-19', 'Customer Service'),
('Patricia', 'Garcia', 33, 'Rialto', 70000.00, 'employed', '2019-08-08', 'Operations'),
('Barbara', 'Lopez', 28, 'Greeley', 63000.00, 'employed', '2020-05-27', 'IT'),
('Margaret', 'Young', 30, 'Clearwater', 66000.00, 'employed', '2020-08-04', 'Marketing'),
('Virginia', 'Wilson', 42, 'Murrieta', 80000.00, 'employed', '2016-05-25', 'Finance'),
('Elizabeth', 'Martinez', 41, 'Ventura', 78000.00, 'employed', '2017-08-31', 'HR'),
('Rebecca', 'Garcia', 40, 'West Valley City', 76000.00, 'employed', '2017-02-14', 'Sales'),
('Sharon', 'Young', 31, 'Manchester', 67000.00, 'employed', '2020-03-12', 'Customer Service'),
('Mary', 'Wilson', 38, 'High Point', 74000.00, 'employed', '2018-06-18', 'Operations'),
('Linda', 'Lopez', 44, 'Round Rock', 85000.00, 'employed', '2015-10-01', 'IT'),
('Virginia', 'Martinez', 39, 'Billings', 76000.00, 'employed', '2017-01-17', 'Marketing'),
('Sandra', 'Garcia', 41, 'Pueblo', 78000.00, 'employed', '2017-05-28', 'Finance'),
('Janet', 'Wilson', 45, 'West Covina', 87000.00, 'employed', '2015-08-22', 'HR'),
('Rebecca', 'Martinez', 33, 'College Station', 67000.00, 'employed', '2018-09-02', 'Sales'),
('Deborah', 'Garcia', 38, 'San Mateo', 74000.00, 'employed', '2018-07-23', 'Customer Service'),
('Margaret', 'Lopez', 37, 'Arvada', 72000.00, 'employed', '2018-02-07', 'Operations'),
('Barbara', 'Young', 39, 'Tyler', 75000.00, 'employed', '2017-10-23', 'IT');

-- city= new york ,los angeles ,houston department= sales,it?
select first_name,Last_name,city,department from employees
where city in("New york","los angeles","houston") and department in( "sales","it");      

-- department= it ,doj=1/01/2020
select first_name,salary,age,department,joining_date from employees
where  department="it" and joining_date >  '2019-01-01';

-- find all the first name where third alphabet is p and len is 5 from department IT
select last_name,department from employees
where department = "HR" and length(last_name)>5 and last_name like "___n___";

-- Extract data from employees table where city is dallas.
select * from Employees
where city = 'dallas';

--  Extract data from employees table where joining date is > 1 jan 2020.
select * from Employees
where joining_date >  '2020/01/01';

--  Extract data from employees table where age >30 .
select * from Employees
where age >  30;

-- Extract data from employees table where employee  when department is IT and employee is having age >35.
select id from Employees
where department ='it' and age >35;

select * from Employees
where first_name ='john';

-- write a query to extract details employee who are geetting salary more then 20 and less then 40k.
select * from Employees
where  salary>=55000 and salary<=70000;

select * from Employees
where salary between 50000 and 80000;

-- not
 select * from employees
 where not city ="Phoenix";
 
 -- null
  select * from employees
 where  city is null;
 
 -- is not null
 select * from employees
 where  city is not null;
 
 -- like operator
 select city from employees
 where  city like '%a';
 
  select city from employees
 where  city like 'a%';
 
  select * from employees
 where  city like '%ah%';
 
 -- wild card like operator
 -- '_' underscore
 
  select city from employees
 where city like '_a%';
 
  select * from employees
 where city like '[a]%';
 
 select * from employees
where first_name regexp '^[abc]' and department='IT';
 
-- A to F 
select city from employees
 where city regexp '[%a-f]';
 
  select city from employees
 where city regexp '^[a]'; 
 
 
 