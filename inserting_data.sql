-- Vehicles
INSERT INTO Vehicles (PlateNumber, VehicleType, Capacity)
VALUES ('TN-1234', 'Bus', 50),
       ('TN-5678', 'Truck', 20),
       ('TN-9999', 'Taxi', 4);

-- Drivers
INSERT INTO Drivers (FullName, LicenseNumber, Phone)
VALUES ('Ali Ben Salem', 'LIC12345', '22556644'),
       ('Mohamed Ali', 'LIC67890', '99887766');

-- Routes
INSERT INTO Routes (StartLocation, EndLocation, DistanceKm)
VALUES ('Tunis', 'Sousse', 140.5),
       ('Sfax', 'Gabes', 130.0);

-- Trips
INSERT INTO Trips (VehicleID, DriverID, RouteID, TripDate)
VALUES (1, 1, 1, '2024-04-12'),
       (2, 2, 2, '2024-04-11');
