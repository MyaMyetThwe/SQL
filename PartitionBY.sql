/* Partition By */

SELECT Demo.FirstName,Demo.LastName,Demo.Gender,Sal.Salary,
	COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM EmployeeDemographics AS Demo
JOIN EmployeeSalary AS Sal
ON Demo.EmployeeID=Sal.EmployeeID

--SELECT Demo.FirstName,Demo.LastName,Demo.Gender,Sal.Salary,COUNT(Gender)
--FROM EmployeeDemographics AS Demo
--JOIN EmployeeSalary AS Sal
--ON Demo.EmployeeID=Sal.EmployeeID
--GROUP BY Demo.FirstName,Demo.LastName,Demo.Gender,Sal.Salary

SELECT Demo.Gender,COUNT(Gender)
FROM EmployeeDemographics AS Demo
JOIN EmployeeSalary AS Sal
ON Demo.EmployeeID=Sal.EmployeeID
GROUP BY Demo.Gender