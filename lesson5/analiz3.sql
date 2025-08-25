--Анализ подписок и платежей
SELECT 
    dst.subscription_type,
    COUNT(DISTINCT fs.subscription_id) as active_subscriptions,
    SUM(fp.payment_amount) as total_revenue,
    AVG(fp.payment_amount) as avg_payment
FROM FactSubscription fs
JOIN DimSubscriptionType dst ON fs.subscription_type_id = dst.subscription_type_id
JOIN FactPayments fp ON fs.subscription_id = fp.subscription_id
WHERE fs.subscription_status = 'active'
GROUP BY dst.subscription_type;