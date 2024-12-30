use threepm;
select * from employees;

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    employee_id INT,
    product_id INT,
    sale_amount DECIMAL(10, 2),
    sale_date DATE
);

INSERT INTO Sales (sale_id, employee_id, product_id, sale_amount, sale_date) VALUES
(1, 1, 1, 500.00, '2024-08-01'),
(2, 2, 2, 300.00, '2024-08-02'),
(3, 1, 3, 700.00, '2024-08-03'),
(4, 3, 1, 200.00, '2024-08-04'),
(5, 2, 3, 450.00, '2024-08-05'),
(6, 3, 2, 300.00, '2024-08-06'),
(7, 1, 1, 650.00, '2024-08-07'),
(8, 2, 1, 500.00, '2024-08-08'),
(9, 3, 3, 350.00, '2024-08-09'),
(10, 1, 2, 600.00, '2024-08-10'),
(11, 2, 1, 550.00, '2024-08-11'),
(12, 3, 3, 400.00, '2024-08-12'),
(13, 1, 2, 750.00, '2024-08-13'),
(14, 2, 3, 800.00, '2024-08-14'),
(15, 3, 1, 300.00, '2024-08-15'),
(16, 1, 1, 500.00, '2024-08-16'),
(17, 2, 3, 350.00, '2024-08-17'),
(18, 3, 2, 450.00, '2024-08-18'),
(19, 1, 2, 600.00, '2024-08-19'),
(20, 2, 1, 700.00, '2024-08-20'),
(21, 3, 2, 650.00, '2024-08-21'),
(22, 1, 3, 400.00, '2024-08-22'),
(23, 2, 1, 800.00, '2024-08-23'),
(24, 3, 3, 500.00, '2024-08-24'),
(25, 1, 2, 450.00, '2024-08-25'),
(26, 2, 1, 600.00, '2024-08-26'),
(27, 3, 2, 300.00, '2024-08-27'),
(28, 1, 3, 550.00, '2024-08-28'),
(29, 2, 1, 400.00, '2024-08-29'),
(30, 3, 2, 350.00, '2024-08-30'),
(31, 1, 1, 700.00, '2024-09-01'),
(32, 2, 3, 500.00, '2024-09-02'),
(33, 3, 2, 600.00, '2024-09-03'),
(34, 1, 2, 800.00, '2024-09-04'),
(35, 2, 1, 450.00, '2024-09-05'),
(36, 3, 3, 750.00, '2024-09-06'),
(37, 1, 3, 300.00, '2024-09-07'),
(38, 2, 2, 500.00, '2024-09-08'),
(39, 3, 1, 650.00, '2024-09-09'),
(40, 1, 1, 600.00, '2024-09-10'),
(41, 2, 3, 700.00, '2024-09-11'),
(42, 3, 2, 800.00, '2024-09-12'),
(43, 1, 2, 350.00, '2024-09-13'),
(44, 2, 1, 500.00, '2024-09-14'),
(45, 3, 3, 450.00, '2024-09-15'),
(46, 1, 2, 600.00, '2024-09-16'),
(47, 2, 1, 550.00, '2024-09-17'),
(48, 3, 3, 300.00, '2024-09-18'),
(49, 1, 1, 650.00, '2024-09-19'),
(50, 2, 1, 700.00, '2024-09-20');

CREATE TABLE Employees1 (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO Employees1 (employee_id, employee_name, department, salary) VALUES
(1, 'Alice', 'Sales', 6000.00),
(2, 'Bob', 'Sales', 5000.00),
(3, 'Charlie', 'Marketing', 5500.00),
(4, 'David', 'Sales', 4800.00),
(5, 'Emma', 'Marketing', 5200.00),
(6, 'Fiona', 'Sales', 6100.00),
(7, 'George', 'Sales', 5400.00),
(8, 'Hannah', 'Marketing', 5300.00),
(9, 'Ian', 'Sales', 5900.00),
(10, 'Jane', 'Sales', 6200.00),
(11, 'Kevin', 'Marketing', 5100.00),
(12, 'Liam', 'Sales', 5800.00),
(13, 'Mia', 'Sales', 6000.00),
(14, 'Nina', 'Sales', 5700.00),
(15, 'Oliver', 'Marketing', 5400.00),
(16, 'Paula', 'Sales', 6300.00),
(17, 'Quincy', 'Sales', 5100.00),
(18, 'Rachel', 'Marketing', 5500.00),
(19, 'Steve', 'Sales', 5800.00),
(20, 'Tina', 'Sales', 6200.00),
(21, 'Uma', 'Marketing', 5400.00),
(22, 'Victor', 'Sales', 6100.00),
(23, 'Wendy', 'Sales', 6000.00),
(24, 'Xander', 'Sales', 5200.00),
(25, 'Yara', 'Marketing', 5600.00),
(26, 'Zach', 'Sales', 5400.00),
(27, 'Ava', 'Marketing', 5300.00),
(28, 'Ben', 'Sales', 6100.00),
(29, 'Chloe', 'Marketing', 5200.00),
(30, 'Daniel', 'Sales', 5800.00),
(31, 'Eva', 'Marketing', 5700.00),
(32, 'Finn', 'Sales', 6000.00),
(33, 'Grace', 'Sales', 5900.00),
(34, 'Henry', 'Marketing', 5100.00),
(35, 'Isla', 'Sales', 6200.00),
(36, 'Jack', 'Marketing', 5500.00),
(37, 'Kate', 'Sales', 6100.00),
(38, 'Leo', 'Marketing', 5300.00),
(39, 'Mason', 'Sales', 5700.00),
(40, 'Nora', 'Marketing', 5200.00),
(41, 'Oscar', 'Sales', 6300.00),
(42, 'Piper', 'Sales', 5800.00),
(43, 'Quinn', 'Marketing', 5400.00),
(44, 'Ruby', 'Sales', 6100.00),
(45, 'Samuel', 'Marketing', 5500.00),
(46, 'Tessa', 'Sales', 5800.00),
(47, 'Ursula', 'Marketing', 5300.00),
(48, 'Vincent', 'Sales', 6200.00),
(49, 'Willow', 'Marketing', 5400.00),
(50, 'Zoe', 'Sales', 7000.00);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2),
    category VARCHAR(50)
);

INSERT INTO Products (product_id, product_name, price, category) VALUES
(1, 'Laptop', 1000.00, 'Electronics'),
(2, 'Phone', 500.00, 'Electronics'),
(3, 'Tablet', 300.00, 'Electronics'),
(4, 'Monitor', 200.00, 'Electronics'),
(5, 'Keyboard', 50.00, 'Accessories'),
(6, 'Mouse', 25.00, 'Accessories'),
(7, 'Printer', 150.00, 'Electronics'),
(8, 'Scanner', 120.00, 'Electronics'),
(9, 'Router', 80.00, 'Networking'),
(10, 'Switch', 60.00, 'Networking'),
(11, 'Webcam', 70.00, 'Accessories'),
(12, 'Microphone', 40.00, 'Accessories'),
(13, 'Headset', 90.00, 'Accessories'),
(14, 'Smart TV', 600.00, 'Electronics'),
(15, 'Speaker', 110.00, 'Audio'),
(16, 'Projector', 300.00, 'Electronics'),
(17, 'External HDD', 120.00, 'Storage'),
(18, 'SSD', 150.00, 'Storage'),
(19, 'USB Drive', 20.00, 'Storage'),
(20, 'Charger', 35.00, 'Accessories'),
(21, 'Power Bank', 45.00, 'Accessories'),
(22, 'Smartphone Stand', 10.00, 'Accessories'),
(23, 'Laptop Bag', 50.00, 'Accessories'),
(24, 'Docking Station', 90.00, 'Accessories'),
(25, 'VR Headset', 400.00, 'Electronics'),
(26, 'Smartwatch', 250.00, 'Wearables'),
(27, 'Fitness Tracker', 150.00, 'Wearables'),
(28, 'Bluetooth Speaker', 80.00, 'Audio'),
(29, 'eBook Reader', 120.00, 'Electronics'),
(30, 'Camera', 500.00, 'Electronics'),
(31, 'Tripod', 70.00, 'Accessories'),
(32, 'Drone', 800.00, 'Electronics'),
(33, 'Gaming Console', 400.00, 'Gaming'),
(34, 'Game Controller', 60.00, 'Gaming'),
(35, 'Gaming Chair', 150.00, 'Gaming'),
(36, 'Smart Bulb', 30.00, 'Smart Home'),
(37, 'Smart Plug', 25.00, 'Smart Home'),
(38, 'Thermostat', 200.00, 'Smart Home'),
(39, 'Security Camera', 150.00, 'Smart Home'),
(40, 'Doorbell Camera', 100.00, 'Smart Home'),
(41, 'Electric Kettle', 40.00, 'Appliances'),
(42, 'Coffee Maker', 70.00, 'Appliances'),
(43, 'Air Purifier', 200.00, 'Appliances'),
(44, 'Blender', 60.00, 'Appliances'),
(45, 'Microwave', 150.00, 'Appliances'),
(46, 'Refrigerator', 800.00, 'Appliances'),
(47, 'Washing Machine', 700.00, 'Appliances'),
(48, 'Dishwasher', 600.00, 'Appliances'),
(49, 'Vacuum Cleaner', 150.00, 'Appliances'),
(50, 'Hair Dryer', 30.00, 'Appliances');

select * from sales;
select * from employees1;
select * from  products;


-- window function 
select city,salary, 
sum(salary) over (partition by city order by salary desc) as new_column
from employees;

select city, 
sum(salary) over (partition by city order by salary desc) as new_column,
count(id) over (partition by  city order by salary desc) as count_id
from employees;

-- rank()

select city, 
sum(salary) over (partition by city order by salary desc) as new_column,
rank() over (partition by  city order by salary desc) as count_id
from employees;
  
-- dense_rank()

select id,first_name,salary,department,
dense_rank() over (partition by department order by salary desc) as rank_column
from employees;

-- row_number()

select id,first_name,salary,department,
row_number() over (partition by department order by salary desc) as rank_column
from employees;

-- ntile()

select id,first_name,salary,department,
ntile(3) over (partition by department order by salary desc) as rank_column
from employees;


-- comulative salary per department
select department,sum(salary),
sum(salary) over (partition by department order by salary desc) as cum_salary
from employees;

select department,
sum(salary) over (partition by department order by salary desc) as cum_salary
from employees;

with my_cte as (
select department,salary,
sum(salary) over (partition by department order by salary desc) as cum_salary,
row_number() over (partition by department order by salary desc) as row_num
from employees )
select department,salary from my_cte
where salary<cum_salary;

-- Q1. find employees with salary with higher the average salary in department.
select department,salary,avg_colmn from
(select *, avg(salary) over (partition by department) as avg_colmn
from employees) employees
where salary>avg_colmn;

select * from sales;
select * from employees1;
select * from  products;

-- 1.Question: Find the cumulative total sales amount for each employee, ordered by sale_date
SELECT employee_id,sale_date,sale_amount,
sum(sale_amount) over(partition by employee_id order by sale_date ) as sale
 from sales;
 
 -- 2.Question: Rank the sales for each product by sale_amount within each employee_id.
 select employee_id,product_id,sale_amount,
 dense_rank() over(partition by employee_id order by sale_amount) as rank_
 from sales;
 
 -- 3.Question: List each employee’s sales and the total sales they have made up to each sale date.
select * from sales;
select * from employees1;
select * from  products;

select employee_id,sale_amount,sale_date,
sum(sale_amount) over (partition by employee_id order by sale_date ) as sale_total
from sales;

-- 4.Question: Find the highest single sale made by each employee and compare each sale to this maximum.
 select * from sales;
 
 select employee_id, sale_amount,
 max(sale_amount) over (partition by employee_id ) as sale_made,
 sale_amount - max(sale_amount) over (partition by employee_id ) as sale_diff 
 from sales;
 
 -- 5.Question: Calculate the percentage of total sales that each sale contributes to the total sales of its employee.
select * from sales;

select employee_id,sale_id,sale_amount,
sum(sale_amount) over(partition by employee_id ) as total_sale,
(sale_amount / sum(sale_amount) over(partition by employee_id ))*100 as total_sale
from sales;

-- 6.	Question: Find the top 3 most expensive products in each category.

with my_cte as (    -- Common Table Expression
	select product_name,category,price,
    rank() over (partition by category order by price desc ) as exp_cat
    from products)
SELECT category, product_name, price
FROM my_cte
where exp_cat <= 3;
  
-- 7.Question: Find the top 2 sales amounts for each department based on each employee’s total sales
select * from sales;
select * from employees1;
select * from  products; 

select s.sale_amount,e.department,
dense_rank() over (order by sale_amount desc) as max_sale
from employees1 e
join sales s on e.employee_id=s.employee_id
limit 2;



-- 8.Question: Show each employee’s total sales and compare it with the average total sales across their department.
select * from employees1;

select e.employee_name,e.department,s.sale_amount ,
sum(s.sale_amount)  as total_sale,
avg(sum(s.sale_amount)) over (partition by department) as avg_sale
from employees1 e
join sales s on e.employee_id=s.employee_id;



-- 9.Question: Find the employees with total sales above the average sales of their respective departments.

select e.employee_name,e.department,s.sale_amount ,
sum(s.sale_amount) over (partition by department) as total_sale,
avg(s.sale_amount) over (partition by department) as avg_sale                   -- categorical dummyes
from employees1 e
join sales s on e.employee_id=s.employee_id;

with my_cte as (
select e.employee_name,e.department,s.sale_amount ,
sum(s.sale_amount) over (partition by department) as total_sale,
avg(s.sale_amount) over (partition by department) as avg_sale
from employees1 e
join sales s on e.employee_id=s.employee_id )
select department,sale_amount,total_sale,avg_sale from my_cte
where total_sale>avg_sale;


-- 10.Question: Identify the products whose total sales amount is greater than the average total sales of products in their category.

-- Q20: Write a query to calculate the cumulative total sales for each product, and ordered by the order date.
select * from products;
select * from sales;

select b.sale_date,b.sale_amount,a.category,
sum(b.sale_amount) over (partition by a.category order by sale_date) as cumm_sum
from products a
left join sales b on a.product_id=b.product_id;


-- Rank the employee based on their salary within each department , and return top 2 employee for each department.
select * from employees;

select  first_name,salary,department, 
dense_rank() over (partition by department order by salary desc) as rank_sal
from employees;

-- list the product_id and total_sales of product that have a total sales amount above the average salaes amunt.
select * from products;
select * from sales;

with cte as (
select a.product_id,a.product_name,b.sale_amount,
sum(b.sale_amount) over (partition by a.product_name) as total_sale,
avg(b.sale_amount) over (partition by a.product_name) as avg_sale
from products a
join sales b on a.product_id=b.product_id )

select product_id,product_name,total_sale,avg_sale
from cte
where total_sale > avg_sale;