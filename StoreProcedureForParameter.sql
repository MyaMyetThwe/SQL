USE [SQLTutorial]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee1]    Script Date: 6/30/2023 11:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Temp_Employee1]
@Salary int
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
WHERE Salary=@Salary
Group By JobTitle

Select *
From #temp_employee
