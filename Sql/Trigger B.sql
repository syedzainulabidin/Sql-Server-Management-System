CREATE TRIGGER tr_InsteadOfInsertStudent
ON Students
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE Age < 16)
    BEGIN
        RAISERROR ('Age must be 16 or older.', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        INSERT INTO Students (Name, Age, DepartmentId, PhoneNumber)
        SELECT Name, Age, DepartmentId, PhoneNumber
        FROM inserted;
    END;
END;
