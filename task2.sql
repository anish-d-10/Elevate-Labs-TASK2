-- Sample inserts
INSERT INTO Users (name, email, phone) VALUES
('Anish D', 'anish@example.com', '9876543210'),
('Priya K', 'priya@example.com', NULL),
('Ravi M', 'ravi@example.com', '9123456789');

INSERT INTO Theaters (name, location) VALUES
('PVR', 'Coimbatore'),
('INOX', 'Chennai');

INSERT INTO Movies (title, genre, duration, language, release_date) VALUES
('Inception', 'Sci-Fi', 148, 'English', '2010-07-16'),
('RRR', 'Action', 180, 'Telugu', '2022-03-25'),
('Jawan', 'Action', NULL, 'Hindi', '2023-09-07');

INSERT INTO Shows (movie_id, theater_id, show_time, price) VALUES
(1, 1, '2025-08-10 18:30:00', 250.00),
(2, 2, '2025-08-11 15:00:00', 200.00),
(3, 1, '2025-08-12 20:00:00', 180.00);

INSERT INTO Bookings (user_id, show_id, seats_booked) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 1);

-- Update operations
-- 1. Update phone number where phone is currently NULL
UPDATE Users
SET phone = '9000000000'
WHERE phone IS NULL;

-- 2. Update price of a show
UPDATE Shows
SET price = 220.00
WHERE show_id = 3;

-- Delete operation
-- 1. Delete a booking by specific user ID and show
DELETE FROM Bookings
WHERE user_id = 2 AND show_id = 2;

-- 2. Delete movies with NULL duration (bad data)
DELETE FROM Movies
WHERE duration IS NULL;