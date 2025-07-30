SELECT Name
FROM Students
WHERE Age > (SELECT AVG(Age) FROM Students);
