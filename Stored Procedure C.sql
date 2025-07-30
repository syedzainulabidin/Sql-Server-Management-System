CREATE PROCEDURE sp_UpdateStudentAge
    @StudentId INT,
    @NewAge INT
AS
BEGIN
    UPDATE Students
    SET Age = @NewAge
    WHERE StudentId = @StudentId;
END;
