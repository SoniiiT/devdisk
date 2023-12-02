CREATE DATABASE IF NOT EXISTS example;
USE example;

CREATE TABLE IF NOT EXISTS Abteilung (
    AbteilungID INT NOT NULL AUTO_INCREMENT,
    AbteilungName VARCHAR(255) NOT NULL,
    PRIMARY KEY (AbteilungID)
);

CREATE TABLE IF NOT EXISTS Mitarbeiter (
    MitarbeiterID INT NOT NULL AUTO_INCREMENT,
    Vorname VARCHAR(255) NOT NULL,
    Nachname VARCHAR(255) NOT NULL,
    PRIMARY KEY (MitarbeiterID),
    AbteilungID INT,
    FOREIGN KEY (AbteilungID) REFERENCES Abteilung(AbteilungID)
);