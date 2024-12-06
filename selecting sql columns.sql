create database onboard1; 
use onboard1;
create table onboarding (
EmployeeID INT,
firstName VARCHAR(50),
LastName VARCHAR(60),
Salary DECIMAL(10,2),
Department VARCHAR(50),
PhoneNumber VARCHAR(10)
)

insert into onboarding ( EmployeeID , firstName , LastName , Salary , Department , PhoneNumber )
values
(1,'Hansee','Rawat',1000,'Skills and SII','123-456'),
(2,'Priya','Kamra',2000,'Sparc and SIIs','567-7986'),
(3,'Arunima','Goyal',1000,'Bilateral and multilateral',NULL),
(4,'Vaishnavi','Swaminathan',1000,'SII','132-456'),
(5,'zoya','Ahmad',1000,'Skills and bilatera','321-654'),
(6,'Shereen','Fatima',2000,'Architecture','321-651');

Select * from onboarding;

select EmployeeID from onboarding;

select EmployeeID , firstName , Salary from onboarding;

select distinct Department from onboarding;

select count(*) from onboarding;















