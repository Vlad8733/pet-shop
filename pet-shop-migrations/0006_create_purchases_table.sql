CREATE TABLE purchases (
    id INT PRIMARY KEY AUTO_INCREMENT,
    purchase_date DATE,
    total_amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    client_id INT,
    employee_id INT,
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);