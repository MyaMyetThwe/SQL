/* String Function - TRIM,LTRIM,RTRIM,Replace,Substring,Upper,Lower */

--SELECT *
--FROM EmployeeDemographics

--CREATE TABLE EmployeeErrors(
--	EmployeeID int,
--	FirstName varchar(50),
--	LastName varchar(50),
--)

--INSERT INTO EmployeeErrors VALUES
--('1001   ','Jimbo','Halbert'),
--('   1002','Pamela','Beasely'),
--('1005','TOby','Flenderson - Fired')

--SELECT * FROM EmployeeErrors

SELECT EmployeeID, TRIM(EmployeeID) AS TRIMEmployeeID
FROM EmployeeErrors



--Using Replace
SELECT LastName, REPLACE (LastName,'- Fired','')
FROM EmployeeErrors

--Using Substring
--SELECT FirstName,SUBSTRING (FirstName,2,4)
--FROM EmployeeErrors

--SELECT er.FirstName,SUBSTRING(er.FirstName,1,3) AS ErrorFirstName,
--demo.FirstName,SUBSTRING(demo.FirstName,1,3) AS DemoFirstName
--FROM EmployeeErrors er
--JOIN EmployeeDemographics demo
--ON SUBSTRING(er.FirstName,1,3)=SUBSTRING(demo.FirstName,1,3)


--Using Lower,Upper
SELECT FirstName, LOWER(FirstName) LowerFirstName ,LastName, UPPER(LastName) UpperLastName
FROM EmployeeErrors