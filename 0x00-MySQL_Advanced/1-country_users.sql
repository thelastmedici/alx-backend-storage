-- This query creates a table called users with the following columns:
-- id: an integer that auto-increments and is the primary key of the table.
-- name: a string of up to 255 characters that cannot be null.
-- email: a string of up to 255 characters that cannot be null and must be unique.
-- country: an enumerated data type that can only take the values 'US', 'CO',
CREATE TABLE IF NOT EXITS users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US',
);
