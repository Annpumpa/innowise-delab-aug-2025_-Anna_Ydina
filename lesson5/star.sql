CREATE TABLE FactBooking (
    booking_id INT PRIMARY KEY,
    client_id INT REFERENCES DimClient(client_id),
    table_id INT REFERENCES DimTable(table_id),
    booking_date_id INT REFERENCES DimDate(date_id),
    booking_time_id INT REFERENCES DimTime(time_id),
    subscription_id INT,
    guests_count INT,
    booking_status VARCHAR(20),
    created_datetime TIMESTAMP,
    cancellation_reason TEXT
);
