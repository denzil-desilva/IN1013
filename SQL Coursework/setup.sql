
DROP DATABASE IF EXITS clubData;

CREATE DATABASE clubData;

USE clubData;

CREATE TABLE Members(
    MemberID Integer(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    DOB     VARCHAR(60) NOT NULL,
    Nationality Integer(6) NOT NULL,
    Contract_start  Integer(6) NOT NULL,
    Contract_end  Integer(6) NOT NULL,
    Salary  decimal(9, 2) NOT NULL
);

CREATE TABLE Staff(
    StaffID Integer(10) PRIMARY KEY NOT NULL,
    Email   VARCHAR(60) NOT NULL,
    Job_role    VARCHAR(40) NOT NULL,
    ManagerID   Integer(10) NULL,
    FOREIGN KEY (StaffID) REFERENCES Members(MemberID),
    FOREIGN KEY (ManagerID) REFERENCES Staff(StaffID)
);

CREATE TABLE Players(
    PlayerID    Integer(10) PRIMARY KEY NOT NULL,
    Position    VARCHAR(5) NOT NULL,
    Agent   VARCHAR(50) NOT NULL,
    FOREIGN KEY (PlayerID) REFERENCES Members(MemberID)
);

CREATE TABLE Player_jersey(
    PlayerID    Integer(10) PRIMARY KEY NOT NULL,
    Jersey_no   smallint(5) UNIQUE NOT NULL,
    Jersey_name VARCHAR(15) NOT NULL,
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);

CREATE TABLE Matches(
    MatchID    Integer(10) NOT NULL PRIMARY KEY,
    Date    Integer(6) NOT NULL,
    Opposition  VARCHAR(40) NOT NULL,
    Goal_scored smallint(2) NULL,
    Goal_conceded   smallint(2) NULL,
    Home_game   BOOLEAN NOT NULL,
    Passes  smallint(5) NOT NULL,
    Possession  smallint(2) NOT NULL,
    Total_Shots smallint(2) NULL,
    Shots_on_target smallint(2) NULL,
    Formation   VARCHAR(10) NOT NULL,
    Special ENUM("Friendly", "RO32", "RO16", "Quater-final", "Semi-final", "Final")
);

CREATE TABLE Players_Played(
    PlayerID    Integer(10),
    MatchID     Integer(10),
    Rating      decimal(1, 2),
    
)
