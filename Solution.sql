use danny_dinner;
select * from sales_food;
select * from menu;
select * from members_food;

 -- Q1. What is the total amount each customer spent at the restaurant?  
select a.customer_id,sum(b.price) from sales_food a
inner join menu b on a.product_id=b.product_id
group by a.customer_id;
  
-- Q2. How many days has each customer visited the restaurant?
select customer_id,count(order_date) from sales_food
group by customer_id;

select * from sales_food;
select * from menu;
select * from members_food;

-- Q3. Which item was the most popular for each customer?
select customer_id,product_name,count_,rank_ from (
select a.customer_id,b.product_name,
count(b.product_name) over (partition by a.customer_id ) as count_,
rank() over (partition by a.customer_id order by b.product_name desc) as rank_
from sales_food a
inner join menu b on a.product_id=b.product_id ) as d1
where rank_=1;


-- Q4. What was the first item from the menu purchased by each customer?
with cte as (
select customer_id,product_name,order_date,
rank() over (partition by customer_id order by order_date asc) as s1
from sales_food a
inner join menu b on a.product_id=b.product_id
) 
select customer_id,product_name,order_date,s1 from cte
where s1=1;
  
-- Q5.What is the most purchased item on the menu and how many times was it purchased by all customers?
select * from sales_food;
select * from menu;
select * from members_food;

select b.product_name,count(a.product_id) from sales_food a
inner join menu b on a.product_id=b.product_id
group by b.product_name
order by count(a.product_id) desc;

-- Q6. Which item was purchased first by the customer after they became a member?
with cte as(
select a.customer_id,a.order_date,b.product_name,
rank() over (partition by a.customer_id order by a.order_date asc) as cust_rank
from sales_food a
join menu b on a.product_id=b.product_id
join members_food c on a.customer_id=c.customer_id
where c.join_date<a.order_date )
select  customer_id,order_date,product_name,cust_rank from cte
where cust_rank=1;

-- Q7. Which item was purchased just before the customer became a member?
with cte as(
select a.product_name,
dense_rank() over (partition by b.customer_id order by b.order_date) as rank_
from menu a
inner join sales_food b  on a.product_id=b.product_id
inner join members_food c on b.customer_id=c.customer_id
where b.order_date<c.join_date
)
select product_name,rank_ from cte
where rank_=1;

-- Q8. What is the total items and amount spent for each member before they became a member?
select a.customer_id,count(b.product_name),sum(b.price)
from sales_food a
inner join menu b on a.product_id=b.product_id
inner join members_food c on a.customer_id=c.customer_id
where a.order_date<c.join_date
group by b.product_id;

select * from sales_food;
select * from menu;
select * from members_food;
-- Q9. If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?
SELECT   customer_id,
SUM(CASE
WHEN product_name = 'sushi' THEN price*20
ELSE price*10
END) AS customer_points
FROM menu AS m INNER JOIN sales_food AS s USING(product_id)
GROUP BY customer_id
ORDER BY 1;

-- Q10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, 
-- not just sushi - how many points do customer A and B have at the end of January? 


-- Bonus Questions
-- Q1. Join All The Things 

/* Create basic data tables that Danny and his team can use to quickly derive insights without needing to join the underlying tables using SQL.
   Fill Member column as 'N' if the purchase was made before becoming a member and 'Y' if the after is amde after joining the membership. */

SELECT   customer_id,
         order_date,
         product_name,
         price,
         CASE WHEN order_date >= join_date THEN 'Y' ELSE 'N' 
         END AS member_
FROM     members_food RIGHT JOIN sales_food USING (customer_id)
					  INNER JOIN menu USING  (product_id)
ORDER BY 1;

-- Q2. Rank All The Things
/* Danny also requires further information about the ranking of customer products, 
   but he purposely does not need the ranking for non-member purchases so he expects null ranking values for the records when customers 
   are not yet part of the loyalty program. */

with cte as (
SELECT   customer_id,
         order_date,
         product_name,
         price,
         CASE WHEN order_date >= join_date THEN 'Y' ELSE 'N' 
         END AS member_
FROM     members_food RIGHT JOIN sales_food USING (customer_id)
					  INNER JOIN menu USING  (product_id)
ORDER BY 1
)
SELECT *,
	   CASE WHEN member_ = 'N' THEN NULL ELSE DENSE_RANK() OVER (PARTITION BY customer_id, member_ ORDER BY order_date) END AS ranking
FROM   cte;
  
  
  