SELECT COUNT(Grade) as GradeCount
FROM Grade

SELECT TeacherID, COUNT(Grade) as GradeCount
FROM Grade
GROUP BY TeacherID
ORDER BY TeacherID

SELECT TeacherID, COUNT(Grade) as GradeCount
FROM Grade
WHERE StudentID < 100
GROUP BY TeacherID
ORDER BY TeacherID

SELECT StudentID, MAX(Grade) as Maximum, AVG(Grade) as Average
FROM Grade
GROUP BY StudentID
ORDER BY StudentID

SELECT TeacherID, COUNT(Grade) as GradeCount
FROM Grade
GROUP BY TeacherID
HAVING COUNT(Grade) > 200

SELECT TeacherID, COUNT(Grade) as GradeCount
FROM Grade
WHERE StudentID < 100
GROUP BY TeacherID
HAVING COUNT(Grade) > 50

SELECT StudentID,COUNT(Grade) as GradeCount, MAX(Grade) as MaximumGrade, AVG(Grade) as AverageGrade
FROM Grade
GROUP BY StudentID
HAVING MAX(Grade) = AVG(Grade)

SELECT grade.StudentID, s.FirstName, s.LastName, StudentID,COUNT(Grade) as GradeCount, MAX(Grade) as MaximumGrade, AVG(Grade) as AverageGrade
FROM Grade grade
inner join Student s on grade.StudentID = s.Id
GROUP BY StudentID, s.FirstName, s.LastName
HAVING MAX(Grade) = AVG(Grade)

