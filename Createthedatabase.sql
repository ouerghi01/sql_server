-- Create the database
CREATE DATABASE TransportDB;
GO

USE TransportDB;
GO

-- Vehicles Table
CREATE TABLE Vehicles (
    VehicleID INT PRIMARY KEY IDENTITY(1,1),
    PlateNumber NVARCHAR(20) NOT NULL,
    VehicleType NVARCHAR(50),
    Capacity INT
);
GO

-- Drivers Table
CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(100) NOT NULL,
    LicenseNumber NVARCHAR(50),
    Phone NVARCHAR(20)
);
GO

-- Routes Table
CREATE TABLE Routes (
    RouteID INT PRIMARY KEY IDENTITY(1,1),
    StartLocation NVARCHAR(100),
    EndLocation NVARCHAR(100),
    DistanceKm FLOAT
);
GO

-- Trips Table
CREATE TABLE Trips (
    TripID INT PRIMARY KEY IDENTITY(1,1),
    VehicleID INT,
    DriverID INT,
    RouteID INT,
    TripDate DATETIME,
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID),
    FOREIGN KEY (RouteID) REFERENCES Routes(RouteID)
);
GO
