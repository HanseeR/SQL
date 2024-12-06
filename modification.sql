-- Create the database (if it doesn't exist already)
CREATE DATABASE IF NOT EXISTS your_database;

-- Select the database to use
USE your_database;

-- Create the table 'mylog'
CREATE TABLE IF NOT EXISTS mylog (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(20),
    login DATE  -- 'login' is a DATE type for storing date values
);

-- Insert a record into the 'mylog' table with a valid date format
INSERT INTO mylog (id, name, login)
VALUES (2, 'John Smith', '2023-12-03');  -- Corrected date format

-- Insert another record with a valid date format
INSERT INTO mylog (id, name, login)
VALUES (1, 'Hansee Rawat', '2023-12-06');  -- Corrected date format

-- Insert another record with a valid date format
INSERT INTO mylog (id, name, login)
VALUES (3, 'Smith', '2023-12-04');  -- Corrected date format

-- Select all records from the 'mylog' table
SELECT * FROM mylog;

-- Update record with id = 1
UPDATE mylog 
SET name = 'John' 
WHERE id = 1;

-- Delete the record with id = 1
DELETE FROM mylog 
WHERE id = 1;

-- Corrected TRUNCATE statement (removed the colon)
TRUNCATE TABLE mylog;
