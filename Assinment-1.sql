use threepm;
-- Create Sales_Data Table
CREATE TABLE Sales_Data (
    order_id INT PRIMARY KEY,
    SKUs_bought VARCHAR(255),
    price DECIMAL(10, 2),
    discount DECIMAL(10, 2),
    order_date DATE,
    customer_id VARCHAR(50),
    order_city VARCHAR(100),
    channel_type ENUM('online', 'offline')
);

-- Create Product_Details Table
CREATE TABLE Product_Details (
    SKU VARCHAR(50) PRIMARY KEY,
    MRP DECIMAL(10, 2),
    product_name VARCHAR(100)
);

-- Create Customer_Details Table
CREATE TABLE Customer_Details (
    customer_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100),
    phone_number VARCHAR(15),
    email VARCHAR(100)
);

-- Insert 20 random SKUs into Product_Details
INSERT INTO Product_Details (SKU, MRP, product_name)
VALUES
('ST001', 300, 'Steel Mug'),
('ST002', 500, 'Steel Plate'),
('ST003', 700, 'Steel Bowl'),
('ST004', 600, 'Steel Bottle'),
('ST005', 800, 'Steel Pot'),
('CR001', 200, 'Ceramic Cup'),
('CR002', 400, 'Ceramic Plate'),
('CR003', 350, 'Ceramic Vase'),
('CR004', 450, 'Ceramic Jar'),
('CR005', 550, 'Ceramic Bowl'),
('ST006', 650, 'Steel Tray'),
('ST007', 750, 'Steel Kettle'),
('ST008', 850, 'Steel Pan'),
('ST009', 950, 'Steel Tumbler'),
('ST010', 1050, 'Steel Strainer'),
('CR006', 300, 'Ceramic Pitcher'),
('CR007', 700, 'Ceramic Coaster'),
('CR008', 650, 'Ceramic Dish'),
('CR009', 800, 'Ceramic Gravy Boat'),
('CR010', 1000, 'Ceramic Serving Plate');

INSERT INTO Customer_Details (customer_id, name, phone_number, email)
VALUES
('CUST001', 'Alice Johnson', '1234567890', 'alice.johnson@example.com'),
('CUST002', 'Bob Smith', '0987654321', 'bob.smith@example.com'),
('CUST003', 'Charlie Brown', '1122334455', 'charlie.brown@example.com'),
('CUST004', 'David Clark', '2233445566', 'david.clark@example.com'),
('CUST005', 'Emily Davis', '3344556677', 'emily.davis@example.com'),
('CUST006', 'Frank White', '4455667788', 'frank.white@example.com'),
('CUST007', 'Grace Lee', '5566778899', 'grace.lee@example.com'),
('CUST008', 'Helen Green', '6677889900', 'helen.green@example.com'),
('CUST009', 'Ian Black', '7788990011', 'ian.black@example.com'),
('CUST010', 'Jack Hall', '8899001122', 'jack.hall@example.com'),
('CUST011', 'Karen Adams', '9988776655', 'karen.adams@example.com'),
('CUST012', 'Laura White', '8765432109', 'laura.white@example.com'),
('CUST013', 'Mike Brown', '7654321098', 'mike.brown@example.com'),
('CUST014', 'Nina Taylor', '6543210987', 'nina.taylor@example.com'),
('CUST015', 'Oliver King', '5432109876', 'oliver.king@example.com'),
('CUST016', 'Paul Harris', '4321098765', 'paul.harris@example.com'),
('CUST017', 'Quincy Allen', '3210987654', 'quincy.allen@example.com'),
('CUST018', 'Rachel Moore', '2109876543', 'rachel.moore@example.com'),
('CUST019', 'Steve Young', '1098765432', 'steve.young@example.com'),
('CUST020', 'Tina Scott', '1987654321', 'tina.scott@example.com');

INSERT INTO Sales_Data (order_id, SKUs_bought, price, discount, order_date, customer_id, order_city, channel_type)
VALUES
(1, 'ST001, CR002', 500, 50, '2023-12-01', 'CUST001', 'New York', 'online'),
(2, 'ST002, CR003', 600, 40, '2023-12-02', 'CUST002', 'Los Angeles', 'offline'),
(3, 'ST004', 700, 60, '2023-12-03', 'CUST003', 'Chicago', 'online'),
(4, 'CR005, ST005', 900, 80, '2023-12-04', 'CUST004', 'Houston', 'offline'),
(5, 'ST003, CR001, CR002', 1000, 100, '2023-12-05', 'CUST005', 'Phoenix', 'online'),
(6, 'CR003', 350, 20, '2023-12-06', 'CUST006', 'San Diego', 'online'),
(7, 'ST006, ST007', 1400, 150, '2023-12-07', 'CUST007', 'Dallas', 'offline'),
(8, 'ST008', 850, 70, '2023-12-08', 'CUST008', 'San Jose', 'online'),
(9, 'CR006', 300, 30, '2023-12-09', 'CUST009', 'Austin', 'offline'),
(10, 'ST009, CR007', 1750, 200, '2023-12-10', 'CUST010', 'Jacksonville', 'online'),
(11, 'CR008', 650, 50, '2023-12-11', 'CUST011', 'New York', 'offline'),
(12, 'ST010, CR009', 1850, 250, '2023-12-12', 'CUST012', 'Los Angeles', 'online'),
(13, 'ST001, ST002', 800, 60, '2023-12-13', 'CUST013', 'Chicago', 'offline'),
(14, 'CR003, CR004', 700, 100, '2023-12-14', 'CUST014', 'Houston', 'online'),
(15, 'ST004, CR005', 1100, 150, '2023-12-15', 'CUST015', 'Phoenix', 'offline'),
(16, 'CR006, CR010', 1300, 300, '2023-12-16', 'CUST016', 'San Diego', 'online'),
(17, 'ST007, CR007', 1500, 180, '2023-12-17', 'CUST017', 'Dallas', 'offline'),
(18, 'ST008, CR008', 1450, 220, '2023-12-18', 'CUST018', 'San Jose', 'online'),
(19, 'ST009, CR009', 1700, 250, '2023-12-19', 'CUST019', 'Austin', 'offline'),
(20, 'ST010', 1050, 100, '2023-12-20', 'CUST020', 'Jacksonville', 'online');

select *from Product_Details;
select *from Customer_Details;
select *from Sales_Data;

-- 1.	Name and list the details of all customers who have placed multiple orders and have purchased a ceramic item at least once.
select a.* , b.SKUs_bought from Sales_data b
inner join Customer_details a on a.customer_id=b.customer_id
where b.SKUs_bought like "%ST%" and b.SKUs_bought like "%CR%";

-- 2.	Find the most expensive bestseller.
SELECT pd.SKU, pd.product_name, SUM(sd.price - sd.discount) AS total_revenue FROM Sales_Data sd
Inner JOIN Product_Details pd ON FIND_IN_SET(pd.SKU, sd.SKUs_bought) > 0
GROUP BY pd.SKU
ORDER BY total_revenue DESC
LIMIT 1;


WITH FirstTimeOnline AS (
    SELECT 
        customer_id, 
        MIN(order_date) AS first_online_date
    FROM 
        Sales_Data
    WHERE 
        channel_type = 'online'
    GROUP BY 
        customer_id
),

-- 3. For all customers who have purchased for the first time online, calculate the average number of times they purchase offline in a month
OfflinePurchases AS (
    SELECT ft.customer_id,COUNT(sd.order_id) AS offline_orders,TIMESTAMPDIFF(MONTH, MIN(sd.order_date), MAX(sd.order_date)) + 1 AS active_months
    FROM 
        FirstTimeOnline ft
    JOIN 
        Sales_Data sd ON ft.customer_id = sd.customer_id
    WHERE 
        sd.channel_type = 'offline'
    GROUP BY 
        ft.customer_id
)
SELECT 
    AVG(offline_orders / active_months) AS avg_offline_orders_per_month
FROM 
    OfflinePurchases;


-- 4.	List the top 7 spenders in Y city (here Y should be a user-input variable)
SELECT 
    c.name, 
    c.email, 
    SUM(s.price - s.discount) AS total_spent
FROM 
    Customer_Details c
JOIN 
    Sales_Data s ON c.customer_id = s.customer_id
WHERE 
    s.order_city = 'Y' -- Replace 'Y' with the actual city name
GROUP BY 
    c.customer_id
ORDER BY 
    total_spent DESC
LIMIT 7;
