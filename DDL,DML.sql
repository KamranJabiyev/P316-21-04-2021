--DDL queries

CREATE DATABASE P316Db

DROP DATABASE P316Db

USE P316Db

CREATE TABLE Students(
	Id int,
	Name nvarchar(100),
	Surname nvarchar(150)
)

--DROP TABLE Students

--ALTER TABLE Students
--ADD Age int,Email nvarchar(255)

--ALTER TABLE Students
--DROP COLUMN Age

--EXEC sp_rename Stu,Students

--EXEC sp_rename 'Students.Surname',Lastname

--DML
--CRUD

INSERT INTO Students
VALUES(2,'Faiq','Abdullayev',21,'fa@code.edu.az'),
	  (3,'Nicat','Memmedli',27,'nm@code.edu.az'),
	  (4,'Abduleziz','Kerimli',20,'ak@code.edu.az')


INSERT INTO Students (Name,Age)
VALUES('Kamran',27)

UPDATE Students SET Age=21,Lastname='Kerimov'
WHERE Id=4

DELETE FROM Students
WHERE Id=1

SELECT * FROM Students

SELECT Name,Lastname 'Firstname',Email FROM Students

SELECT Name FROM Students
WHERE Name Like '%iq'

SELECT * FROM Students
--WHERE Age>=20 AND Age<25
--WHERE Age BETWEEN 20 AND 25
WHERE Id In(2,3,4)

SELECT Name,LEN(Name) 'Length' FROM Students

SELECT Email,CHARINDEX('@',Email) FROM Students

SELECT SUBSTRING(Email,1,4) FROM Students

SELECT SUBSTRING(Email,1,CHARINDEX('@',Email)-1) FROM Students

SELECT CONCAT(Name,' ',Lastname) 'Fullname' FROM Students

SELECT Name+' '+Lastname 'Fullname' FROM Students

SELECT COUNT(*) FROM Students

Select Name,Age FROM Students
Where Age=(SELECT MAX(Age) FROM Students)

SELECT Name,Age FROM Students
WHERE Age=(SELECT MIN(Age) From Students)

SELECT Name FROM Students
WHERE Age>=(SELECT AVG(Age) FROM Students)


