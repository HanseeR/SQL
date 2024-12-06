-- show databases
create database first
-- Types of SQL commands
-- DDL : To define data schemes , create , alter , truncate 
--  DQL : pURPOSE OF THE RELATION THAT HAS BEEN CREATED BY ddl , select command
--   DML : Data maniputalion language , insert , update , delete , call , explain call,lock
-- DCL : Grant and revoke 
--  TCL : cOMMIT , SAVEPOINT , ROLLBACK , SET transaction , set constraint 

# ddl command 

-- SHOW DATABASES;
-- CREATE DATABASE FIRST

USE first;
CREATE TABLE STUDENT
(
ROLL_NO INT ,
FIRST_NAME VARCHAR (50),
LAST_NAME VARCHAR (20),
AGE INT,
MARKS INT
) ;

-- SHOW DATABASES ; 
-- -- DROP DATABASE FIRST;
-- -- DROP TABLES STUDENT ; 
-- INSERT INTO STUDENT VALUES ('10','HANSEE','RAWAT','20','50') ;
-- ALTER TABLE STUDENT ADD Father_name varchar(60) ;
-- ALTER TABLE STUDENT
-- DROP COLUMN AGE;
-- ALTER TABLE STUDENT ADD Mother_name varchar(60) ;
-- INSERT INTO STUDENT VALUES('10','HANSEE','RAWAT','890','XYZ','ABC')
-- -- SELECT * FROM STUDENT ; 
-- TRUNCATE TABLE STUDENT; 
-- -- The data inside the table gets deleted.
-- RENAME TABLE STUDENT TO STUDENT_DETAILS;


-- sql constrainsts 
'''
not null
We cannot store a null valeand cannot be stored into anull format 
Unique
The values stoted in the row should be unique
Primary key 
Uniquely identified each row in a table 
Foreign key 
Can uniquely identify each row in anoter table 
Check 
Helsp to ensure that the value in a col meets a specific condition 
default 
'''
-- use FIRST
-- CREATE TABLE sample_table (
--     column1 datatype(size) constraint_name,
--     column2 datatype(size) constraint_name,
--     column3 datatype(size) constraint_name
-- );

-- Step 1: Create the database (if not already created)
CREATE DATABASE IF NOT EXISTS first;

-- Step 2: Select the database
USE first;

-- Step 3: Create the table
CREATE TABLE sample_table (
    column1 VARCHAR(50) NOT NULL,
    column2 INT PRIMARY KEY,
    column3 DATE
);

CREATE TABLE student (
    ID INT NOT NULL,
    name VARCHAR(10) NOT NULL,
    address VARCHAR(20)
);

DROP TABLE student;
CREATE TABLE student (
    ID INT NOT NULL unique,
    name VARCHAR(10) NOT NULL,
    address VARCHAR(20),
    primary key(ID)
);

-- primary key - so that unique values are idetified for the information that we have  

CREATE TABLE students (
    ID INT NOT NULL,
    name VARCHAR(10) NOT NULL,
    address VARCHAR(20)
);

CREATE table orders
(
 Order_ID int(5) NOT NULL unique,
 parcel_name varchar(10) not null,
 ID int(5) not null unique, 
 
 foreign key(ID) references Customers(id) 
); 

create table customer
(
 ID int(5) not null unique,
 name varchar(10) not null,
 address varchar(20),
 
 primary key(10)
);


























