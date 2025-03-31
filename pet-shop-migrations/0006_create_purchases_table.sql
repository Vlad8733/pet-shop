CREATE TABLE purchases (
    id INT PRIMARY KEY AUTO_INCREMENT,
    purchase_date DATE NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    client_id INT,
    employee_id INT,
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);