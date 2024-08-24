--- cretae a table users with the following columns
--- id: an integer that auto-increments and is the primary key of the table.
--- name: a string of up to 255 characters that cannot be null.
--- email: a string of up to 255 characters that cannot be null and must be unique.
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);
