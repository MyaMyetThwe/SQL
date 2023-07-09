/* Inner Joins, Full/Left/Right Outer Joins*/

SELECT *
FROM EmployeeDemographics;

SELECT *
FROM EmployeeSalary;

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary
 ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID;

SELECT *
FROM EmployeeDemographics
Full OUTER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID;

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
  ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID;

SELECT *
FROM EmployeeDemographics
RIGHT OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID;

SELECT EmployeeDemographics.EmployeeID,FirstName,LastName,JobTitle,Salary
FROM EmployeeDemographics
Inner JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID;

SELECT EmployeeSalary.EmployeeID,FirstName,LastName,JobTitle,Salary
FROM EmployeeDemographics
Left OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID;

SELECT EmployeeDemographics.EmployeeID,FirstName,LastName,Salary
FROM EmployeeDemographics
Inner JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
	WHERE FirstName<>'Miachel'
	ORDER BY Salary DESC

SELECT JobTitle,AVG(Salary)
FROM EmployeeDemographics
Inner JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
	WHERE JobTitle='SaleMan'
	GROUP BY JobTitle
	