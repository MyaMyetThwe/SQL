/*SELECT Statement 
	TOP,DISTINCT,COUNT,AS,MAX,MIN,AVG*/

SELECT FirstName,LastName
FROM EmployeeDemographics;

SELECT Top 3*
FROM EmployeeDemographics;

SELECT DISTINCT (EmployeeID)
FROM EmployeeDemographics;

SELECT COUNT(EmployeeID) AS CountforEmployeeID
FROM EmployeeDemographics

SELECT MIN(Salary)
FROM EmployeeSalary;

SELECT AVG (Salary)
FROM EmployeeSalary;

--SELECT * FROM SQLTutorial.dbo.EmployeeDemographics
