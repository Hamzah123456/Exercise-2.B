USE lana_dog_walking;
INSERT INTO clients (first_name, last_name, phone, email, address)
VALUES
('Michael', 'Carter', '555-214-7831', 'michael.carter@email.com', '456 Oak Ridge Dr'),
('Emily', 'Martinez', '555-398-2204', 'emily.martinez@email.com', '789 Pine Ave'),
('David', 'Thompson', '555-671-9042', 'david.thompson@email.com', '102 Cedar Ln'),
('Jessica', 'Reed', '555-482-1176', 'jessica.reed@email.com', '315 Birch St'),
('Daniel', 'Flores', '555-907-3348', 'daniel.flores@email.com', '628 Willow Creek Rd'),
('Ashley', 'Morgan', '555-126-8895', 'ashley.morgan@email.com', '941 Cherry Blossom Way'),
('Christopher', 'Bailey', '555-753-4410', 'chris.bailey@email.com', '177 Highland Ave'),
('Amanda', 'Peterson', '555-284-6652', 'amanda.peterson@email.com', '530 Riverbend Dr'),
('Matthew', 'Brooks', '555-619-7728', 'matthew.brooks@email.com', '264 Spruce Ct'),
('Lauren', 'Simmons', '555-845-1937', 'lauren.simmons@email.com', '808 Meadow Park Blvd');
INSERT INTO walkers (first_name, last_name, phone, email, availability) VALUES
('Jordan', 'Smith', '555-987-6543', 'jordan.smith@email.com', 'Weekdays 8am-4pm'),
('Mia', 'Carter', '555-876-1234', 'mia.carter@email.com', 'Weekdays 10am-6pm'),
('Noah', 'Evans', '555-765-4321', 'noah.evans@email.com', 'Weekends only'),
('Olivia', 'Turner', '555-654-3210', 'olivia.turner@email.com', 'Mon-Wed 9am-2pm'),
('Ethan', 'Parker', '555-543-2109', 'ethan.parker@email.com', 'Tue-Fri 12pm-7pm'),
('Sophia', 'Reed', '555-432-1098', 'sophia.reed@email.com', 'Daily mornings'),
('Liam', 'Cook', '555-321-0987', 'liam.cook@email.com', 'Weekdays evenings'),
('Ava', 'Morgan', '555-210-9876', 'ava.morgan@email.com', 'Sat-Sun 8am-5pm'),
('Lucas', 'Bell', '555-109-8765', 'lucas.bell@email.com', 'Mon-Fri 7am-1pm'),
('Chloe', 'Ward', '555-208-3344', 'chloe.ward@email.com', 'Flexible');
INSERT INTO dogs (client_id, dog_name, breed, age, size, special_instructions, medical_notes) VALUES
(1, 'Max', 'Labrador', 4, 'Large', 'Walk slowly in hot weather', 'None'),
(2, 'Bella', 'Beagle', 2, 'Medium', 'Does not like loud noises', 'None'),
(3, 'Charlie', 'Poodle', 5, 'Medium', 'Needs water after walk', 'Mild allergy'),
(4, 'Lucy', 'German Shepherd', 3, 'Large', 'Strong leash required', 'None'),
(5, 'Daisy', 'Bulldog', 6, 'Medium', 'Short walks only', 'Breathing issues'),
(6, 'Rocky', 'Boxer', 4, 'Large', 'Very energetic', 'None'),
(7, 'Lola', 'Shih Tzu', 7, 'Small', 'Avoid muddy areas', 'Arthritis'),
(8, 'Duke', 'Golden Retriever', 3, 'Large', 'Friendly with other dogs', 'None'),
(9, 'Milo', 'Corgi', 2, 'Small', 'Prefers shaded route', 'None'),
(10, 'Sadie', 'Terrier', 5, 'Small', 'Can be nervous around traffic', 'None');
INSERT INTO appointments (dog_id, walker_id, walk_date, walk_time, duration, status, notes) VALUES
(1, 1, '2026-04-20', '10:00:00', 30, 'scheduled', 'First walk for Max'),
(2, 2, '2026-04-20', '11:00:00', 45, 'scheduled', 'Bella needs calm route'),
(3, 3, '2026-04-21', '09:30:00', 30, 'scheduled', 'Bring water bottle'),
(4, 4, '2026-04-21', '01:00:00', 60, 'scheduled', 'Use strong leash'),
(5, 5, '2026-04-22', '10:30:00', 20, 'scheduled', 'Keep walk short'),
(6, 6, '2026-04-22', '08:00:00', 40, 'scheduled', 'High energy dog'),
(7, 7, '2026-04-23', '02:00:00', 25, 'scheduled', 'Avoid slippery sidewalks'),
(8, 8, '2026-04-23', '12:00:00', 35, 'scheduled', 'Good park route'),
(9, 9, '2026-04-24', '09:00:00', 30, 'scheduled', 'Stay in shaded area'),
(10, 10, '2026-04-24', '03:30:00', 30, 'scheduled', 'Avoid traffic-heavy roads');
SELECT * FROM clients;
SELECT * FROM walkers;
SELECT * FROM dogs;
SELECT * FROM appointments;