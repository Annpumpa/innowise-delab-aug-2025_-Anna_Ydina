-- 1. Создание таблицы Departments
CREATE TABLE Departments (
    DepartmentID SERIAL PRIMARY KEY,
    DepartmentName VARCHAR(50) UNIQUE NOT NULL,
    Location VARCHAR(50)
);
ALTER TABLE Employees 
ADD COLUMN Email VARCHAR(100);
-- 3. Заполнение Email и добавление ограничения UNIQUE
ALTER TABLE Employees 
ADD CONSTRAINT unique2_email UNIQUE (Email);
UPDATE Employees 
SET Email = 'alias@domain'
WHERE employeeid = 4;
-- 4. Переименование столбца Location в OfficeLocation
ALTER TABLE Departments 
RENAME COLUMN Location TO OfficeLocation;