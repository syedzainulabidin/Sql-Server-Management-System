DECLARE @StudentName VARCHAR(100);
DECLARE student_cursor CURSOR FOR 
    SELECT Name FROM Students;

OPEN student_cursor;
FETCH NEXT FROM student_cursor INTO @StudentName;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT @StudentName;
    FETCH NEXT FROM student_cursor INTO @StudentName;
END;

CLOSE student_cursor;
DEALLOCATE student_cursor;
