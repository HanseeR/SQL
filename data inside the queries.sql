create database queries;

use queries;
-- code to create a table 
create table engineering (
ProjectID int primary key ,
ProjectName varchar(100),
StaratDate Date,
EndDate Date,
LeadEngineer varchar(100),
Budget decimal(10,2)
);

USE queries;

ALTER TABLE engineering ADD COLUMN StartDate DATE;
ALTER TABLE engineering ADD COLUMN EndDate DATE;

insert into engineering (ProjectID , ProjectName ,StartDate ,EndDate,LeadEngineer,Budget)
values
(1,'Project A','2023-01-01','2023-06-30','John Smith',50000.00),
(2,'Project B','2023-02-01','2023-08-30','Sarah Johnson',70000.00),
(3,'Project C','2023-03-01','2023-11-30','Michael Brown',55000.00),
(4,'Project D','2023-04-01','2023-06-30','Emily',35000.00),
(5,'Project E','2023-05-01','2023-07-30','Davis',45000.00),
(6,'Project F','2023-06-01','2023-01-30','David',23000.00),
(7,'Project G','2023-07-01','2023-03-30','Anderson',34000.00),
(8,'Project H','2023-08-01','2023-04-30','Amy',67000.00);

desc engineering;

select ProjectName ,Budget,EndDate from engineering;

update engineering set endDate = '2023-12-31' where ProjectID = 123;

select sum(budget) from engineering;

-- USE queries;

SELECT Engineering.ProjectName, Engineering.Budget, Employees.Name AS LeadEngineer
FROM Engineering 
JOIN Employees ON Engineering.LeadEngineer = Employees.EmployeeID;

-- Make sure that the code is easy to understand

# How to write queries 

select distinct LeadEngineer from Engineering;

# Insert a duplicate value 
insert into engineering (ProjectID , ProjectName ,StartDate ,EndDate,LeadEngineer,Budget)
values
(1,'Project A','2023-01-01','2023-06-30','John Smith',50000.00);

select * from engineering;

# Distinct keyword make sure that the duplicacy of the data is not there 

Select e.ProjectName,e.LeadEngineer AS EngineerName
FROM Engineering AS e;


























