CREATE PROCEDURE sp_InsertStudent
    @Name VARCHAR(100),
    @Age INT,
    @DepartmentId INT,
    @PhoneNumber VARCHAR(15)
AS
BEGIN
    INSERT INTO Students (Name, Age, DepartmentId, PhoneNumber)
    VALUES (@Name, @Age, @DepartmentId, @PhoneNumber);
END;
