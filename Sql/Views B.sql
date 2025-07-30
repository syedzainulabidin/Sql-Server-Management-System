CREATE VIEW v_StudentsOver21 AS
SELECT Name, Age
FROM Students
WHERE Age > 21;
