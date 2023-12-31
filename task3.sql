-- Task 3
-- Write a SQL query to retrieve the total revenue generated by each product category. 
-- Display the category name along with the total revenue in descending order of the revenue.

SELECT
    c.name AS category_name,
    SUM(oi.quantity * oi.unitprice) AS total_revenue
FROM products AS p
INNER JOIN categories c ON p.categoryid = c.categoryid
INNER JOIN order_items oi ON p.productid = oi.productid
GROUP BY c.name
ORDER BY total_revenue DESC;