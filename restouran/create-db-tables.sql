CREATE DATABASE restaurants;
CREATE TABLE CREATE TABLE payment_methods (
    id INT PRIMARY KEY AUTO_INCREMENT,

    name VARCHAR(200)
);

CREATE TABLE tables (
    id INT PRIMARY KEY AUTO_INCREMENT,
    num_seats INT,
    category VARCHAR(200)
);

CREATE TABLE bookings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    booking_date DATE NOT NULL,
    num_guests INT NOT NULL,
    amount_billed NUMERIC(6, 2)  NOT NULL,
    amount_tipped NUMERIC(6, 2),
    payment_id INT REFERENCES payment_methods,
    table_id INT REFERENCES tables
);