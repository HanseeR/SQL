

-- SQL types are , postgre and SQL server 
-- Create the database and use it
CREATE DATABASE onboard;
USE onboard;

-- Create the Onboarding table (for employees)
CREATE TABLE Onboarding (
    employeeID INT,
    Firstname VARCHAR(50),
    LastName VARCHAR(20),
    Salary DECIMAL(10, 2),
    Department VARCHAR(50),
    PhoneNumber VARCHAR(15)
);

-- Create the Projects table
CREATE TABLE Projects (
    ProjectID INT,
    ProjectName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    LeadEngineer VARCHAR(50),
    Budget DECIMAL(10, 2)
);

-- Insert data into Projects table
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, LeadEngineer, Budget)
VALUES
(1, 'Project A', '2023-01-01', '2023-06-30', 'John Smith', 50000.00),
(2, 'Project B', '2023-02-01', '2023-08-30', 'Sarah Johnson', 70000.00),
(3, 'Project C', '2023-03-01', '2023-11-30', 'Michael Brown', 55000.00),
(4, 'Project D', '2023-04-01', '2023-06-30', 'Emily', 35000.00),
(5, 'Project E', '2023-05-01', '2023-07-30', 'Davis', 45000.00),
(6, 'Project F', '2023-06-01', '2023-01-30', 'David', 23000.00),
(7, 'Project G', '2023-07-01', '2023-03-30', 'Anderson', 34000.00),
(8, 'Project H', '2023-08-01', '2023-04-30', 'Amy', 67000.00);

-- Rename the Projects table to onboard
RENAME TABLE Projects TO onboard;

-- Display data from the renamed onboard table
SELECT * FROM onboard;

select ProjectID from onboard;

select ProjectID , LeadEngineer, Budget from onboard;

SELECT distinct  ProjectName from onboard;

select count(*) from onboard;





















