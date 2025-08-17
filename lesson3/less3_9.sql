-- Добавить колонку с общей суммой заказов клиента
SELECT 
    order_id, 
    customer_id, 
    item, 
    amount,
    SUM(amount) OVER (PARTITION BY customer_id) as total_by_customer
FROM Orders
ORDER BY customer_id, order_id;