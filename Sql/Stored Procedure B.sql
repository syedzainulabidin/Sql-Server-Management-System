CREATE PROCEDURE sp_GetStudentsByDepartment
    @DepartmentId INT
AS
BEGIN
    SELECT Name, Age, PhoneNumber
    FROM Students
    WHERE DepartmentId = @DepartmentId;
END;
