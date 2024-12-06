-- Create the database
CREATE DATABASE IF NOT EXISTS employee;

-- Use the employee database
USE employee;

-- Create the employee_details table
CREATE TABLE employee_details (
    emp_id VARCHAR(8),
    emp_name VARCHAR(10),
    emp_designation VARCHAR(30),
    emp_age INT
);

-- Insert data into employee_details table
INSERT INTO employee_details 
VALUES 
    ('e40001', 'PRADEEP', 'H.R', 36),
    ('E40002', 'ASHOK', 'MANAGER', 28),
    ('E40003', 'PAVAN', 'A MANAGER', 28),
    ('E40004', 'SANTHOSH', 'STORE MANAGER', 26),
    ('E40005', 'THAMAN', 'GENERAL STORE', 26);

-- Select all data from employee_details
SELECT * FROM employee_details;

-- Select all employees where emp_name is not 'PRADEEP'
SELECT * FROM employee_details
WHERE emp_name <> 'PRADEEP';

-- Select all employees whose emp_designation is not 'GENERAL MANAGER' and not 'STORE MANAGER'
SELECT * FROM employee_details
WHERE emp_designation <> 'GENERAL MANAGER' 
AND emp_designation <> 'STORE MANAGER';

--  means that the query will return only the rows where the emp_designation column does not equal ('<>') either 'GENERAL MANAGER' or 'STORE MANAGER'.


    
    
    
    
    
    
    
    
    
    
    
    
    
