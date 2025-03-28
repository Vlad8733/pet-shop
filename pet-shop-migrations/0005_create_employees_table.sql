CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(50) NOT NULL,
    salary VARCHAR(50) NOT NULL,
    client_id INT,
    FOREIGN KEY (client_id) REFERENCES clients(id)
);