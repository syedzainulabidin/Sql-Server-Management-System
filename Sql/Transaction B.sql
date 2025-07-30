BEGIN TRANSACTION;
    INSERT INTO Students (Name, Age, DepartmentId, PhoneNumber)
    VALUES ('New Student', 22, 1, '1234567890');

    INSERT INTO ActionLog (ActionType, ActionDate, StudentId)
    VALUES ('Insert', GETDATE(), SCOPE_IDENTITY());

    IF @@ERROR = 0
        COMMIT TRANSACTION;
    ELSE
        ROLLBACK TRANSACTION;
