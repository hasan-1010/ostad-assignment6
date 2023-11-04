-- Task - 4
-- Write a SQL query to retrieve the top 5 customers who have made the highest total purchase amount. 
-- Display the customer name along with the total purchase amount in descending order of the purchase amount.

SELECT
    c.name AS customer_name,
    SUM(oi.quantity * oi.unitprice) AS total_purchase_amount
FROM customers AS c
INNER JOIN orders o ON c.customerid = o.customerid
INNER JOIN order_items oi ON o.orderid = oi.orderid
GROUP BY c.customerid
ORDER BY total_purchase_amount DESC
LIMIT 5;