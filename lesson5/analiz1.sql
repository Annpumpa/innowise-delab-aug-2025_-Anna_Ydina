-- Анализ бронирований по клиентам
SELECT 
    dc.phone,
    COUNT(fb.booking_id) as total_bookings,
    AVG(fb.guests_count) as avg_guests,
    MAX(dd.full_date) as last_booking_date
FROM FactBooking fb
JOIN DimClient dc ON fb.client_id = dc.client_id
JOIN DimDate dd ON fb.booking_date_id = dd.date_id
GROUP BY dc.phone
ORDER BY total_bookings DESC;