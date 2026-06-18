-- Highest Spending Customers

SELECT
    c.customer_name,
    SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- Revenue By Category

SELECT
    c.category_name,
    SUM(oi.quantity * oi.item_price) AS revenue
FROM Categories c
JOIN Products p
ON c.category_id = p.category_id
JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY c.category_name;

-- Top Selling Products

SELECT
    p.product_name,
    SUM(oi.quantity) AS total_sold
FROM Products p
JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- Revenue By City

SELECT
    c.city,
    SUM(o.total_amount) AS revenue
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY revenue DESC;

-- Customer Ranking

SELECT
    customer_name,
    total_spent,
    RANK() OVER(
        ORDER BY total_spent DESC
    ) AS customer_rank
FROM
(
    SELECT
        c.customer_name,
        SUM(o.total_amount) AS total_spent
    FROM Customers c
    JOIN Orders o
    ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
) ranked_customers;
