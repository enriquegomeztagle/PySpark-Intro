-- Create new DB
-- CREATE DATABASE sparkdb;

-- Change to the new DB
-- \c sparkdb;

-- Create table 'people' with an auto-incrementing 'id' column
-- CREATE TABLE people (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(50),
--     age INT,
--     gender VARCHAR(10)
-- );

-- Insert into 'people' table
-- INSERT INTO people (name, age, gender) VALUES ('Alice', 25, 'F');
-- INSERT INTO people (name, age, gender) VALUES ('Bob', 30, 'M');

-- Delete all rows from 'people' table
-- DELETE FROM people;

-- Restart sequence from 'people' table
-- ALTER SEQUENCE people_id_seq RESTART WITH 1;

-- Drop the table 'people'
-- DROP TABLE people;

-- Drop the database 'sparkdb'
-- \c postgres
-- DROP DATABASE sparkdb;
