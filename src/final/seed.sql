INSERT INTO users (user_name, email) VALUES
                                         ('Alice', 'alice@example.com'),
                                         ('Bob', 'bob@example.com'),
                                         ('Charlie', 'charlie@example.com'),
                                         ('Diana', 'diana@example.com'),
                                         ('Eve', 'eve@example.com');

INSERT INTO products (product_name, price, quantity) VALUES
                                                         ('Laptop', 1200.00, 10),
                                                         ('Smartphone', 800.00, 20),
                                                         ('Headphones', 150.00, 50),
                                                         ('Keyboard', 75.00, 40),
                                                         ('Monitor', 300.00, 15);

INSERT INTO orders (user_id) VALUES
                                 (1),
                                 (2),
                                 (3),
                                 (4),
                                 (5);

INSERT INTO order_items (order_id, product_id, quantity)  VALUES
                                                              (1, 1, 1),
                                                              (1, 3, 2),
                                                              (2, 2, 1),
                                                              (2, 4, 1),
                                                              (3, 5, 2),
                                                              (4, 3, 1),
                                                              (4, 4, 1),
                                                              (5, 1, 1),
                                                              (5, 2, 1),
                                                              (5, 5, 1);


