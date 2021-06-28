CREATE PROCEDURE CreateGrade(@Grade int)
AS 
BEGIN

DECLARE @Grades int
SELECT COUNT(*) 
FROM Grade
inner join Student s on Grade.STUDENTID = s.ID
RETURN

SELECT MAX(@Grades) 
FROM Grade
inner join Student s on Grade.STUDENTID = s.ID
inner join Teacher t on Grade.TEACHERID = t.ID
RETURN
END

CREATE PROCEDURE CreateGradeDetails(@AchievementTypeID int,@AchievementPoints int,@Points int,@MaxPoints int,@Date Date)
AS
BEGIN

DECLARE @GradeResult int
SELECT SUM(@Points)
FROM Grade
inner join AchievementType at on Grade.GRADE = at.PARTICIPATIONRATE
WHERE @Points = @AchievementPoints/@MaxPoints*PARTICIPATIONRATE
RETURN
END

BEGIN CATCH

SELECT
ERROR_PROCEDURE() AS error_procedure
@AchievementType = 0
END CATCH