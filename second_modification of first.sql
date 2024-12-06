-- Step 1: Create the database (if not already created)
CREATE DATABASE IF NOT EXISTS first;

-- Step 2: Select the 'first' database
USE first;

-- Step 3: Create the 'STUDENT' table
CREATE TABLE STUDENT (
    ROLL_NO INT NOT NULL,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(20),
    AGE INT,
    MARKS INT
);

-- Step 4: Insert data into the 'STUDENT' table (Example)
INSERT INTO STUDENT (ROLL_NO, FIRST_NAME, LAST_NAME, AGE, MARKS) 
VALUES (10, 'HANSEE', 'RAWAT', 20, 50);

-- Step 5: Alter the 'STUDENT' table to add columns
ALTER TABLE STUDENT ADD Father_name VARCHAR(60);
ALTER TABLE STUDENT ADD Mother_name VARCHAR(60);

-- Step 6: Drop 'AGE' column
ALTER TABLE STUDENT DROP COLUMN AGE;

-- Step 7: Insert updated data into the 'STUDENT' table
INSERT INTO STUDENT (ROLL_NO, FIRST_NAME, LAST_NAME, MARKS, Father_name, Mother_name) 
VALUES (10, 'HANSEE', 'RAWAT', 890, 'XYZ', 'ABC');

-- Step 8: Rename the table 'STUDENT' to 'STUDENT_DETAILS'
RENAME TABLE STUDENT TO STUDENT_DETAILS;

-- Step 9: Create the 'sample_table' table
CREATE TABLE sample_table (
    column1 VARCHAR(50) NOT NULL,
    column2 INT PRIMARY KEY,
    column3 DATE
);

-- Step 10: Create the 'student' table with a primary key
DROP TABLE IF EXISTS student;
CREATE TABLE student (
    ID INT NOT NULL UNIQUE,
    name VARCHAR(10) NOT NULL,
    address VARCHAR(20),
    PRIMARY KEY (ID)
);

-- Step 11: Create another 'students' table
DROP TABLE IF EXISTS students;
CREATE TABLE students (
    ID INT NOT NULL,
    name VARCHAR(10) NOT NULL,
    address VARCHAR(20)
);

-- Step 12: Create the 'orders' table with a foreign key reference
DROP TABLE IF EXISTS orders;

-- Step 13: Create the 'customer' table with a primary key
DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
    ID INT NOT NULL UNIQUE,
    name VARCHAR(10) NOT NULL,
    address VARCHAR(20),
    PRIMARY KEY (ID)
);

CREATE TABLE orders (
    Order_ID INT NOT NULL UNIQUE,
    parcel_name VARCHAR(10) NOT NULL,
    Customer_ID INT NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES student(ID)
);
