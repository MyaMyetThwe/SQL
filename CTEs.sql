/* CTEs */

WITH CTE_DEMO as
(Select FirstName,LastName,Gender,Salary,
	COUNT(Gender) OVER(PARTITION BY Gender) AS TotalGender,
	AVG (Salary) OVER (PARTITION BY Salary) AS AVGSalary
	FROM EmployeeDemographics As demo
	JOIN EmployeeSalary As sal
	ON demo.EmployeeID=sal.EmployeeID
	WHERE Salary >45000
)
Select TotalGender,AVGSalary
FROM CTE_DEMO

