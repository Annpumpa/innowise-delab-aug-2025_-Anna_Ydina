-- Подсчитать количество клиентов в каждой стране
SELECT country, COUNT(*) as count
FROM Customers
GROUP BY country