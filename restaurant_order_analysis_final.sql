-- Drop Schema if it Exists and Create New Schema
DROP DATABASE IF EXISTS RestaurantDB;
CREATE DATABASE RestaurantDB;
USE RestaurantDB;

-- Create Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_time TIME,
    total_price DECIMAL(10,2)
);

-- Create Order Details Table
CREATE TABLE order_details (
    detail_id INT PRIMARY KEY,
    order_id INT,
    menu_item VARCHAR(255),
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- Insert Data into Orders Table
INSERT INTO orders (order_id, customer_id, order_date, order_time, total_price) VALUES
(1, 101, '2025-03-01', '12:30:00', 25.50),
(2, 102, '2025-03-01', '13:15:00', 18.75),
(3, 103, '2025-03-02', '19:45:00', 40.00),
(4, 101, '2025-03-03', '14:20:00', 32.25);

-- Insert Data into Order Details Table
INSERT INTO order_details (detail_id, order_id, menu_item, quantity, price) VALUES
(1, 1, 'Burger', 2, 12.75),
(2, 1, 'Fries', 1, 5.00),
(3, 2, 'Pizza', 1, 18.75),
(4, 3, 'Pasta', 2, 20.00),
(5, 4, 'Salad', 1, 10.00),
(6, 4, 'Steak', 1, 22.25);
