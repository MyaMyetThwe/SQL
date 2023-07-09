/* WHERE Statement
	=,<>,<,>,AND,Or,LIKE,Null,Not Null,In */


SELECT *
FROM EmployeeDemographics
--WHERE FirstName <>'Jim';
--WHERE Age<30;
--WHERE Age <=30 AND Gender='Male';
--WHERE Age <=30 OR Gender='Male';
--WHERE LastName LIKE 'g%o%n%e%'
--WHERE FirstName is NULL;
--WHERE FirstName is NOT NULL;
WHERE LastName IN ('Smith','Emily')



