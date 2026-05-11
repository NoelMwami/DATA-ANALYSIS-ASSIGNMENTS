-- CREATE schema assignment
CREATE SCHEMA assignment;
set search_path = Assignment;

-- CREATE Customers table in the assignment schema
CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);
-- CREATE Products table in the assignment schema
CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);
-- CREATE Sales table in the assignment schema
CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO assignment.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from assignment.customers;

-- Inserting data into assignment.Products table
INSERT INTO assignment.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment.products;

-- Inserting data into assignment.Sales table
INSERT INTO assignment.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

-- Inserting data into assignment.Inventory table
INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

-- Select all data from assignment.Customers table
SELECT * FROM assignment.Customers;

-- Select all data from assignment.Products table
SELECT * FROM assignment.Products;

-- Select all data from assignment.Sales table
SELECT * FROM assignment.Sales;

-- Select all data from assignment.Inventory table
SELECT * FROM assignment.Inventory;

-- 1. Write a query to select all data from the `Customers` table.

select * from assignment.customers;

-- 2. Write a query to select the total number of products from the `Products` table.

select count (*) from assignment.products;

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.

select product_name, price
from assignment.products 
where price > 500;

-- 4. Write a query to find the average price of all products from the `Products` table.
select AVG(price) 
from assignment.products;

-- 5. Write a query to find the total sales amount across all records from the `Sales` table.

select sum(total_amount) from assignment.sales;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.

select distinct(membership_status)
from assignment.customers;

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
select concat(first_name, ' ',last_name) as full_name
from assignment.customers;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
select * from assignment.products 
where category = 'Electronics';

-- 9. Write a query to find the highest price from the `Products` table.
select max(price)
from assignment.products;

-- 10. Write a query to count the number of sales for each product from the `Sales` table.


SELECT product_id, COUNT(*) AS total_sales
FROM assignment.Sales
GROUP BY product_id;


-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.

select product_id, SUM(quantity_sold) AS total_quantity_sold
from  assignment.sales
group by product_id;


-- 12. Write a query to find the lowest price of products in the `Products` table.

select min(price)
from assignment.products;

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.

select distinct c.customer_id,first_name,last_name
from assignment.customers c
join assignment.sales s
on s.customer_id = c.customer_id
join assignment.products p
on p.product_id = s.product_id
where price > 1000;

-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and Show product name and total sales amount per product

select p.product_id, p.product_name, sum(s.total_amount) AS total_amount
from assignment.products p
join assignment.Sales s 
on p.product_id = s.product_id
group by p.product_id, p.product_name;
 
-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.

select c.customer_id, c.first_name,c.last_name, sum(s.total_amount) AS total_Spent
from assignment.customers c
join assignment.Sales s 
on c.customer_id = s.customer_id
group by c.customer_id;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.

select c.customer_id,first_name,last_name,p.product_name, sum(s.quantity_sold) as Total_sold_quantity
from assignment.customers c
join assignment.sales s
on s.customer_id = c.customer_id
join assignment.products p
on p.product_id = s.product_id
group by c.customer_id,p.product_id;

-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
select
    c1.customer_id as customer_id,
    c1.first_name as customer1_First_name,
    c1.last_name as customer1_last_name,
    c2.customer_id as customer2_id,
    c2.first_name as customer2_name,
    c2.last_name as customer2_last_name,
    c1.membership_status
from assignment.Customers c1
JOIN assignment.Customers c2
    ON c1.membership_status = c2.membership_status
    AND c1.customer_id < c2.customer_id;

-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.

select p.product_id, p.product_name, sum(s.quantity_sold) AS total_Quantity_Sold
from assignment.products p
join assignment.Sales s 
on p.product_id = s.product_id
group by p.product_id, p.product_name;

-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.

select product_id,Product_name
from assignment.products
where stock_quantity < 10;

-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with total sales quantity greater than 5.

select p.product_id, p.product_name, sum(s.quantity_sold) AS total_Quantity_Sold
from assignment.products p
join assignment.Sales s 
on p.product_id = s.product_id
group by
    p.product_id, 
    p.product_name
having SUM(s.quantity_sold) > 5;

-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.

select s.customer_id, p.category
from assignment.products p
join assignment.Sales s 
on p.product_id = s.product_id
where 
p.category IN ('Electronics', 'Appliances');

-- 22. Write a query to calculate the total sales amount per product and group the result by product name.

select p.product_id, p.product_name, p.category, sum(s.total_amount) as Product_Total_Amount
from assignment.products p
join assignment.Sales s 
on p.product_id = s.product_id
group by
    p.product_id, 
    p.product_name;

-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.

select c.customer_id,first_name,last_name
from assignment.customers c
join assignment.sales s
on s.customer_id = c.customer_id
where s.sale_date < '2023-12-31';

-- 24. Write a query to find the customers with the highest total sales in 2023.

SELECT 
    s.customer_id,
    SUM(s.quantity_sold) AS total_sales
FROM assignment.sales s
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY s.customer_id
ORDER BY total_sales DESC
LIMIT 1;

-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.

select p.product_id, p.product_name, p.price
from assignment.products p
join assignment.Sales s 
on p.product_id = s.product_id
WHERE p.price = (
    SELECT MAX(price) 
    FROM assignment.products
);
-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
select c.customer_id, c.first_name,c.last_name, sum(s.total_amount) AS total_Spent
from assignment.customers c
join assignment.Sales s 
on c.customer_id = s.customer_id
group by c.customer_id
having SUM(S.total_amount)>500;

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
select c.customer_id,c.first_name,c.last_name, sum(s.quantity_sold) as Total_sold_quantity
from assignment.customers c
join assignment.sales s
on s.customer_id = c.customer_id
join assignment.products p
on p.product_id = s.product_id
where c.membership_status IN ('Gold')
group by c.customer_id,c.first_name,c.last_name
;

-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).
select * from assignment.inventory;
select p.product_id, p.product_name,i.stock_quantity
from assignment.products p
join assignment.inventory i
on p.product_id = i.product_id
WHERE p.stock_quantity < 10;

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
select * from assignment.inventory;
select c.customer_id,first_name,
		last_name,
		p.product_name, 
		sum(s.quantity_sold) as Total_sold_quantity
from assignment.customers c
join assignment.sales s
on s.customer_id = c.customer_id
join assignment.products p
on p.product_id = s.product_id
group by c.customer_id,
		p.product_id
having sum(s.quantity_sold) > 3;

-- 30. Write a query to find the average quantity sold per product.

select product_id, AVG(quantity_sold)
from assignment.sales 
group by product_id;
-- 31. Write a query to find the number of sales made in the month of December 2023.
select
    SUM(quantity_sold) AS total_sales
from assignment.sales 
where extract (month FROM sale_date) = 12
and extract (year from sale_date)= 2023
;

select * from assignment.sales;
-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
select
    s.customer_id,
    SUM(s.total_amount) AS total_sales_amount
from assignment.sales s
where extract (year from s.sale_date) = 2023
group by s.customer_id
order by total_sales_amount DESC
;
-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
select
    p.product_id,
    p.product_name,
    i.stock_quantity,
    SUM(s.quantity_sold) AS total_sold
from assignment.products p
join assignment.sales s
    on p.product_id = s.product_id
join assignment.inventory i
    on p.product_id = i.product_id
group by 
    p.product_id,
    p.product_name,
    i.stock_quantity
having 
    i.stock_quantity < 5;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
select * from assignment.sales;
select product_id, 
		sum(quantity_sold) as Total_Sales
from assignment.sales
group by product_id
order by total_Sales DESC
;

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
select * from assignment.sales;
select 
    c.customer_id,
    c.first_name,
    c.last_name,
    s.sale_date,
    c.registration_date
FROM assignment.customers c
JOIN assignment.sales s
    ON c.customer_id = s.customer_id
WHERE s.sale_date BETWEEN c.registration_date 
                      AND c.registration_date + INTERVAL '7 days';

-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.

select p.product_id, p.product_name, p.price
from assignment.products p
join assignment.Sales s 
on p.product_id = s.product_id
where p.price between 100 and 500 
group by p.product_id,
		   product_name
;		   
    
-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.

select 
    customer_id,
    COUNT(*) AS total_purchases
from assignment.sales
group by customer_id
order by total_purchases desc
limit 1
;

-- 38. Write a query to find the total quantity of products sold per customer.

select customer_id, sum(quantity_sold) as Total_Quatity
from assignment.sales
group by customer_id;


-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.

select 
    product_id,
    stock_quantity,
    'HIGHEST' as stock_type
from assignment.inventory
where stock_quantity = (select max(stock_quantity) from assignment.inventory)
union all
select 
    product_id,
    stock_quantity,
    'LOWEST' as stock_type
from assignment.inventory
where stock_quantity = (select min(stock_quantity)from assignment.inventory)
;

-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
select * from assignment.sales;

select 
p.product_id,
p.product_name,
sum(s.quantity_sold) as total_quantity,
sum(s.total_amount) as total_revenue
from assignment.products p
join 
assignment.sales s 
on p.product_id = s.product_id 
where product_name ILIKE '%phone%'
group by p.product_id, 
		p.product_name
;

-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.

select 
		c.customer_id,
		p.product_name,
		c.first_name,
		sum(s.total_amount) as total_sales
from assignment.customers c
inner join assignment.sales s
on s.customer_id = c.customer_id
inner join assignment.products p
on p.product_id = s.product_id
where c.membership_status = 'Gold'
group by c.customer_id ,
		p.product_name,
		c.first_name ;

-- 42. Write a query to find the total sales of products by category.

select * from assignment.products;
select sum(s.total_amount) as Total_Amount,
			p.category
from assignment.products p
inner join 
assignment.sales s 
on p.product_id = s.product_id 
group by p.category,
		Total_amount 
;

-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.

select sum(s.total_amount) as Total_Amount,
			p.product_name,
			TO_CHAR(s.sale_date, 'YYYY') as sales_year,
            TO_CHAR(s.sale_date, 'MM') as sales_month
from assignment.products p
inner join 
assignment.sales s 
on p.product_id = s.product_id 
group by sales_year,
		sales_month,
		product_name
;

-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
select * from assignment.inventory;
select s.product_id,
		i.stock_quantity
from assignment.inventory i 
inner join
assignment.sales s
on i.product_id = s.product_id
where i.stock_quantity > 0
;

-- 45. Write a query to find the top 5 customers who have made the highest purchases.
select c.customer_id,
		c.first_name as name,
		sum(s.total_amount) as Total_purchases
from assignment.sales s
inner join assignment.customers c
on c.customer_id = s.customer_id
group by c.Customer_id
order by Total_purchases desc
limit 5
;

-- 46. Write a query to calculate the total number of unique products sold in 2023.

select count (distinct product_id) as Unique_products
from assignment.sales
where 
extract(year from sale_date) = 2023
;

-- 47. Write a query to find the products that have not been sold in the last 6 months.
select * from assignment.sales;
select *  from assignment.products;

SELECT 
    p.product_name,
    p.product_id
FROM assignment.products p
LEFT JOIN assignment.sales s
    ON p.product_id = s.product_id
   AND s.sale_date >= CURRENT_DATE - INTERVAL '6 months'
WHERE s.product_id IS NULL;


-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.

select p.product_id,
		sum(s.quantity_sold) as Quantity_sold,
		p.price 
from
assignment.products p
join
assignment.sales s
on s.product_id = p.product_id 
where p.price between 200 and 800
group by p.product_id;

-- 49. Write a query to find the customers who spent the most money in the year 2023.

select c.customer_id,
		sum(s.total_amount) as Total_sales,
		c.first_name
from assignment.sales S
join assignment.customers c
on c.customer_id = s.customer_id
where 
extract(year from sale_date) = 2023
group by c.first_name,
		c.customer_id 
order by total_sales desc 
;


-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.

select COUNT (p.product_id) as Total_sales,
			p.product_name,
			s.quantity_sold
from
assignment.products p
join
assignment.sales s
on s.product_id = p.product_id 
where p.price > 200
group by p.product_id, 
		p.product_name,
		s.Quantity_sold
having COUNT (p.product_id) >=100
;

-- SUBQUERY QUESTIONS

-- 51. Which customers have spent more than the average spending of all customers?
select * from assignment.sales;

select customer_id,total_amount
from assignment.sales 
where total_amount >(select avg(total_amount)
from assignment.sales)
group by total_amount,
		customer_id
;

-- 52. Which products are priced higher than the average price of all products?

select product_name,price,product_id
from assignment.products
where price >(select avg(price)
from assignment.products);

-- 53. Which customers have never made a purchase?
select * from assignment.sales;

select c.customer_id,first_name, last_name
from assignment.customers c
left join 
assignment.sales s
on c.customer_id = s.customer_id
where s.customer_id is null
;

-- 54. Which products have never been sold?

select product_name,p.product_id
from assignment.products p
left join 
assignment.sales s
on p.product_id = s.product_id 
where s.product_id is null
;

-- 55. Which customer made the single most expensive purchase (total amount)?

select c.customer_id,
		sum(s.total_amount) as Total_sales,
		c.first_name
from assignment.sales S
join assignment.customers c
on c.customer_id = s.customer_id
group by c.customer_id,
			first_name
order by total_sales desc 
limit 1;

---OR

select customer_id, MAx(total_amount)
from assignment.sales
group by customer_id
order by max(total_amount) desc 
limit 1;

-- 56. Which products have total sales greater than the average total sales across all products?

select product_name,p.product_id, sum(s.total_amount) as total_sales
from assignment.products p
join assignment.sales s 
on s.product_id = p.product_id
group by p.product_name,
		p.product_id
having sum (s.total_amount)>(select avg(s.total_amount)from assignment.sales)
;

SELECT 
    p.product_name,
    p.product_id, 
    SUM(s.total_amount) AS total_sales
FROM assignment.products p
JOIN assignment.sales s 
    ON s.product_id = p.product_id
GROUP BY 
    p.product_name,
    p.product_id
HAVING SUM(s.total_amount) > (
    SELECT AVG(product_total) 
    FROM (
        SELECT SUM(total_amount) AS product_total
        FROM assignment.sales
        GROUP BY product_id
    ) AS product_averages
);

-- 57. Which customers registered earlier than the average registration date?
-- Average of a date column can be calculated using; SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE FROM assignment.customers

select customer_id, first_name,Last_name,registration_date
from assignment.customers
where registration_date <(SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))
::DATE FROM assignment.customers)
;

-- 58. Which products have a price higher than the average price within their own category?

select 
product_id,
product_name,
category,
price
from assignment.products p1
where price>(
SELECT AVG(price) from assignment.products p2
where p1.category= p2.category)
;

-- 59. Which customers have spent more than the customer with ID = 10?
select customer_id, sum(total_amount) as Customer_TotalSpent
from assignment.sales 
where total_amount>
(select sum(total_amount)
from assignment.sales 
where customer_id = 10)
group by customer_id
;

select sum(total_amount)
from assignment.sales 
where customer_id = 10

-- 60. Which products have total quantity sold greater than the overall average quantity sold?
select * from assignment.sales;

SELECT 
    product_id,
    SUM(quantity_sold) AS quantity_sold
FROM assignment.sales
GROUP BY product_id
HAVING SUM(quantity_sold) > (
    SELECT AVG(product_total)
    FROM (
        SELECT SUM(quantity_sold) AS product_total
        FROM assignment.sales
        GROUP BY product_id)
);

-- COMMON TABLE EXPRESSIONS (CTEs)

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.
with Highest_Spenders as 
( select customer_id,Sum(total_amount) as Total_Spent
from assignment.sales
group by customer_id)
select customer_id, Total_Spent 
from Highest_Spenders 
order by total_spent DESC
limit 5;


-- 62.Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.
select * from assignment.sales;
with sold_products as 
(select product_id, sum(quantity_sold) as total_products
from assignment.sales 
group by product_id)
select product_id, total_products
from sold_products 
order by total_products DESC
limit 3;

-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
with category_sales as 
( select p.category, sum(s.total_amount) as total_Revenue
from assignment.products p
join assignment.sales s on 
p.product_id = s.product_id
group by p.category)
select category,total_Revenue
from category_sales 
order by total_Revenue desc;

-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.
with customer_purchases as 
(select customer_id , sum(quantity_sold) as total_purchases
from assignment.sales
group by customer_id)
select customer_id , total_purchases 
from customer_purchases 
where total_purchases > 2;

-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.

with total_products as 
(select product_id, sum(quantity_sold) as product_totals
from assignment.sales
group by product_id) 
select product_id,Product_totals
from total_products
where product_totals >(select avg(product_totals)
from total_products)
;

-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.

with total_spending as 
(select customer_id, sum(total_amount) as customer_spending
from assignment.sales
group by customer_id)
select customer_id, customer_spending
from total_spending 
where customer_spending > (select avg(customer_spending)
from total_spending)
;

-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.
with total_revenue as 
(select product_id, sum(total_amount) as total_revenue_pdt
from assignment.sales
group by product_id)
select product_id, total_revenue_pdt
from total_revenue 
order by total_revenue_pdt desc;



-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.
with monthly_sales as
(select extract (month FROM sale_date) as month, sum(total_amount) as monthly_rev
from assignment.sales 
group by sale_date)
select monthly_rev, month
from monthly_sales
order by monthly_rev desc
limit 1;

-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.
with Product_sales as
(select product_id, count(product_id) as customer_count
from assignment.sales
group by product_id)
select customer_count,product_id
from product_sales
where customer_count >3;

-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.
with Quantity_sold as
(select product_id, sum(quantity_sold)as product_sales
from assignment.sales
group by product_id)
select product_id, product_sales
from Quantity_sold 
where product_sales < (select avg(product_sales) from quantity_sold);

-- WINDOW FUNCTION QUESTIONS

-- 71. Rank customers based on the total amount they have spent.
SELECT
customer_id, sum(total_amount) as Sum_totals,
RANK() OVER (ORDER BY sum(total_amount)DESC) AS Spending_rank
FROM assignment.sales
group by customer_id;

-- 72. Rank products based on total quantity sold.
select product_id, sum(quantity_sold) as total_quantity,
RANK() over (order by  sum(quantity_sold)desc ) as product_rank 
from assignment.sales 
group by product_id;

-- 73. Identify the 3rd highest spending customer.
with customer_rank as 
(select customer_id, sum(total_amount) as total_quantity,
dense_rank()over (order by sum(total_amount) desc) as spend_rank
from assignment.sales 
group by customer_id)
select total_quantity,customer_id,spend_rank
from customer_rank
where spend_rank = 3;

-- 74. Identify the 2nd most expensive product.
with product_rank as 
(select product_id, price,
dense_rank()over (order by price desc) as product_rank
from assignment.products
group by product_id)
select price,product_id,product_rank
from product_rank
where product_rank = 2;

-- 75. Show the ranking of products within each category based on price.

select product_id,product_name, price,category,
dense_rank() over (partition by category 
order by price desc) as category_rank
from assignment.products;

-- 76. Show the ranking of customers based on the number of purchases they made.
select customer_id, count(customer_id)  as customer_count,
dense_rank() over (order by count(customer_id) desc) as customer_rank
from assignment.sales
group by customer_id;

-- 77. Show the running total of sales amounts ordered by sale_date.

select sale_date,total_amount,
sum (total_amount) over (order by (sale_date)) as running_total
from assignment.sales;

-- 78. Show the previous sale amount for each sale ordered by sale_date.
select 
sale_date,
total_amount,
lag(total_amount) over (order by(sale_date)) as previous_amount 
from assignment.sales;

-- 79. Show the next sale amount for each sale ordered by sale_date.

select 
sale_date,
total_amount,
lead(total_amount) over (order by(sale_date)) as Next_amount 
from assignment.sales;

-- 80. Divide customers into 4 groups based on total spending.
select 
	customer_id,
	sum(total_amount),
ntile(4) over (order by (sum(total_Amount)) desc ) as Spending_group
from assignment.sales
group by customer_id;

-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?
select s.customer_id, p.category,p.product_id
from assignment.sales s
inner join assignment.products p
on p.product_id = s.product_id 
group by s.customer_id, p.category,p.product_id
having count(distinct(p.category)) > 1;

-- 82. Which customers purchased products within 7 days of registering?

select c.customer_id,s.sale_date,c.registration_date
from assignment.customers c
inner join assignment.sales s
on c.customer_id = s.customer_id 
where s.sale_date <= c.registration_date + INTERVAL '7 days';


-- 83. Which products have lower stock remaining than the average stock quantity?

with lower_stock as 
(select product_id,stock_quantity
from assignment.inventory
group by product_id)
select product_id, stock_quantity
from lower_stock
where stock_quantity < (select avg(stock_Quantity) from lower_stock)
;

-- 84. Which customers purchased the same product more than once?
select * from assignment.sales;

SELECT 
    customer_id,
    product_id,
    COUNT(*) AS times_purchased
FROM assignment.sales
GROUP BY customer_id, product_id
HAVING COUNT(*) > 1;

-- 85. Which product categories generated the highest total revenue?

select p.category, sum(total_amount) as Total_revenue
from assignment.sales s
inner join assignment.products p
on p.product_id = s.product_id 
group by p.category
order by total_Revenue DESC;



-- 86. Which products are among the top 3 most sold products?
with product_sales as(
 select product_id, 
        sum(quantity_sold) as total_qty
 from assignment.sales
 group by product_id),
 Ranked_products as 
 (select product_id,total_qty,
 dense_rank() over (order by total_qty desc) as sales_rank
 from product_sales )
select * from ranked_products
WHERE sales_rank <= 3;

-- 87. Which customers purchased the most expensive product?

with customer_max_prices as (
select  s.customer_id, 
        MAX(p.price) as top_price_paid
from assignment.sales s
join assignment.products p on s.product_id = p.product_id
group by s.customer_id)
select 
    customer_id, 
    top_price_paid,
    dense_rank () over (order by top_price_paid desc) AS customer_luxury_rank
from customer_max_prices;

-- 88. Which products were purchased by the highest number of unique customers?

WITH popular_products AS (
select p.product_id,p.product_name,
	COUNT(DISTINCT s.customer_id) AS unique_customers
from assignment.products p
LEFT JOIN assignment.sales s ON
	p.product_id = s.product_id
GROUP BY
	p.product_id,
	p.product_name
)
select product_id,product_name,unique_customers
from popular_Products
ORDER by unique_customers DESC
LIMIT 1;

-- 89. Which customers made purchases above the average sale amount?

WITH average_sale as (
    select AVG(total_amount) as sale_avg
    from assignment.sales)
select customer_id,total_amount
from assignment.sales
where total_amount > (
select sale_avg
 from  average_sale);

-- 90. Which customers purchased more products than the average quantity purchased per customer?
with  average_purchases as (
	select avg(quantity_sold) as purchase_avg
	from assignment.sales)
select customer_id,quantity_sold
from assignment.sales 
where quantity_sold > (
select purchase_avg
from average_purchases);

-- ADVANCED WINDOW + ANALYTICAL PROBLEMS
-- 91. Which customers rank in the top 10% of spending?

with customer_spending as 
(select customer_id, sum(total_amount) as total_spending
from assignment.sales
group by customer_id),
percent_ranking as 
(select customer_id,total_spending, 
percent_rank() over (order by total_spending DESC)as spending_rank
from customer_spending)
select * from percent_ranking
where spending_rank <=0.1;

-- 92. Which products contribute to the top 50% of total revenue?
with product_contribution as 
(select product_id, sum(total_amount) as product_amount
from assignment.sales
group by product_id),
product_ranking as (
    select  product_id, product_amount,
        CUME_DIST() OVER (ORDER BY product_amount DESC) as cumulative_dist
    FROM product_contribution )
select product_id, product_amount,
   ROUND(CAST(cumulative_dist AS numeric) * 100, 2) as cumulative_percent
from product_ranking
where cumulative_dist <= 0.5
order by product_amount desc;

-- 93. Which customers made purchases in consecutive months?
with  purchases_made as (
    select 
        customer_id,
        DATE_TRUNC('month', sale_date)AS purchase_month
    from assignment.sales
    group  by  customer_id, DATE_TRUNC('month', sale_date)),
consecutive_purchases as  (
    select customer_id,
        purchase_month,
        lag (purchase_month) over  (
            partition by  customer_id 
            order  by  purchase_month
        )as  previous_month
    from  purchases_made)
select  distinct customer_id,
        previous_month as  first_month,
        purchase_month as next_month
from consecutive_purchases
where  purchase_month = previous_month + INTERVAL '1 month'
order  by  customer_id; 

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?
select * from assignment.inventory;
select s.product_id, 
		sum(s.quantity_sold) as sum_quantity,
		ABS(sum(s.quantity_sold)- i.stock_quantity) as difference
	from assignment.sales s
	inner join 
	assignment.inventory i
	on s.product_id = i.product_id
group by s.product_id,
			s.quantity_sold,
			i.stock_quantity
order by difference desc
limit 10;


-- 95. Which customers have spending above the average spending of their membership tier?

with  customer_spending as 
(select c.customer_id,
        c.first_name,
        c.membership_status,
        SUM(s.total_amount) as  total_spent
    from  assignment.customers c
    join  assignment.sales s 
        on  c.customer_id = s.customer_id
    group by  c.customer_id, c.first_name, c.membership_status),
tier_avg as  (
    select membership_status,
        AVG(total_spent) AS avg_spent
    from  customer_spending
    group  by  membership_status)
select cs.customer_id,cs.first_name,
    cs.membership_status,
    cs.total_spent
from customer_spending cs
join  tier_avg ta
    on  cs.membership_status = ta.membership_status
where  cs.total_spent > ta.avg_spent;


-- 96. Which products have higher sales than the average sales within their category?
with  product_sales as 
(select p.product_id,
       p.product_name,
       p.category,
        SUM(s.total_amount) as  product_sale
    from  assignment.products p
    join  assignment.sales s 
        on  p.product_id = s.product_id
    group by  p.product_id, p.product_name, p.category),
sales_avg as  (
    select category,
        AVG(product_sale) as sales_avg
        from product_sales
    group  by  category)
select ps.product_id,ps.category,ps.product_name,
    ps.product_sale
from product_sales ps
join  sales_avg sa
    on  sa.category = ps.category
where  ps.product_sale > sa.sales_avg;

-- 97. Which customer made the largest single purchase relative to their total spending?
with customer_spending as 
(select customer_id,
        MAX(total_amount) as  max_purchase,
        SUM(total_amount) as  total_spent
    from  assignment.sales
    group  by customer_id)
select customer_id,max_purchase,total_spent,
    max_purchase * 1.0 / total_spent as purchase_ratio
FROM customer_spending
ORDER BY purchase_ratio desc
limit  1;

-- 98. Which products rank among the top 3 most sold products within each category?

with product_sales as 
(select p.product_id, p.product_name, p.category,
        SUM(s.quantity_sold) as total_quantity
    from assignment.products p
    join assignment.sales s
        on p.product_id = s.product_id
    group  by  p.product_id, p.product_name, p.category),
ranked_products as 
(select *,
 rank( ) over (partition by category order by total_quantity desc) as rank_category
    from product_sales)
select product_id,product_name,category,total_quantity
from ranked_products
where rank_category <= 3;

-- 99. Which customers are tied for the highest total spending?

with Highest_Spender as 
( select customer_id,
        Sum(total_amount) as Total_Spent
from assignment.sales
group by customer_id)
select customer_id, Total_Spent 
from Highest_Spender 
where total_spent= (select max(total_spent) from highest_spender);

-- 100. Which products generated sales every year present in the dataset?

with yearly_sales as 
( select product_id,
		extract (year from sale_date) as year 
		from assignment.sales 
		group  by product_id, extract (year from sale_date)),
total_years as
(select count(distinct extract (year from sale_date)) as number_years
from assignment.sales)
select ys.product_id
from yearly_sales ys
group by ys.product_id
having count(distinct ys.year) = (select number_years from total_years);


-- 101. Update the products table to assign a price_category as Expensive (price > 1000), Moderate (price between 500 and 1000), or Affordable (price < 500) using CASE WHEN
select * from assignment.products;
alter table assignment.products 
 add price_category VARCHAR(20);

update assignment.products
SET price_category = CASE 
    WHEN price > 1000 THEN 'Expensive'
    WHEN price BETWEEN 500 AND 1000 THEN 'Moderate'
    WHEN price < 500 THEN 'Affordable'
    ELSE 'Uncategorized'
END;

-- 102. Update the customers table to assign a customer_level based on total spending as VIP (>20000), Regular (10000–20000), or New (<10000) using CASE WHEN
alter table assignment.customers
add customer_level VARCHAR(20);
WITH customer_spending AS (
SELECT
	c.customer_id,
	COALESCE(SUM(s.total_amount), 0) AS total_spent
FROM
	customers c
LEFT JOIN assignment.sales s ON
	c.customer_id = s.customer_id
GROUP BY
	c.customer_id
)
UPDATE
	assignment.customers
SET
	customer_level = CASE
		WHEN cs.total_spent > 20000 THEN 'VIP'
		WHEN cs.total_spent BETWEEN 10000 AND 20000 THEN 'Regular'
		WHEN cs.total_spent < 10000 THEN 'New'
	END
FROM
	customer_spending cs
WHERE
	customers.customer_id = cs.customer_id;

-- 103. Update the products table to assign a stock_status as Low Stock or Sufficient Stock based on stock_quantity using CASE WHEN
alter  table  assignment.products 
add  column  stock_status VARCHAR(30);

update  assignment.products p
set  stock_status = case  
    when  i.stock_quantity < 100 then  'Low Stock'
    when  i.stock_quantity >= 100 then  'Sufficient Stock'
    else  'Unknown'
end 
from assignment.inventory i
where p.product_id = i.product_id;

-- 104. Display each customer’s registration year from the registration_date
		select customer_id, Registration_date,
		cast(extract (year from registration_date) as TEXT) as registartion_date
		from assignment.customers;
		
-- 105. Count how many customers registered in each year
 select count(customer_id)
 from assignment.customers;

-- 106. Find the total sales amount for each month
select  extract(month from sale_date) as month,
		cast(extract(year from sale_date) as text) as year,
        sum(total_amount) as total_sales
from assignment.sales 
group by extract(month from sale_date),
		 cast(extract(year from sale_date) as text)
order  by month, year;

-- 107. Show all sales made in the year 2023
SELECT *
from assignment.sales
where extract (year  from  sale_date) = 2023;

-- 108. Find the total sales amount for each year

select  cast(extract(year from sale_date) as text), sum(total_amount)
from assignment.sales 
group by cast(extract(year from sale_date) as text);

-- 109. Calculate the number of days each customer has been registered (from registration_date to current date)
		select customer_id,
				first_name,
				last_name,
				(current_date - registration_date)as Period_registered
	from assignment.customers;

-- 110. Display each sale and extract the year and month from the sale date
select  sale_id, 
		cast(extract(month from sale_date) as text) as sale_month,
		cast(extract(year from sale_date) as text) as sale_year
		from assignment.sales 
group by sale_id;

-- 111. Display each customer’s email and replace null values with 'No Email Provided' using COALESCE

SELECT
email,
COALESCE(email, 'No Email Provided') AS emailstatus_
FROM assignment.customers;
 

-- 112. Find customers who do not have an email address
select customer_id,first_name,last_name
from assignment.customers
where email IS null OR email = '';

-- 113. Find products that have never been sold using a subquery
SELECT
product_id,
product_name
FROM assignment.products
WHERE product_id NOT IN (
SELECT distinct(product_id
FROM assignment.sales);

-- 114. Find customers who have not made any purchases using a subquery

select
customer_id,
first_name ||' '|| last_name
from assignment.customers
where customer_id not in(
select customer_id
from assignment.sales);

-- 115. Update the products table to assign a price_category (Premium, Standard, Budget) based on price using CASE WHEN

UPDATE assignment.products
SET price_category=CASE
WHEN price >= 1000 THEN 'Premium'
WHEN price >= 500 THEN 'Standard'
ELSE 'Budget'
end;

-- 116. Create a PostgreSQL function that takes a minimum revenue as input and returns all products whose total sales exceed that value
CREATE OR REPLACE FUNCTION get_products_by_min_revenue(min_revenue DECIMAL)
RETURNS TABLE (
    product_id INT, 
    product_name VARCHAR, 
    total_sales DECIMAL
) 
AS $$
BEGIN
    RETURN QUERY
    SELECT
        p.product_id,
        p.product_name,
        COALESCE(SUM(s.total_amount), 0) AS total_sales
    FROM products p
    LEFT JOIN assignment.sales s 
        ON p.product_id = s.product_id
    GROUP BY
        p.product_id,
        p.product_name
    HAVING
        COALESCE(SUM(s.total_amount), 0) > min_revenue;
END;
$$ LANGUAGE plpgsql;


-- 117. Create a PostgreSQL function that takes a customer_id as input and returns the total amount spent by that customer

CREATE OR REPLACE FUNCTION get_customer_total_spent(cust_id INT)
RETURNS DECIMAL AS $$
DECLARE
    total_spent DECIMAL;
BEGIN
    SELECT COALESCE(SUM(total_amount), 0)
    INTO total_spent
    FROM assignment.sales
    WHERE customer_id = cust_id;

    RETURN total_spent;
END;
$$ LANGUAGE plpgsql;

-- 118. Create a PostgreSQL function that takes a start_date and end_date as input and returns the number of orders made within that date range

CREATE OR REPLACE
FUNCTION get_orders_count_by_date_range(start_date DATE, end_date DATE)
RETURNS INT AS $$
DECLARE
    order_count INT;
BEGIN
    SELECT COUNT(*)
INTO order_count
FROM assignment.sales
WHERE sale_date BETWEEN start_date AND end_date;
RETURN order_count;
END;
$$ LANGUAGE plpgsql; 

-- 119. Create a PostgreSQL stored procedure that inserts a new record into the sales table

CREATE OR REPLACE
PROCEDURE insert_sale(
    p_sale_id INT,
    p_customer_id INT,
    p_product_id INT,
    p_quantity_sold INT,
    p_sale_date DATE,
    p_total_amount DECIMAL
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT
	INTO
	sales (sale_id,
	customer_id,
	product_id,
	quantity_sold,
	sale_date,
	total_amount)
VALUES (p_sale_id,
p_customer_id,
p_product_id,
p_quantity_sold,
p_sale_date,
p_total_amount);
END;

$$;
-- 120. Create an index on the product_id column in the sales table to improve join performance

CREATE INDEX idx_sales_product_id ON
assignment.sales(product_id);

-- 121. Create an index on the registration_date column in the customers table to improve filtering by date

CREATE INDEX idx_customers_registration_date ON
assignment.customers(registration_date);

-- 122. Write a transaction that inserts a new sale, then updates the corresponding product stock_quantity, ensuring both operations succeed or fail together

BEGIN;
INSERT
	INTO
	assignment.sales (sale_id,
	customer_id,
	product_id,
	quantity_sold,
	sale_date,
	total_amount)
VALUES (16,
1,1,2,
CURRENT_DATE,
1999.98);

UPDATE
	assignemnt.products
set stock_quantity = stock_quantity - 2
WHERE	product_id = 1;
COMMIT;

-- 123. Write a transaction that updates a customer's email and rolls back the change if the email is invalid

BEGIN;

UPDATE
	assignment.customers
SET
	email = 'invalid_email'
WHERE
	customer_id = 1;
-- Check if email is valid (simple check for @ symbol)

DO $$
BEGIN
    IF (
SELECT email
FROM assignment.customers
WHERE customer_id = 1) NOT LIKE '%@%' THEN
RAISE EXCEPTION 'Invalid email address';
END IF;
END $$;

COMMIT;

-- 124. Create a view that shows total revenue per product

CREATE OR REPLACE
VIEW product_revenue_view AS
SELECT
	p.product_id,
	p.product_name,
	COALESCE(SUM(s.total_amount), 0) AS total_revenue
FROM
	assignment.products p
LEFT JOIN assignment.sales s ON
	p.product_id = s.product_id
GROUP BY
	p.product_id,
	p.product_name;
-- 125. Create a view that shows each customer and their total spending

CREATE OR REPLACE
VIEW customer_spending_view AS
SELECT
	c.customer_id,
	c.first_name,
	c.last_name,
	COALESCE(SUM(s.total_amount), 0) AS total_spent
FROM
	assignment.customers c
LEFT JOIN assignment.sales s ON
	c.customer_id = s.customer_id
GROUP BY
	c.customer_id,
	c.first_name,
	c.last_name;

-- 126. Use UNION to combine a list of all customer first names and product names into a single column

select first_name AS name
from assignment.customers
UNION
select product_name
from assignment.products;

-- 127. Use INTERSECT to find values that appear in both a list of customer IDs and a list of customer IDs who made purchases

select customer_id
from assignment.customers
INTERSECT
select DISTINCT customer_id
from assignment.sales;

-- 128. Perform an anti-join to find products that have never been sold using LEFT JOIN

SELECT
	p.product_id,
	p.product_name
from assignment.products p
LEFT JOIN assignment.sales s ON
	p.product_id = s.product_id
WHERE s.product_id IS NULL;

-- 129. Use NOT EXISTS to find customers who have not made any purchases

select c.customer_id,c.first_name , c.last_name
from assignment.customers c
where NOT EXISTS (
	select 1
	from assignment.sales s
	where s.customer_id = c.customer_id);

-- 130. Cast the price column to an integer and display it alongside the original price

SELECT
	product_id,
	product_name,
	price,
	price::INTEGER AS price_int
FROM
	assignment.products;
-- 131. Convert registration_date to text format and display it in 'YYYY-MM' format

SELECT
	customer_id,
	first_name,
	last_name,
	registration_date,
	TO_CHAR(registration_date, 'YYYY-MM') AS registration_year_month
FROM
	assignment.customers;

-- 132. The following query returns an error due to improper GROUP BY usage. Identify and fix the issue
-- Original: SELECT product_id, product_name, SUM(total_amount) FROM sales GROUP BY product_id;
-- Fixed query:

SELECT
	s.product_id,
	p.product_name,
	SUM(s.total_amount)
FROM
	assignment.sales s
JOIN assignment.products p ON
	s.product_id = p.product_id
GROUP BY
	s.product_id,
	p.product_name;

-- 133. The following query incorrectly filters aggregated results using WHERE. Identify and correct it
-- Original: SELECT product_id, SUM(total_amount) FROM sales WHERE SUM(total_amount) > 1000 GROUP BY product_id;
-- Fixed query:

SELECT
	product_id,
	SUM(total_amount)
from assignment.sales
GROUP by product_id
having SUM(total_amount) > 1000;

-- 134. The following query returns incorrect results because it uses the wrong join condition. Identify and fix it
-- Original: SELECT * FROM assignment.sales s JOIN assignment.products p ON s.customer_id = p.product_id;
-- Fixed query:

select *
from assignment.sales s
JOIN assignment.products p ON
	s.product_id = p.product_id;

-- 135. Replace NULL email values with 'No Email Provided' using COALESCE if any

UPDATE
	assignment.customers
SET
	email = COALESCE(email, 'No Email Provided')
WHERE
	email IS NULL;

-- 136. Trim any leading or trailing spaces from customer first names if any

UPDATE
	assignment.customers
SET
	first_name = TRIM(first_name)
WHERE
	first_name LIKE ' %'
	OR first_name LIKE '% ';

-- 137. Convert all customer emails to lowercase if any

UPDATE
	assignment.customers
SET
	email = LOWER(email)
WHERE
	email IS NOT NULL;

-- 138. Replace empty strings in phone numbers with NULL if any

UPDATE
	assignment.customers
SET
	phone_number = NULL
WHERE
	phone_number = '';

-- 139. Extract the year from registration_date and handle any NULL dates gracefully if any

SELECT
	customer_id,
	first_name,
	last_name,
	registration_date,
	CASE
		WHEN registration_date IS NOT NULL THEN EXTRACT(YEAR FROM registration_date:: DATE)
		ELSE NULL
	END AS registration_year
FROM
	assignment.customers;





