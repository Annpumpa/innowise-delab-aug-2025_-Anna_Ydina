--Эффективность использования столиков
SELECT 
    dt.table_id,
    dt.seats_count,
    COUNT(fb.booking_id) as bookings_count,
    SUM(fb.guests_count) as total_guests,
    ROUND(AVG(fb.guests_count), 2) as avg_occupancy
FROM FactBooking fb
JOIN DimTable dt ON fb.table_id = dt.table_id
WHERE dt.is_active = 'YES'
GROUP BY dt.table_id, dt.seats_count
ORDER BY avg_occupancy DESC;