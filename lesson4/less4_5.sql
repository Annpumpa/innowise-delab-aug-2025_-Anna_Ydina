-- 1. Создание функции CalculateAnnualBonus
CREATE OR REPLACE FUNCTION CalculateAnnualBonus(
    employee_id INT,
    salary DECIMAL(10, 2)
) RETURNS DECIMAL(10, 2) AS $$
BEGIN
    RETURN salary * 0.1;
END;
$$ LANGUAGE plpgsql;
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    Salary,
    CalculateAnnualBonus(EmployeeID, Salary) AS AnnualBonus
FROM Employees;
CREATE OR REPLACE VIEW IT_Department_View AS
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    Salary
FROM Employees
WHERE Department LIKE '%IT%';
SELECT * FROM IT_Department_View;