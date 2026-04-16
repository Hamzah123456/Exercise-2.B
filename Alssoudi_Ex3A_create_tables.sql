DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE walkers (
    walker_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    availability VARCHAR(100)
);

CREATE TABLE dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT NOT NULL,
    dog_name VARCHAR(50) NOT NULL,
    breed VARCHAR(50),
    age INT,
    size VARCHAR(20),
    special_instructions TEXT,
    medical_notes TEXT,
    CONSTRAINT fk_dogs_client
        FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_id INT NOT NULL,
    walker_id INT NOT NULL,
    walk_date DATE NOT NULL,
    walk_time TIME NOT NULL,
    duration INT,
    status VARCHAR(20),
    notes TEXT,
    CONSTRAINT fk_appointments_dog
        FOREIGN KEY (dog_id) REFERENCES dogs(dog_id),
    CONSTRAINT fk_appointments_walker
        FOREIGN KEY (walker_id) REFERENCES walkers(walker_id)
);
