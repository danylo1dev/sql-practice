-- ALTER TABLE employers MODIFY COLUMN yearly_revenue FLOAT(5,2)
ALTER TABLE users 
MODIFY COLUMN full_name VARCHAR(300) NOT NULL,  
MODIFY COLUMN current_status ENUM('employed', 'self-employed', 'unemployed') NOT NULL