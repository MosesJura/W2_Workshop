-- 1. Create the database (schema) and select it
DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;



-- 2. Create the OWNERS table (No foreign keys, so it goes first)
CREATE TABLE Owners (
    OwnerID INT PRIMARY KEY AUTO_INCREMENT, 
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(100)
);

-- 3. Create the WALKER table (No foreign keys)
CREATE TABLE Walker (
    WalkerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Phone VARCHAR(20)
);

-- 4. Create the DOGS table (Depends on Owners)
CREATE TABLE Dogs (
    DogID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Breed VARCHAR(50),
    Age INT,
    OwnerID INT,
    -- This creates the link to the Owners table
    CONSTRAINT fk_dog_owner FOREIGN KEY (OwnerID) REFERENCES Owners(OwnerID) 
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 5. Create the WALK table (Depends on Dogs and Walker)
CREATE TABLE Walk (
    WalkID INT PRIMARY KEY AUTO_INCREMENT,
    WalkDate DATE,
    DurationMinutes INT,
    Status VARCHAR(20),
    DogID INT,
    WalkerID INT,
    -- Link to Dogs table
    CONSTRAINT fk_walk_dog FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
    ON DELETE CASCADE ON UPDATE CASCADE,
    -- Link to Walker table
    CONSTRAINT fk_walk_walker FOREIGN KEY (WalkerID) REFERENCES Walker(WalkerID)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- 6. Create the PAYMENTS table (Depends on Walk)
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    Amount DECIMAL(10,2) NOT NULL,
    PaymentDate DATE,
    PaymentStatus VARCHAR(20),
    WalkID INT,
    -- Link to Walk table
    CONSTRAINT fk_payment_walk FOREIGN KEY (WalkID) REFERENCES Walk(WalkID)
    ON DELETE CASCADE ON UPDATE CASCADE
);