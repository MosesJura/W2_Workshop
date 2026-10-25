USE lana_dog_walking;

-- ==========================================
-- 1. OWNERS (Parents) - IDs start with 1
-- ==========================================
INSERT INTO Owners (OwnerID, FirstName, LastName, Phone, Email) VALUES
(1001, 'Michael', 'Jack', '19882341010', 'mjack@gmail.com'),
(1002, 'Emma', 'Watson', '19882341011', 'emma.w@gmail.com'),
(1003, 'David', 'Chen', '19882341012', 'dchen99@yahoo.com'),
(1004, 'Sophia', 'Martinez', '19882341013', 'sophiam@outlook.com'),
(1005, 'James', 'Wilson', '19882341014', 'jwilson@gmail.com'),
(1006, 'Olivia', 'Taylor', '19882341015', 'olivia.t@hotmail.com'),
(1007, 'William', 'Brown', '19882341016', 'wbrown@gmail.com'),
(1008, 'Ava', 'Johnson', '19882341017', 'avaj@icloud.com'),
(1009, 'Benjamin', 'Lee', '19882341018', 'ben.lee@gmail.com'),
(1010, 'Isabella', 'Garcia', '19882341019', 'isabellag@yahoo.com'),
(1011, 'Lucas', 'Miller', '19882341020', 'lucasm@gmail.com');

-- ==========================================
-- 2. WALKERS (Parents) - IDs start with 2
-- ==========================================
INSERT INTO Walker (WalkerID, FirstName, LastName, Phone) VALUES
(2001, 'Sarah', 'Bees', '980500989'),
(2002, 'John', 'Doe', '980500990'),
(2003, 'Emily', 'Davis', '980500991'),
(2004, 'Michael', 'Rodriguez', '980500992'),
(2005, 'Jessica', 'Smith', '980500993'),
(2006, 'Daniel', 'Kim', '980500994'),
(2007, 'Ashley', 'White', '980500995'),
(2008, 'Matthew', 'Harris', '980500996'),
(2009, 'Amanda', 'Clark', '980500997'),
(2010, 'Christopher', 'Lewis', '980500998'),
(2011, 'Sarah', 'Walker', '980500999');

-- ==========================================
-- 3. DOGS (Depends on Owners) - IDs start with 3
-- ==========================================
INSERT INTO Dogs (DogID, Name, Breed, Age, OwnerID) VALUES
(3001, 'Yoshi', 'Pomeranian', 10, 1001),
(3002, 'Bella', 'Golden Retriever', 3, 1002),
(3003, 'Max', 'German Shepherd', 5, 1003),
(3004, 'Luna', 'French Bulldog', 2, 1004),
(3005, 'Charlie', 'Beagle', 4, 1005),
(3006, 'Daisy', 'Poodle', 6, 1006),
(3007, 'Rocky', 'Boxer', 1, 1007),
(3008, 'Molly', 'Corgi', 7, 1008),
(3009, 'Cooper', 'Dachshund', 3, 1009),
(3010, 'Sadie', 'Shih Tzu', 8, 1010),
(3011, 'Bear', 'Rottweiler', 2, 1011);

-- ==========================================
-- 4. WALK (Depends on Dogs & Walkers) - IDs start with 4
-- ==========================================
INSERT INTO Walk (WalkID, WalkDate, DurationMinutes, Status, DogID, WalkerID) VALUES
(4001, '2026-10-25', 30, 'walked', 3001, 2001),
(4002, '2026-10-26', 45, 'walked', 3002, 2002),
(4003, '2026-10-27', 30, 'walked', 3003, 2003),
(4004, '2026-10-28', 60, 'scheduled', 3004, 2004),
(4005, '2026-10-29', 20, 'walked', 3005, 2005),
(4006, '2026-10-30', 45, 'cancelled', 3006, 2006),
(4007, '2026-10-31', 30, 'scheduled', 3007, 2007),
(4008, '2026-11-01', 60, 'walked', 3008, 2008),
(4009, '2026-11-02', 45, 'walked', 3009, 2009),
(4010, '2026-11-03', 30, 'scheduled', 3010, 2010),
(4011, '2026-11-04', 20, 'walked', 3011, 2011);

-- ==========================================
-- 5. PAYMENTS (Depends on Walk) - IDs start with 5
-- ==========================================
INSERT INTO Payments (PaymentID, Amount, PaymentDate, PaymentStatus, WalkID) VALUES
(5001, 30.00, '2026-10-25', 'paid', 4001),
(5002, 45.00, '2026-10-26', 'paid', 4002),
(5003, 30.00, '2026-10-27', 'paid', 4003),
(5004, 60.00, '2026-10-28', 'pending', 4004),
(5005, 20.00, '2026-10-29', 'paid', 4005),
(5006, 45.00, '2026-10-30', 'refunded', 4006),
(5007, 30.00, '2026-10-31', 'pending', 4007),
(5008, 60.00, '2026-11-01', 'paid', 4008),
(5009, 45.00, '2026-11-02', 'paid', 4009),
(5010, 30.00, '2026-11-03', 'pending', 4010),
(5011, 20.00, '2026-11-04', 'paid', 4011);

-- Retriving all data in dogs table
SELECT *FROM Dogs;




