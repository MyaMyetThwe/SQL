/*Updating/Deleting Data*/

SELECT *
FROM EmployeeDemographics

--UPDATE EmployeeDemographics
--SET EmployeeID=1012
--WHERE FirstName='Holly' AND LastName='Flax'

--UPDATE EmployeeDemographics
--SET Age=31,Gender='Female'
--WHERE EmployeeID=1012

SELECT * FROM EmployeeDemographics
WHERE EmployeeID=1005

DELETE FROM EmployeeDemographics
WHERE EmployeeID=1005

