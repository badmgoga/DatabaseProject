CREATE TABLE User (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
);

CREATE TABLE Airport (
    airport_code VARCHAR(3) PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE Airplane (
    airplane_id INT PRIMARY KEY,
    model VARCHAR(100),
    seat_capacity INT
);

CREATE TABLE Flight (
    flight_id INT PRIMARY KEY,
    start_airport INT,
    end_airport INT,
    departure_time DATETIME,
    arrival_time DATETIME,
    airplane_id INT,
    FOREIGN KEY (start_airport) REFERENCES Airport(airport_code),
    FOREIGN KEY (end_airport) REFERENCES Airport(airport_code),
    FOREIGN KEY (airplane_id) REFERENCES Airplane(airplane_id)
);

CREATE TABLE Ticket (
    ticket_id INT PRIMARY KEY,
    user_id INT,
    flight_id INT,
    seat_number INT,
    booking_time DATETIME,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (flight_id) REFERENCES Flight(flight_id)
);