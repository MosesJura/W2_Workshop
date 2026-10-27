USE lana_dog_walking
INSERT INTO Owner (OwnerID, Name, `Phone#`, Email)
VALUES
(15660, 'Sarah Johnson', '215-555-0101', 'sarah.johnson@example.com'),
(15661, 'Michael Davis', '215-555-0102', 'michael.davis@example.com'),
(15662, 'Jessica Brown', '215-555-0103', 'jessica.brown@example.com'),
(15663, 'Daniel Wilson', '215-555-0104', 'daniel.wilson@example.com'),
(15664, 'Ashley Miller', '215-555-0105', 'ashley.miller@example.com'),
(15665, 'Christopher Taylor', '215-555-0106', 'chris.taylor@example.com'),
(15666, 'Amanda Anderson', '215-555-0107', 'amanda.anderson@example.com'),
(15667, 'Matthew Thomas', '215-555-0108', 'matt.thomas@example.com'),
(15668, 'Stephanie Moore', '215-555-0109', 'stephanie.moore@example.com'),
(15669, 'Joshua Martin', '215-555-0110', 'joshua.martin@example.com');


INSERT INTO Dog (DogID, OwnerID, `Dog Name`, Breed)
VALUES
(15979, 15660, 'Buddy', 'Golden Retriever'),
(15980, 15661, 'Luna', 'Labrador Retriever'),
(15981, 15662, 'Charlie', 'Beagle'),
(15982, 15663, 'Bella', 'German Shepherd'),
(15983, 15664, 'Max', 'Poodle'),
(15984, 15665, 'Daisy', 'French Bulldog'),
(15985, 15666, 'Rocky', 'Boxer'),
(15986, 15667, 'Lucy', 'Dachshund'),
(15987, 15668, 'Cooper', 'Border Collie'),
(15988, 15669, 'Milo', 'Shih Tzu');
