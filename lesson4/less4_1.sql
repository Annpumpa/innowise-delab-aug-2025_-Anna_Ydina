-- 1. Вставка двух новых сотрудников
INSERT INTO Employees (FirstName, LastName, Department, Salary)
VALUES 
('Frank', 'Wilson', 'IT', 72000.00),
('Grace', 'Miller', 'Finance', 68000.00);
-- 2. Выбор всех сотрудников
SELECT * FROM Employees;
--3. выбор из IT
SELECT FirstName, LastName 
FROM Employees 
WHERE Department = 'IT';
-- 4. Обновление Salary Alice Smith
UPDATE Employees 
SET Salary = 65000.00 
WHERE FirstName = 'Alice' AND LastName = 'Smith';
-- 5. Удаление сотрудника с LastName 'Prince'
ALTER TABLE EmployeeProjects 
DROP CONSTRAINT employeeprojects_employeeid_fkey;
ALTER TABLE EmployeeProjects 
ADD CONSTRAINT employeeprojects_employeeid_fkey 
FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID) 
ON DELETE CASCADE;
DELETE FROM Employees 
WHERE LastName = 'Prince';
SELECT * FROM Employees;
SELECT * FROM EmployeeProjects;