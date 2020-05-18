--CREATE DATABASE GrandCircusTripPlannerDb;

--GO

--USE GrandCircusTripPlannerDb;

--GO 

--CREATE TABLE User(
--UserId Int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--Name NVARCHAR(40) NOT NULL,
--Address NVARCHAR(75) 
--PassportID Int FOREIGN KEY
--PhoneNumber Int
--DOB DATE
--Age Int
--);

--CREATE TABLE Passport(
--PassportId Int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--CountryOfResidence NVARCHAR(40) NOT NULL,
--Address NVARCHAR(75) 
--PassportNumber Int 
--PhoneNumber Int
--ExpirationDate DATE
--DOB DATE
--UserID Int FOREIGN KEY
--);

--CREATE TABLE Trip(
--TripId Int PRIMARY KEY IDENTITY(1,50) NOT NULL,
--Type NVARCHAR(40) NOT NULL,
--Budget Int 
--StartingDestination NVARCHAR(60)
--EndingDestination NVARCHAR(60)
--TravelMode NVARCHAR(60)
--StartDate DATE
--EndDate DATE
--);

--CREATE TABLE Hotel(
--HotelId Int PRIMARY KEY IDENTITY(1,50) NOT NULL,
--Name NVARCHAR(40) NOT NULL,
--CheckInDate DATE
--CheckOutDate DATE
--CostPerNight Int NOT NULL,
--Address NVARCHAR(75) FOREIGN KEY 
--PhoneNumber Int
--);

--ALTER TABLE User
--ADD PassportNumber INT FOREIGN KEY REFERENCES User(Id)

--GO 

--ALTER TABLE Trip
--ADD StartDate DATE FOREIGN KEY REFERENCES Trip(Id)
--ADD EndDate DATE FOREIGN KEY REFERENCES Trip(Id)

--ALTER TABLE Hotel
--ADD CheckInDate DATE FOREIGN KEY REFERENCES Hotel(Id)
--ADD CheckOutDate DATE FOREIGN KEY REFERENCES Hotel(Id)

--GO 

--ALTER TABLE Passport
--ADD DOB DATE FOREIGN KEY REFERENCES Passport(Id)


--CREATE TABLE HotelStay(
--HotelStayId INT PRIMARY KEY IDENTITY(2,10) NOT NULL,
--CheckInDate DATE
--CheckOutDate DATE FOREIGN KEY REFERENCES Hotel(Id),
--CourseID NVARCHAR(30) FOREIGN KEY REFERENCES Course(Title)
--);