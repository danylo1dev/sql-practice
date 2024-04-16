CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    full_name VARCHAR(200) GENERATED ALWAYS AS (CONCAT(first_name, '', last_name)), 
    yearly_salary INT CHECK (yearly_salary>0), 
    current_status ENUM('employed', 'self-employed', 'unemploed')
    );
CREATE TABLE employers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(250) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenue NUMERIC(5, 2) CHECK (yearly_revenue>0),
    is_hiring BOOLEAN
);

CREATE TABLE conversations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    employer_id INT,
    message VARCHAR(2000) NOT NULL,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);