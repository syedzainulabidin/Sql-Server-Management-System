CREATE TABLE Departments (
    DepartmentId INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName VARCHAR(100) NOT NULL
);

CREATE TABLE Students (
    StudentId INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    DepartmentId INT FOREIGN KEY REFERENCES Departments(DepartmentId),
    PhoneNumber VARCHAR(15)
);

CREATE TABLE Accounts (
    AccountId INT PRIMARY KEY IDENTITY(1,1),
    Balance DECIMAL(10, 2) NOT NULL
);

CREATE TABLE ActionLog (
    LogId INT PRIMARY KEY IDENTITY(1,1),
    ActionType VARCHAR(50),
    ActionDate DATETIME,
    StudentId INT FOREIGN KEY REFERENCES Students(StudentId)
);

CREATE TABLE DeletedStudents (
    StudentId INT,
    Name VARCHAR(100),
    Age INT,
    DepartmentId INT,
    PhoneNumber VARCHAR(15),
    DeleteDate DATETIME
);

INSERT INTO Departments (DepartmentName) VALUES 
('Computer Science'), 
('Mathematics'), 
('Physics');

INSERT INTO Students (Name, Age, DepartmentId, PhoneNumber) VALUES 
('Zain', 20, 1, '+923001111111'),
('Hamza', 22, 1, '+923002222222'),
('Moiz', 19, 2, '+923003333333'),
('Danish Malik', 25, 3, '+923004444444'),
('Eman Fatima', 21, 1, '+923005555555');

INSERT INTO Accounts (Balance) VALUES 
(1000.00), -- AccountId 1 (PKR 1000)
(500.00);  -- AccountId 2 (PKR 500)
