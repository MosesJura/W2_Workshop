DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;


CREATE TABLE Owner (
    OwnerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    `Phone#` VARCHAR(20),
    Email VARCHAR(255)
);


CREATE TABLE Dog (
    DogID INT AUTO_INCREMENT PRIMARY KEY,
    OwnerID INT NOT NULL,
    `Dog Name` VARCHAR(100) NOT NULL,
    Breed VARCHAR(100),
    FOREIGN KEY (OwnerID) REFERENCES Owner(OwnerID)
);
