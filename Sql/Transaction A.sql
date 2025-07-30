BEGIN TRANSACTION;
    UPDATE Accounts
    SET Balance = Balance - 500
    WHERE AccountId = 1;

    UPDATE Accounts
    SET Balance = Balance + 500
    WHERE AccountId = 2;

    IF @@ERROR = 0
        COMMIT TRANSACTION;
    ELSE
        ROLLBACK TRANSACTION;
