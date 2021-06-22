create view vv_StudentGrades
as

SELECT StudentID, COUNT(Grade) as GradeCount
FROM Grade
GROUP BY StudentID

ALTER VIEW vv_StudentGrades
AS
SELECT StudentID, COUNT(Grade) as GradeCount, s.FirstName, s.LastName 
FROM Grade
inner join Student s on grade.StudentID = s.ID 
GROUP BY FirstName,LastName

SELECT *
FROM vv_StudentGrades
ORDER BY GradeCount

create view vv_StudentGradeDetails
as

SELECT s.FirstName, s.LastName, COUNT(Grade.CourseID) as CoursesCount
FROM Grade 
inner join Student s on Grade.StudentID = s.Id
inner join GradeDetails gd on Grade.ID = gd.GradeID
inner join AchievementType at on Grade.StudentID = at.ID
WHERE at.NAME = 'ispit'
GROUP BY s.FirstName, s.LastName