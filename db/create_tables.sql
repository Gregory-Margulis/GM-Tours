CREATE TABLE Countries (
    Id VARCHAR(5) PRIMARY KEY,
    Name VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE User_Roles (
    Id INT PRIMARY KEY IDENTITY,
    Role_Name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Users (
    Id BIGINT PRIMARY KEY IDENTITY,
    Username VARCHAR(200) NOT NULL UNIQUE,
    Password VARCHAR(200) NOT NULL,
    Email VARCHAR(200) NOT NULL UNIQUE,
    User_Role INT NOT NULL,
	Is_Active [bit] DEFAULT 1 WITH VALUES NOT NULL,
    FOREIGN KEY (User_Role) REFERENCES User_Roles(Id)

);

CREATE TABLE Customers (
    Id BIGINT PRIMARY KEY IDENTITY,
    First_Name VARCHAR(200) NOT NULL,
    Last_Name VARCHAR(200),
    Phone_No VARCHAR(100) NOT NULL UNIQUE,
    Credit_Card_No VARCHAR(50) NOT NULL,
	Is_Active [bit] DEFAULT 1 WITH VALUES NOT NULL,
    Address VARCHAR(500) NOT NULL UNIQUE,
    User_Id BIGINT NOT NULL UNIQUE,
    FOREIGN KEY (User_Id) REFERENCES Users(Id)
);

CREATE TABLE Airline_Companies (
    Id BIGINT PRIMARY KEY IDENTITY,
    Name VARCHAR(200) NOT NULL UNIQUE,
    Country_Id VARCHAR(5),
    User_Id BIGINT NOT NULL UNIQUE,
	Is_Active [bit] DEFAULT 1 WITH VALUES NOT NULL,
    FOREIGN KEY (Country_Id) REFERENCES Countries(Id),
    FOREIGN KEY (User_Id) REFERENCES Users(Id)
);

CREATE TABLE Flights (
    Id BIGINT PRIMARY KEY IDENTITY,
    Airline_Company_Id BIGINT NOT NULL,
    Origin_Country_Id VARCHAR(5) NOT NULL,
    Destination_Country_Id VARCHAR(5) NOT NULL,
    Departure_Time DATETIME NOT NULL,
    Landing_Time DATETIME NOT NULL,
    Remaining_Tickets INT NOT NULL,
	Is_Active [bit] DEFAULT 1 WITH VALUES NOT NULL,
    FOREIGN KEY (Airline_Company_Id) REFERENCES Airline_Companies(Id),
    FOREIGN KEY (Origin_Country_Id) REFERENCES Countries(Id),
    FOREIGN KEY (Destination_Country_Id) REFERENCES Countries(Id)
);

CREATE TABLE Tickets (
    Id BIGINT PRIMARY KEY IDENTITY,
    Flight_Id BIGINT NOT NULL,
    Customer_Id BIGINT NOT NULL,
	Is_Active [bit] DEFAULT 1 WITH VALUES NOT NULL,
    FOREIGN KEY (Flight_Id) REFERENCES Flights(Id),
    FOREIGN KEY (Customer_Id) REFERENCES Customers(Id),
    CONSTRAINT unique_ticket_per_person UNIQUE (Flight_Id, Customer_Id)
);

CREATE TABLE Administrators (
    Id INT PRIMARY KEY IDENTITY,
    First_Name VARCHAR(200) NOT NULL,
    Last_Name VARCHAR(200) NOT NULL,
	Is_Active [bit] DEFAULT 1 WITH VALUES NOT NULL,
    User_Id BIGINT NOT NULL UNIQUE,
    FOREIGN KEY (User_Id) REFERENCES Users(Id)
);
