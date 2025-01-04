--Добавление нового рейса с самолетом
BEGIN;

-- Добавить новый рейс
INSERT INTO Flight (flight_id, start_airport, end_airport, departure_time, arrival_time, airplane_id)
VALUES (458, 1, 3, '2024-02-01 10:00:00', '2024-02-01 14:00:00', 5);

-- Установить самолёт для рейса
UPDATE Airplane
SET seat_capacity = 180
WHERE airplane_id = 5;

COMMIT;