DROP DATABASE IF EXISTS Pets;

CREATE DATABASE Pets;
USE Pets;

DROP TABLE IF EXISTS petPet, petEvent;

CREATE TABLE petPet(
    petName VARCHAR(20) NOT NULL PRIMARY KEY UNIQUE,
    owner VARCHAR(45) NOT NULL,
    species VARCHAR(45) NOT NULL,
    gender CHAR(1),
    birth DATE NOT NULL,
    death DATE 
);

CREATE TABLE petEvent(
    petName VARCHAR(20) NOT NULL,
    eventdate DATE NOT NULL,
    eventtype VARCHAR(15) NOT NULL,
    remark VARCHAR(255),
    PRIMARY KEY (petName, eventdate),
    FOREIGN KEY (petName) REFERENCES petPET(petName)
);


