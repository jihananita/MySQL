CREATE DATABASE jihan_db;
USE jihan_db;
DROP TABLE Persons;
CREATE TABLE Persons (
    PersonID int NOT NULL AUTO_INCREMENT,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255),
    PRIMARY KEY (PersonID)
);
SHOW TABLES;
INSERT INTO Persons (
	LastName,
    FirstName,
    Address,
    City
)
VALUES
('Anita', 'Jihan', 'Laguna', 'Depok')
('Yunita', 'Shella', 'Laguna', 'Depok');
SELECT * FROM Persons;
SELECT LastName, FirstName, City FROM Persons;
ALTER TABLE Persons ADD COLUMN Age INT;
ALTER TABLE Persons DROP COLUMN Age;
SELECT * FROM Persons;
INSERT INTO Persons (LastName, FirstName, Address, City,Age) 
VALUES ('Ramadini', 'Fadia', 'Cilodong', 'Depok', 17);
SELECT * FROM Persons;
ALTER TABLE Persons AUTO_INCREMENT=100;
SELECT * FROM Persons
WHERE PersonID=1;
UPDATE Persons SET Age=17 WHERE PersonID=1;
SELECT * FROM Persons
WHERE LastName LIKE '%ta';
SELECT * FROM Persons
WHERE LastName = 'Anita' AND City = 'Depok';
SELECT * FROM Persons
WHERE LastName = 'Anita' AND City = 'Depok'; 
SELECT * FROM Persons
WHERE NOT LastName = 'Anita' AND City = 'Depok'; 
SELECT * FROM Persons
WHERE  LastName = 'Anita' AND (City = 'Depok' OR City = 'Jakarta');
SELECT * FROM Persons
WHERE City = 'Depok' AND Address = 'Laguna' AND (PersonID <> 1 AND PersonID <> 2);
SELECT * FROM Persons
ORDER BY LastName ASC;
SELECT * FROM Persons
ORDER BY LastName DESC;
SELECT * FROM Persons
ORDER BY PersonID DESC;
SELECT * FROM Persons
ORDER BY LastName DESC;
SELECT * FROM Persons
WHERE Age IS NULL;
SELECT * FROM Persons
WHERE Age IS NOT NULL;
SELECT * FROM Persons
WHERE AGE IS NULL ORDER BY LastName ASC;
SELECT * FROM Persons;
DELETE FROM Persons
WHERE LastName= 'Anita';
SELECT * FROM Persons
WHERE City= 'Depok'
LIMIT 2;
SELECT SUM(PersonID)
FROM Persons;
SELECT MIN(PersonID) AS FirstPersonID
FROM Persons;
SELECT MIN(LastName) AS FirstPeople
FROM Persons;
SELECT MAX(City) AS LastCity
FROM Persons;
SELECT COUNT(LastName) AS TotalName
FROM Persons;
SELECT COUNT(LastName) AS TotalName
FROM Persons
WHERE LastName = 'Anita';
SELECT COUNT(LastName)
FROM Persons
WHERE LastName = 'Anita';
SELECT SUM(PersonID)
FROM Persons;
SELECT AVG(PersonID)
FROM Persons;
SELECT SUM(PersonID) AS Totalsum, COUNT(PersonID) AS Total 
FROM Persons;
SELECT * FROM Persons;
SELECT * FROM Persons
WHERE LastName LIKE '__a';
SELECT * FROM Persons
WHERE LastName LIKE '%ta';
SELECT * FROM Persons
WHERE LastName LIKE 'yu%';
SELECT * FROM Persons
WHERE LastName LIKE '%__ta';
SELECT * FROM Persons
WHERE City LIKE 'Depok%';
SELECT * FROM Persons
WHERE City LIKE '%ep%';
SELECT * FROM Persons
WHERE City LIKE 'D%k';
SELECT * FROM Persons
WHERE MOD (PersonID,2)=0;
SELECT * FROM Persons
WHERE City IN('Depok');
SELECT * FROM Persons
WHERE City IN(SELECT City From Suppliers);
SELECT * FROM Persons
WHERE PersonID BETWEEN 3 AND 4;
SELECT * FROM application_tab;
SELECT * FROM user_tab;
SELECT application_tab.Category, user_tab.country
FROM application_tab
INNER JOIN user_tab ON application_tab.userid = user_tab.userid
WHERE application_tab.Category = 'Marketing';

SELECT ï»¿userid FROM user_tab;
DROP TABLE user_tab;
ALTER TABLE user_tab change ï»¿userid userid int;
SELECT userid FROM user_tab;

SELECT AVG(userid), Country
FROM user_tab
GROUP by Country
HAVING AVG(userid) > 1605;

SELECT userid, Country
CASE
WHEN userid = 10310 THEN 'Lower'
ELSE 'Upper'
END AS userlowerupper
FROM user_tab;

SELECT * FROM TEST;

UPDATE TESTING
SET orderdate = str_to_date(orderdate, "%d/%m/%Y");

UPDATE TEST
SET orderdate = str_to_date(orderdate, "%d/%m/%Y");

SELECT * FROM TEST
UNION
SELECT * FROM TESTING
ORDER BY id;

SELECT *,
CASE
WHEN firstname = 'chairul' THEN 'CEO'
WHEN firstname = 'steven' THEN 'CTO'
ELSE 'Employee'
END AS EmployeeStatus
FROM test;



