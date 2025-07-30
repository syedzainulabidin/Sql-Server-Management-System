SELECT DepartmentName
FROM Departments d
WHERE 5 < (SELECT COUNT(*) FROM Students s WHERE s.DepartmentId = d.DepartmentId);
