use threepm;
select * from customer;
select * from orders;
select * from salesperson;
-- case 
select a.cust_name,b.purch_amt,
case
when b.purch_amt>2000 then "Valuable"
when b.purch_amt=2000 then "Modrate"
else "Targeted Customer"
end as Customer_Segment from customer a
inner join orders b on a.cust_code=b.cust_code;

select b.purch_amt,
case
when b.purch_amt>2000 then "Valuable"
when b.purch_amt=2000 then "Modrate"
else "Targeted Customer"
end as Customer_Segment from orders b;

select b.purch_amt,
case
when b.purch_amt>2000 then "Valuable"
when b.purch_amt=2000 then "Modrate"
end as Customer_Segment from orders b;

-- Q1 Q1. Select employees first name, last name, job_id and salary whose first name starts with alphabet S
select * from employees;
select first_name,last_name,id,salary from employees
where first_name like 's%';

-- Q2 Q2.  Write a query to select employee with the highest salary
select * from employees;
select first_name,last_name,max(salary)  from employees
group by first_name
having max(salary);  -- work with condition 

select first_name,max(salary) from employees
limit 1;

-- Q3 Q3. Select employee with the second highest salary
select max(salary) as 2nd_highest from employees
where salary <(select max(salary) from employees
where salary <(select max(salary) from employees));

-- Q4 Q4. Find the count of employees in each department
select department,count(id) from employees
group by department
order by count(id)  desc ;

-- Q5 Q5. Write a query to divide people into three groups based on their salaries
select * from employees;

select department,salary ,
case
 when salary>75000 then 'Higher'
 when salary=75000 then 'Middle'
 when salary<=75000 then  'lower'
 else 'backword '
 end as about_salary from employees
 group by department;

-- Q6. Write an SQL query to display employees who earn more than the average salary in that company
select first_name,salary from employees
where salary> (select avg(salary) from employees);

select avg(salary) from employees; -- deallocate prepare
 
-- Q7 Q7. Find the employees who joined the company after 15th of the month
select * from employees; 
select first_name,joining_date from employees
where day(joining_date)> 15;

select first_name,joining_date from employees
where day(joining_date)> 15 and month(joining_date)=01;

-- Q8. Display the managers and the reporting employees who work in different departments
select * from employees;
select department from employees
where department in('managers','reporting employees');

-- Q9. Write a query to select all employees whose last name contains the letter 'a' and job_id starts with 'IT
select last_name,department from employees
where last_name like 'a%' and department='it';

-- Q10. Retrieve department names and the average salary of each department, sorted by the average salary in descending order.
select department ,avg(salary) from employees
group by department
having avg(salary)
order by avg(salary) desc;

-- Q11. Write a query to select employees who have a salary greater than 80% of the maximum salary in the company.
select first_name,salary from employees
where salary > (select max(salary)*80/100 from employees );


-- Q12. Display the top 5 employees who have the highest salary.
select first_name,salary from employees
order by salary desc
limit 5;


-- Q13. Write a query to list all employees who work under the same manager.
select * from employees;



-- Q14. Select the employees whose salary is between 40,000 and 60,000 and who work in the 'HR' or 'Finance' departments
select first_name,department from employees
where salary between 40000 and 60000 and department ='hr' or 'finance';

-- Q.15 Write an SQL query to calculate the total salary expenditure for each department.
select department,sum(salary) from employees
group by department;

-- Q16. Write a query to display the names of employees whose hire date is before January 1, 2015.
select * from employees;
select first_name,joining_date from employees
where year(joining_date) < '2017-01-01';

select first_name,joining_date from employees
where joining_date > '2017-01-01';

select first_name,joining_date from employees
where year(joining_date) > 2015 and month(joining_date) = 'january';

-- Q17. Find the number of employees who are working in the same department as their manager


-- Q18. Write a query to display employees who have not been assigned a manager.


-- Q19. Write a query to categorize employees based on their years of 
-- service: 'New' if less than 5 years, 'Experienced' if between 5 and 10 years, and 'Veteran' if more than 10 years.
select * from employees;

select first_name, floor((datediff(now(),joining_date)/365)) from employees; 

select first_name, floor((datediff(now(),joining_date)/365)) ,
case 
when floor((datediff(now(),joining_date)/365)) < 5 then 'new'
when floor((datediff(now(),joining_date)/365)) between 5 and 10 then 'experienced'
when floor((datediff(now(),joining_date)/365))> 10 then 'veteran'
else 'none'
end as emp_categories from employees;


-- Q20. Write a query to assign bonus percentages based on salary 
-- ranges: 10% if salary is less than 30,000, 15% if between 30,000 and 60,000, and 20% if more than 60,000.

select first_name, salary ,
case 
when salary < 30000 then '10%'
when salary between 30000 and 60000 then '20%'
when salary > 60000 then '30%'
end as bonus_categories from employees;


-- Q21. Classify employees into performance tiers based on their 
-- salary: 'Low Performer' if below the average salary, 'Average Performer' if equal to the average salary, 
-- and 'High Performer' if above the average salary



-- Q22. Write a query to categorize employees as 'On Probation' if they have been with 
-- the company for less than a year, and 'Regular Employee' otherwise.

select first_name, floor(datediff(now(),joining_date)/365) as experienced,
case
when floor(datediff(now(),joining_date)/365) <3 then 'on Probation'
when floor(datediff(now(),joining_date)/365) >1 then 'regular Employee'
end as emp_cat from employees;


-- Q23. Classify employees into salary bands: 'Low', 'Medium', 'High', or 'Very High' based on custom salary thresholds.


-- Q24 solve this query  there is two tables customer and orders ,Find all customers whose total purchase amount exceeds 
-- the total purchase amount of at least one other customer.Return cust_name, total_purch_amt.

SELECT 
    c1.cust_name, 
    SUM(o1.purch_amt) AS total_purch_amt
FROM 
    customer c1
INNER JOIN 
    orders o1 ON c1.cust_code = o1.cust_code
INNER JOIN 
    customer c2 ON c1.cust_code != c2.cust_code
INNER JOIN 
    orders o2 ON c2.cust_code = o2.cust_code
GROUP BY 
    c1.cust_code, c1.cust_name
HAVING 
    SUM(o1.purch_amt) > SUM(o2.purch_amt);

