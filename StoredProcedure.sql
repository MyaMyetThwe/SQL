/* Store Procedures */

--CREATE PROCEDURE Test
--As
--Select * 
--FROM EmployeeDemographics

--EXEC Test

CREATE PROCEDURE Temp_Employee1
As
CREATE TABLE #temp_employee
( JobTitle varchar(50),
  EmployeePerJob int,
  AVGAge int,
  AVGSalary int
)

INSERT INTO #temp_employee
Select JobTitle,COUNT(JobTitle),AVG(Age),AVG(Salary)
FROM EmployeeDemographics demo
JOIN EmployeeSalary sal
ON  demo.EmployeeID=sal.EmployeeID
Group By JobTitle

Select *
From #temp_employee

EXEC Temp_Employee1 @Salary=45000