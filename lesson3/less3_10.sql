-- Найти клиентов с ≥2 заказами и ≥1 доставкой 'Delivered'
SELECT 
    c.first_name || ' ' || c.last_name as full_name,
    c.country,
    COUNT(o.order_id) as total_orders,
    SUM(o.amount) as total_amount
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE c.customer_id IN (
    SELECT customer_id
    FROM Orders
    GROUP BY customer_id
    HAVING COUNT(*) >= 2
) AND c.customer_id IN (
    SELECT customer
    FROM Shippings
    WHERE status = 'Delivered'
)
GROUP BY c.customer_id, full_name, c.country