use company;
select *from sellers;
select *from products;
select *from payments;
select *from customers;
select *from order_items;
select *from orders;
select *from geolocation;
-- sales by payment type
SELECT 
    p.payment_type,
    COUNT(p.order_id) AS total_orders,
    SUM(p.payment_value) AS total_payment
FROM payments p
GROUP BY p.payment_type
ORDER BY total_payment DESC;
-- Total customers by state//
SELECT 
    c.customer_state,
    COUNT(DISTINCT c.customer_id) AS total_customers
FROM customers c
GROUP BY c.customer_state
ORDER BY total_customers DESC;
-- Top cities by orders//
SELECT 
    c.customer_city,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_city
ORDER BY total_orders DESC
LIMIT 10;
-- Returning vs new customers//
SELECT 
    CASE 
        WHEN order_count = 1 THEN 'New Customer'
        ELSE 'Returning Customer'
    END AS customer_type,
    COUNT(*) AS total_customers
FROM (
    SELECT c.customer_id, COUNT(o.order_id) AS order_count
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    GROUP BY c.customer_id
) AS sub
GROUP BY customer_type;
-- Top sellimg products//
SELECT 
    s.seller_id,
    s.seller_city,
    s.seller_state,
    SUM(oi.price) AS total_sales,
    COUNT(oi.order_id) AS total_orders
FROM order_items oi
JOIN sellers s ON oi.seller_id = s.seller_id
GROUP BY s.seller_id, s.seller_city, s.seller_state
ORDER BY total_sales DESC
LIMIT 10;
-- /Average delivery days//
SELECT 
    ROUND(AVG(DATEDIFF(o.order_delivered_customer_date, o.order_purchase_timestamp)),2) AS avg_delivery_days
FROM orders o
WHERE o.order_status = 'delivered';
-- orders ontime vs delayed//
SELECT 
    CASE 
        WHEN o.order_delivered_customer_date <= o.order_estimated_delivery_date THEN 'On-Time'
        ELSE 'Delayed'
    END AS delivery_status,
    COUNT(o.order_id) AS total_orders
FROM orders o
WHERE o.order_status = 'delivered'
GROUP BY delivery_status;
DELIMITER $$





DELIMITER ;
SELECT GetCustomerLocation('9ef432eb6251297304e76186b10a928d');
DELIMITER $$
-- top selling 
SELECT 
    s.seller_id,
    s.seller_city,
    s.seller_state,
    SUM(oi.price) AS total_sales,
    COUNT(oi.order_id) AS total_orders
FROM order_items oi
JOIN sellers s ON oi.seller_id = s.seller_id
GROUP BY s.seller_id, s.seller_city, s.seller_state
ORDER BY total_sales DESC
LIMIT 10;

