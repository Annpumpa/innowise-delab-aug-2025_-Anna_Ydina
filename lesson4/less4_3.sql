-- 1. Создание пользователя hr_user
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'hr_user') THEN
        CREATE ROLE hr_user WITH LOGIN PASSWORD 'hr_password';
    END IF;
END
$$;
GRANT SELECT ON Employees TO hr_user;
SELECT * FROM information_schema.role_table_grants 
WHERE grantee = 'hr_user';
