INSERT INTO Categories(category_name)
VALUES
('Electronics'),
('Fashion'),
('Books'),
('Sports');

INSERT INTO Customers(customer_name,email,city)
VALUES
('Rahul Sharma','rahul@gmail.com','Delhi'),
('Priya Singh','priya@gmail.com','Mumbai'),
('Amit Verma','amit@gmail.com','Lucknow'),
('Neha Gupta','neha@gmail.com','Pune'),
('Rohan Patel','rohan@gmail.com','Ahmedabad');

INSERT INTO Products(product_name,category_id,price)
VALUES
('iPhone 15',1,79999),
('Samsung S24',1,69999),
('Men T-Shirt',2,799),
('SQL Basics Book',3,499),
('Cricket Bat',4,1999);

INSERT INTO Orders(customer_id,order_date,total_amount)
VALUES
(1,'2025-01-10',79999),
(2,'2025-01-15',799),
(3,'2025-02-01',499);

INSERT INTO Order_Items(order_id,product_id,quantity,item_price)
VALUES
(1,1,1,79999),
(2,3,1,799),
(3,4,1,499);

INSERT INTO Payments(order_id,payment_method,payment_status)
VALUES
(1,'UPI','Completed'),
(2,'Credit Card','Completed'),
(3,'UPI','Completed');

INSERT INTO Inventory(product_id,stock_quantity)
VALUES
(1,50),
(2,40),
(3,100),
(4,120),
(5,70);

INSERT INTO Reviews(customer_id,product_id,rating,review_text)
VALUES
(1,1,5,'Excellent phone'),
(2,3,4,'Good quality'),
(3,4,5,'Very useful book');
