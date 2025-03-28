CREATE TABLE purchase_pets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    purchase_id INT,
    pet_id INT,
    FOREIGN KEY (purchase_id) REFERENCES purchases(id),
    FOREIGN KEY (pet_id) REFERENCES pets(id)
);