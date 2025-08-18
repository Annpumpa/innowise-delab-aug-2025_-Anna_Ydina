-- 1. Увеличение Salary в отделе 'HR' на 10%
UPDATE Employees 
SET Salary = Salary * 1.1 
WHERE Department = 'HR';
-- 2. Обновление Department для сотрудников с Salary > 70000
UPDATE Employees 
SET Department = 'Senior IT' 
WHERE Salary > 70000.00;
-- 3. Удаление сотрудников без проектов
DELETE FROM Employees 
WHERE NOT EXISTS (
    SELECT 1 FROM EmployeeProjects 
    WHERE EmployeeProjects.EmployeeID = Employees.EmployeeID
);
-- 4. Вставка нового проекта и назначение сотрудников в транзакции
BEGIN;
    INSERT INTO Projects (ProjectName, Budget, StartDate)
    VALUES ('Database Migration', 120000.00, '2023-07-01')
    RETURNING ProjectID;
 INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
    VALUES 
    (1, currval('projects_projectid_seq'), 40),
    (3, currval('projects_projectid_seq'), 60);
COMMIT;