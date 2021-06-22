DECLARE @FirstName NVARCHAR(30)
SET @FirstName = 'Antonio'
SELECT * 
FROM Student
WHERE FirstName = 'Antonio'

DECLARE @StudentInfo TABLE (StudentID int,StudentName NVARCHAR(20),DateOfBirth DateTime)
SELECT * FROM Student s
WHERE Gender = 'F'
inner join Student s on @StudentInfo.StudentName = s.Gender

CREATE TABLE #StudentInformations(LastName NVARCHAR(10),EnrolledDate DateTime)
SELECT * FROM Student s
WHERE Gender = 'M'
inner join Student s on @StudentInformations.LastName = s.Gender 
HAVING COUNT(s.LastName) = 7

SELECT *
FROM Teacher
WHERE FirstName < 5
AND (Teacher.FIRSTNAME = 3 AND Teacher.LASTNAME = 3) 


CREATE FUNCTION fn_FormatStudentName(@StudentCardNumber int, @FirstName NVARCHAR(30), @LastName NVARCHAR(10))
RETURNS NVARCHAR (10)
AS
BEGIN

DECLARE @StudentId int

SELECT *
FROM Student
WHERE @StudentCardNumber != 'sc-' + '-' + FIRST_VALUE(@FirstName) + '.' + @LastName

RETURN @StudentId
END