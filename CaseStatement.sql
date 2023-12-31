/* CASE STATEMENT */

--SELECT FirstName,LastName,Age,
--CASE
--	WHEN Age >30 THEN 'OLD'
--	ELSE 'YOUNG'
--END
--FROM EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER BY Age

--SELECT FirstName,LastName,Age,
--CASE
--	WHEN Age =40 THEN 'Scott'
--	WHEN Age >30 THEN 'Old'
--	--WHEN Age BETWEEN 26 AND 29 THEN 'YOUNG'
--	ELSE 'BABY'
--END
--FROM EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER BY Age

SELECT FirstName,LastName,JobTitle,Salary,
CASE
	WHEN JobTitle ='SaleMan' THEN Salary+(Salary*.10)
	WHEN JobTitle ='Accountant' THEN Salary+(Salary*.05)
	WHEN JobTitle='HR' THEN Salary+(Salary*.00001)
	ELSE Salary+(Salary*.03)
END AS SalaryAfterRaise
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID


