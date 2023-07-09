/*Group By, Order By*/

SELECT * 
FROM EmployeeDemographics;

SELECT Gender,COUNT(Gender) As CountGender
FROM EmployeeDemographics
WHERE Age >30
GROUP BY Gender
ORDER BY Gender DESC;

SELECT *
FROM EmployeeDemographics
--ORDER BY Age DESC,Gender DESC
ORDER BY 3 DESC

