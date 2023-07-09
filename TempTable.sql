/*temp_table*/

--CREATE TABLE Temp_Employee(
--	EmployeeID int,
--	JobTitle varchar(100),
--	Salary int
--)

--INSERT INTO Temp_Employee VALUES
--('1001','HR','35000')

--SELECT *
--FROM Temp_Employee

--INSERT INTO Temp_Employee
--SELECT *
--FROM SQLTutorial..EmployeeSalary

DROP TABLE IF EXISTS Temp_Employee2
CREATE TABLE Temp_Employee2(
	JobTitle varchar(50),
	EmployeePerJob int,
	AVGAge int,
	AVAGSalary int
)

INSERT INTO Temp_Employee2
	SELECT JobTitle,COUNT(JobTitle),AVG(Age),AVG(Salary)
	FROM SQLTutorial..EmployeeDemographics demo
	JOIN SQLTutorial..EmployeeSalary sal
	ON demo.EmployeeID=sal.EmployeeID
	GROUP BY JobTitle

SELECT * 
FROM Temp_Employee2
	




