CREATE DATABASE gym;

CREATE TABLE memberships (
    id INT PRIMARY KEY AUTO_INCREMENT,
    membership_start DATE,
    membership_end DATE,
    last_checkin TIMESTAMP,
    last_checkout TIMESTAMP,
    consumption NUMERIC(5, 2),
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    price NUMERIC(5, 2),
    billing_frequency INT,
    gender VARCHAR(200)
);

CREATE TABLE customers(
    for mysql use this code
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    email VARCHAR(200)
);

CREATE TABLE orders(
    id INT PRIMARY KEY AUTO_INCREMENT,
    amount_billed NUMERIC(5, 2),
    customer_id INT REFERENCES customers
);