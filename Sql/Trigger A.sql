CREATE TABLE DeletedStudents (
    StudentId INT,
    Name VARCHAR(100),
    Age INT,
    DepartmentId INT,
    PhoneNumber VARCHAR(15),
    DeleteDate DATETIME
);

CREATE TRIGGER tr_AfterDeleteStudent
ON Students
AFTER DELETE
AS
BEGIN
    INSERT INTO DeletedStudents (StudentId, Name, Age, DepartmentId, PhoneNumber, DeleteDate)
    SELECT StudentId, Name, Age, DepartmentId, PhoneNumber, GETDATE()
    FROM deleted;
END;
