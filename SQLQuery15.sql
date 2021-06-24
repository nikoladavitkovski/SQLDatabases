CREATE FUNCTION dbo.fn_TeacherDetails_MultiStatement(@TeacherName NVARCHAR)
RETURNS @Course TABLE (FirstName NVARCHAR(30),LastName NVARCHAR(10), Grade int, CreatedDate Date)
AS
BEGIN
INSERT INTO @Course
SELECT FirstName,LastName,Grade,CreatedDate
FROM dbo.Teacher t
WHERE FirstName = @TeacherName
RETURN
END