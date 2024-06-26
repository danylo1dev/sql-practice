CREATE TABLE sales(
    id INT  PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `date_created` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    date_fulfilled TIMESTAMP,
    customer_name VARCHAR(300) NOT NULL,
    product_name VARCHAR(300) NOT NULL,
    volume NUMERIC(10, 3) NOT NULL CHECK (volume >=0),
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE
)
-- DROP TABLE sales