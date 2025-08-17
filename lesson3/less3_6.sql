-- Посчитать количество заказов и среднюю сумму по товарам
SELECT 
    item, 
    COUNT(*) as count, 
    AVG(amount) as avg_amount
FROM Orders
GROUP BY item