-- Task 2
-- Write a SQL query to retrieve the product name, quantity, and total amount for each order item. 
-- Display the result in ascending order of the order ID.
SELECT
    p.name AS product_name,
    oi.quantity,
    (oi.quantity * oi.unitprice) AS total_amount
FROM order_items oi
LEFT JOIN products p ON oi.productid = p.productid
ORDER BY oi.orderid ASC;