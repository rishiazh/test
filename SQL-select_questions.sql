use threepm;
select * from employees;
-- select employees from a specfix city ('new york)
select *,city from employees
where city="new york";

-- find all the employees older then 40
select * from employees			
where age>40;

-- Q 4 count the number of employees in a department hr
select department,count(department) from employees
where department in('hr');

-- Q 5 list employees who joined in 'jan'
select * from employees
where monthname(joining_date)='january';

select * from employees
where joining_date between '2020-01-01' and '2020-01-31';

-- Q 6  retireve employees who do not blong to hr or it departments.
select * from employees
where department not in('it','hr'); 

-- Q 7 calculate the total salary by department 
select department,(salary) from employees
group by department;

-- Q •	Find employees whose salary is above the average salary in their department, and order the results by department and salary in descending order
select round(avg(salary),0) from employees;

select * from employees
where salary>(select avg(salary) from employees)
order by department desc, salary desc;


/* Q •	List the departments along with the count of employees, average salary, 
and maximum salary for each department, but only include departments with more than 3 employees.*/

select department, count(*), avg(salary), max(salary) from employees
group by department 
having count(*) >27;

-- • Find employees who joined before the average joining date in their department.
select * from employees
where joining_date<(select avg(joining_date) from employees);

-- q4 •	Retrieve the cities that have more than 1 employees and sort by the number of employees in descending order
select city,count(*) from employees
group by city
having count(*)>1;

select city,count(city) from employees
group by city
having count(city)>1;

-- q5 •	Find the department with the highest total salary, and retrieve all employees from that department.
select * from employees
where department=(select department from employees
				group by department
                order by sum(salary) desc
                limit 1);

-- Q •	Find employees who are earning the highest salary in their respective departments.
SELECT first_name, last_name, department, salary
FROM Employees
WHERE (department, salary) IN (
    SELECT department, MAX(salary)
    FROM Employees
    GROUP BY department
);

-- • List the top 3 departments with the highest average salary, and retrieve all employees from those departments?

select *,round(avg(salary),0) as highest_avg_salary from employees
group by department
order by avg(salary) desc
limit 3;
 
-- •	For each city, list the number of employed employees and the average salary, ordered by the average salary in descending order
select city,count(*) ,avg(salary) from employees
where emp_status='employed'
group by city
order by avg(salary) desc
limit 10;

-- •	Find the department with the second-highest total salary.
select department,max(salary) from employees;


select department,max(salary) from employees
where salary<(select max(salary) from employees);

select city,count(city) from employees
group by city
having count(city)>1;

