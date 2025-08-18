-- 1. Проекты, где Bob Johnson работал >150 часов
SELECT 
    e.FirstName, e.LastName, 
    p.ProjectName, 
    ep.HoursWorked
FROM Employees e
JOIN EmployeeProjects ep ON e.EmployeeID = ep.EmployeeID
JOIN Projects p ON ep.ProjectID = p.ProjectID
WHERE e.FirstName = 'Bob' AND e.LastName = 'Johnson';
-- 2. Увеличение Budget проектов с IT-сотрудниками на 10%
UPDATE Projects
SET Budget = Budget * 1.1
WHERE ProjectID IN (
    SELECT DISTINCT p.ProjectID
    FROM Projects p
    JOIN EmployeeProjects ep ON p.ProjectID = ep.ProjectID
    JOIN Employees e ON ep.EmployeeID = e.EmployeeID
    WHERE e.Department = 'IT'
);
SELECT 
    ProjectID, 
    ProjectName, 
    Budget::NUMERIC(12,2) AS updated_budget
FROM Projects
WHERE ProjectID IN (
    SELECT DISTINCT ProjectID 
    FROM EmployeeProjects ep
    JOIN Employees e ON ep.EmployeeID = e.EmployeeID
    WHERE e.Department = 'IT'
);
-- 3. Установка EndDate для проектов без него
UPDATE Projects
SET EndDate = StartDate + INTERVAL '1 year'
WHERE EndDate IS NULL;
SELECT ProjectID, ProjectName, StartDate, EndDate 
FROM Projects 
WHERE EndDate = StartDate + INTERVAL '1 year';
BEGIN;
    -- Вставка нового сотрудника
    INSERT INTO Employees (FirstName, LastName, Department, Salary, Email)
    VALUES ('George', 'Taylor', 'IT', 70000.00, 'george.taylor@company.com')
    RETURNING EmployeeID;
 INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
    VALUES (
        currval('employees_employeeid_seq'),
        (SELECT ProjectID FROM Projects WHERE ProjectName = 'Website Redesign'),
        80
    );
SELECT * FROM Employees WHERE LastName = 'Taylor';
