/* UNION / UNION ALL */

SELECT * 
FROM EmployeeDemographics
UNION
SELECT * 
FROM WareHouseEmployeeDemographics

SELECT * 
FROM EmployeeDemographics
UNION ALL
SELECT * 
FROM WareHouseEmployeeDemographics
ORDER BY EmployeeID;

SELECT EmployeeID,FirstName,Age
FROM EmployeeDemographics
UNION
SELECT EmployeeID,JobTitle,Salary
FROM EmployeeSalary
ORDER BY EmployeeID;