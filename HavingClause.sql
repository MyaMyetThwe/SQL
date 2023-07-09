/*Having Claus*/

--Select JobTitle, COUNT(JobTitle)
--FROM EmployeeDemographics
--JOIN EmployeeSalary
--	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
--GROUP By JobTitle
--Having COUNT(JobTitle)>1

SELECT JobTitle,AVG(Salary)
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
	GROUP BY JobTitle
	HAVING AVG(Salary)>45000
	ORDER BY AVG(Salary)
	