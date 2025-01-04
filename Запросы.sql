-- Вывод доступных рейсов
SELECT flight_id, start_airport, end_airport, departure_time
FROM Flight
WHERE departure_time > GETDATE();


-- Список рейсов, которые начинаются в указанном аэропорту
SELECT flight_id, departure_time, arrival_time
FROM
    Flight
WHERE
    start_airport = (SELECT airport_code FROM Airport WHERE name = 'Шереметьево');

-- Поиск свободных мест на рейсе
SELECT
    Airplane.seat_capacity - COUNT(Ticket.seat_number) AS available_seats
FROM
    Flight
INNER JOIN
    Airplane ON Flight.airplane_id = Airplane.airplane_id
LEFT JOIN
    Ticket ON Flight.flight_id = Ticket.flight_id
WHERE
    Flight.flight_id = 456
GROUP BY
    Airplane.seat_capacity;