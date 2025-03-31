CREATE TABLE pets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(50) NOT NULL,
    age INT,
    breed VARCHAR(50) NOT NULL,
    species_id INT,
    FOREIGN KEY (species_id) REFERENCES species(id)
);