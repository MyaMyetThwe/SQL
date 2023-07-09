/*Subqueries (in the select,From and Where Statement)*/

--Subquery in Select
Select EmployeeID,Salary ,(Select AVG(Salary) FROM EmployeeSalary) AS AVGALLForSalary
FROM EmployeeSalary

--How to do it Partition By
Select EmployeeID,Salary , AVG (Salary) OVER() as AVGAllForSalary
FROM EmployeeSalary

--Why Group by doesn't work
Select EmployeeID,Salary , AVG (Salary) as AVGAllForSalary
FROM EmployeeSalary
Group By EmployeeID,Salary
Order By 1,2

--Subquery in From
Select Emp.EmployeeID,AllAverageSalary
FROM (Select EmployeeID,Salary,AVG(Salary) OVER() as AllAverageSalary
		FROM EmployeeSalary) Emp


--Subquery in Where
Select EmployeeID,JobTitle,Salary
From EmployeeSalary
WHERE EmployeeID in 
				(Select EmployeeID
				From EmployeeDemographics
				WHERE Age>30)
			