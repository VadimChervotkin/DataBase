SELECT product_name, price
FROM products
WHERE price > 100
ORDER BY products.price DESC;

SELECT users.user_name,
       COUNT(orders.order_id) AS total_orders
FROM users
JOIN orders ON users.user_id = orders.user_id
GROUP BY users.user_name;

SELECT u.user_name,
    SUM(p.price * oi.quantity) AS total_spent
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY u.user_name;

SELECT u.user_name,
       o.order_id,
       p.product_name,
       oi.quantity
FROM orders o
JOIN users u ON o.user_id = u.user_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

UPDATE products
SET price = 1000
WHERE product_name = 'Laptop';

DELETE FROM order_items
WHERE order_id = 1;

DELETE FROM orders
WHERE order_id = 1;

SELECT *
FROM products
WHERE product_name = 'Laptop' AND price <= 1000;

SELECT *
FROM products
WHERE product_name LIKE 'Lap%' AND price BETWEEN 100 AND 1000;

SELECT *
FROM products
WHERE product_name IN ('Laptop', 'Smartphone');

SELECT user_id, COUNT(orders.order_id) AS total_orders
FROM orders
GROUP BY user_id
HAVING COUNT(order_id) > 2;

SELECT u.user_name, o.order_id
FROM users u
INNER JOIN orders o ON u.user_id = o.user_id;

SELECT p.product_name, oi.order_id
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id;

SELECT u.user_name, o.order_id
FROM users u
FULL OUTER JOIN orders o ON u.user_id = o.user_id;