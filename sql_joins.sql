use threepm;


CREATE TABLE Salesperson ( salesman_id INT PRIMARY KEY, 
Salesman VARCHAR(100), 
commission DECIMAL(5, 2), 
cust_code INT ); 

INSERT INTO Salesperson (salesman_id, Salesman, commission, cust_code) VALUES
(1, 'John Smith', 15.00, 101),
(2, 'Jane Doe', 10.00, 102),
(3, 'Alice Johnson', 12.50, 103),
(4, 'Bob Brown', 8.75, 104),
(5, 'Carol White', 13.00, 105),
(6, 'David Green', 14.00, 106),
(7, 'Emma Davis', 9.00, 107),
(8, 'Frank Black', 11.00, 108),
(9, 'Grace Adams', 16.00, 109),
(10, 'Hannah Clark', 10.50, 110),
(11, 'Ivy Lewis', 13.25, 111),
(12, 'Jack Martinez', 7.50, 112),
(13, 'Kelly Moore', 12.75, 113),
(14, 'Liam Taylor', 14.50, 114),
(15, 'Mia Anderson', 8.00, 115),
(16, 'Noah Thomas', 11.25, 116),
(17, 'Olivia Hernandez', 15.75, 117),
(18, 'Paul Robinson', 9.50, 118),
(19, 'Quinn Walker', 12.00, 119),
(20, 'Riley King', 13.50, 120),
(21, 'Sophia Scott', 10.00, 121),
(22, 'Tyler Green', 14.75, 122),
(23, 'Ursula Evans', 7.25, 123),
(24, 'Victor Hall', 12.25, 124),
(25, 'Wendy Young', 11.75, 125),
(26, 'Xander Carter', 8.50, 126),
(27, 'Yvonne Lee', 13.00, 127),
(28, 'Zachary Adams', 9.75, 128),
(29, 'Anna Collins', 10.25, 129),
(30, 'Bradley Turner', 14.25, 130);

CREATE TABLE Customer ( cust_code INT PRIMARY KEY, 
cust_name VARCHAR(100), 
City VARCHAR(100) ); 

INSERT INTO Customer (cust_code, cust_name, City) VALUES
(101, 'Acme Corp', 'New York'),
(102, 'Beta LLC', 'Los Angeles'),
(103, 'Gamma Inc', 'Chicago'),
(104, 'Delta Co', 'Houston'),
(105, 'Epsilon Ltd', 'Phoenix'),
(106, 'Zeta Enterprises', 'Philadelphia'),
(107, 'Eta Company', 'San Antonio'),
(108, 'Iota Solutions', 'San Diego'),
(109, 'Kappa Industries', 'Dallas'),
(110, 'Lambda LLC', 'San Jose'),
(111, 'Mu Corp', 'Austin'),
(112, 'Nu Ltd', 'San Francisco'),
(113, 'Xi Enterprises', 'Jacksonville'),
(114, 'Omicron Co', 'Indianapolis'),
(115, 'Pi Corp', 'Columbus'),
(116, 'Rho Solutions', 'Fort Worth'),
(117, 'Sigma Inc', 'Charlotte'),
(118, 'Tau Ltd', 'Detroit'),
(119, 'Upsilon Co', 'El Paso'),
(120, 'Phi Enterprises', 'Memphis'),
(121, 'Chi LLC', 'Baltimore'),
(122, 'Psi Corp', 'Boston'),
(123, 'Omega Ltd', 'Seattle'),
(124, 'Alpha Industries', 'Denver'),
(125, 'Beta Enterprises', 'Washington'),
(126, 'Gamma Solutions', 'Nashville'),
(127, 'Delta Corp', 'Louisville'),
(128, 'Epsilon Enterprises', 'Milwaukee'),
(129, 'Zeta Solutions', 'Las Vegas'),
(130, 'Eta Industries', 'Albuquerque');

CREATE TABLE  Orders ( ord_no INT PRIMARY KEY, 
purch_amt DECIMAL(10, 2), 
cust_code INT );

INSERT INTO Orders (ord_no, purch_amt, cust_code) VALUES
(1, 2500.00, 101),
(2, 1500.00, 102),
(3, 3000.00, 103),
(4, 1800.00, 104),
(5, 2200.00, 105),
(6, 2900.00, 106),
(7, 1700.00, 107),
(8, 2000.00, 108),
(9, 2400.00, 109),
(10, 2600.00, 110),
(11, 2100.00, 111),
(12, 2300.00, 112),
(13, 2500.00, 113),
(14, 1800.00, 114),
(15, 2200.00, 115),
(16, 2700.00, 116),
(17, 2400.00, 117),
(18, 2000.00, 118),
(19, 2800.00, 119),
(20, 2100.00, 120),
(21, 2900.00, 121),
(22, 2500.00, 122),
(23, 1800.00, 123),
(24, 2300.00, 124),
(25, 2600.00, 125),
(26, 2100.00, 126),
(27, 2700.00, 127),
(28, 2000.00, 128),
(29, 2400.00, 129),
(30, 2500.00, 130);

select * from customer;
select * from orders;
select * from salesperson;

insert into customer values
(135,'golu','Delhi'),
(139,'sadik','Mumbai');

insert into orders values
(212,3500,189),
(217,8412,190);

select customer.*, orders.purch_amt from customer
inner join orders on customer.cust_code=orders.cust_code;

select  a.*,b.* from customer a
left join  orders b on a.cust_code=b.cust_code
order by a.cust_code desc;

select a.*,b.* from customer a
right join orders b on a.cust_code=b.cust_code;

select a.*,b.* from customer a
left join orders b on a.cust_code=b.cust_code
union
select a.*,b.* from customer a
right join orders b on a.cust_code=b.cust_code;

select a.*,b.* from customer a
left join orders b on a.cust_code=b.cust_code
union all
select a.*,b.* from customer a
right join orders b on a.cust_code=b.cust_code;

-- Q1 from the following tables write a sql query to find the salesperson and customer who reside in the same city. 
-- return salesman,cust_name,city.
select a.*,b.Salesman from customer a
inner join salesperson b on a.cust_code=b.cust_code;

-- Q2 from the following table write a sql query to find those orders where the order amount exists between 500 and 2000.
-- return ord_no,purch_amt,cust_name,city.
select ord_no,a.cust_name,a.city,b.purch_amt from customer a
inner join orders b on a.cust_code=b.cust_code
where b.purch_amt between 500 and 2000;

-- Q3  
select commission,a.*,b.salesman from customer a
inner join salesperson b on a.cust_code=b.cust_code
where commission >12;

-- Q4
select a.cust_name,a.city,a.cust_code,salesman,commission,c.purch_amt from customer a
inner join salesperson b  on a.cust_code=b.cust_code
inner join orders c on a.cust_code=b.cust_code
where purch_amt>2000;

select a.cust_name,a.city,a.cust_code,salesman,commission,c.purch_amt from customer a
left join salesperson b  on a.cust_code=b.cust_code
left join orders c on a.cust_code=b.cust_code
where purch_amt>2000;
-- fetures  bolte hai columns ko aur no of records ko rows bolte hai 


-- Q5 
select * from customer;
select * from salesperson;

select a.salesman_id,cust_name from salesperson a
left join customer b on a.cust_code=b.cust_code
group by a.salesman_id 
having count(b.cust_code)>=1 or count(b.cust_code)=0
order by salesman_id asc;


-- Q6 Write a query to fetch the Salesman name, cust_name, and City for all salespeople along with their associated customers. 
-- make sure to only include records where both the Salesperson and the Customer have a matching cust_code.
select * from customer;
select * from orders;
select * from salesperson;

select salesman,a.cust_name,a.city from customer a
inner join salesperson b on a.cust_code=b.cust_code;

-- Q7 Write a query to find all salespeople and their associated customers, including those salespeople 
-- who have not yet made any sales (i.e., no matching records in the Orders table).
select * from customer;
select * from orders;
select * from salesperson;

select a.*,cust_name from salesperson a
left join customer b on a.cust_code=b.cust_code
left join orders c on a.cust_code=c.cust_code;

-- Q8 Write a query to find all customers and the salespeople who are associated with them.
-- Include customers who don’t have any assigned salespeople (using a RIGHT JOIN).
select * from customer;
select * from orders;
select * from salesperson;

select a.*, b.* from customer a
right join salesperson b on a.cust_code=b.cust_code;

-- Q9 Write a query to find the total sales amount (purch_amt) for each Salesman. 
-- Make sure to include salespeople who haven't made any sales yet.

select purch_amt,a.salesman from salesperson a
inner join orders b on a.cust_code=b.cust_code
group by Salesman
having sum(purch_amt);

SELECT s.Salesman, SUM(o.purch_amt) AS total_sales
FROM Salesperson s
LEFT JOIN Orders o ON s.cust_code = o.cust_code
GROUP BY s.Salesman;


-- Q10  Filtering with Joins (Salespeople in Specific Cities):
-- Write a query to list all Salesman names and their associated 
-- Customer names who have customers located in either Los Angeles or San Francisco.

select a.city,a.cust_name,salesman from customer a
inner join salesperson b on a.cust_code=b.cust_code
where city in('Los Angeles','San Francisco');

-- Q11  Join with Subquery (Top Salesperson by Total Sales):
-- Write a query to find the Salesman who has generated the highest total purch_amt from all their customers. 
-- You may need to use a subquery to calculate the total sales per salesperson.
 select a.Salesman ,b.purch_amt from salesperson a
inner join orders b on a.cust_code=b.cust_code
group by a.Salesman
order by sum(b.purch_amt) desc
limit 1;

-- using sum()
select a.Salesman , sum(b.purch_amt) from salesperson a
inner join orders b on a.cust_code=b.cust_code
group by a.Salesman
order by sum(b.purch_amt) desc
limit 1;
-- sub query
select a.salesman,b.purch_amt from salesperson a
inner join orders b on a.cust_code=b.cust_code
where salesman = (select a.salesman from salesperson a
				  inner join orders b on a.cust_code=b.cust_code
				  group by a.salesman
				  order by sum(b.purch_amt) desc
				  limit 1);

-- Q12 Write a query to fetch the Salesman name, cust_name, and total purch_amt from the Orders table for each order made by the customers.
select salesman,b.cust_name,a.purch_amt from orders a
inner join customer b on a.cust_code=b.cust_code
inner join salesperson c on a.cust_code=c.cust_code;


-- Q13 Cross Join (All Possible Pairs):
-- Write a query to generate all possible combinations of Salesman and Customer using a CROSS JOIN. 
-- This will create a Cartesian product between the two tables.
select * from customer;
select * from orders;
select * from salesperson;

select a.cust_name,b.salesman from customer a
cross join salesperson b;

-- Q14  Self Join (Compare Commissions):
-- Write a query using a self join to find pairs of salespeople where one has a higher commission than the other.
-- List both salespeople's names and their commissions.

select a.salesman as name1, a.commission as c1, b.salesman as name2 , b.commission as c2
from salesperson a
inner join salesperson b on a.commission>b.commission
order by a.commission desc;