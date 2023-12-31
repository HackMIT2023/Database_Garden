DROP DATABASE GardenApp;
CREATE DATABASE GardenApp;
USE GardenApp;

-- DROP TABLE IF EXISTS Users;
-- DROP TABLE IF EXISTS Plants;
-- DROP TABLE IF EXISTS Garden;
CREATE TABLE Users
(
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(20) NOT NULL,
    Last_Name VARCHAR(20) NOT NULL,
    Email VARCHAR(50) NOT NULL
);

CREATE TABLE Garden
(
    GardenID INT AUTO_INCREMENT PRIMARY KEY,
    Garden_Name VARCHAR(50) NOT NULL,
    UserID INT,
    PlantID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Plants
(
    PlantID INT AUTO_INCREMENT PRIMARY KEY,
    PlantType VARCHAR(20) NOT NULL,
    Frequency VARCHAR(50) NOT NULL,
    DaysPerWater VARCHAR(50) NOT NULL,
    LastWatered VARCHAR(50) NOT NULL,
    GardenID INT,
    FOREIGN KEY (GardenID) REFERENCES Garden(GardenID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

DELIMITER $$
CREATE FUNCTION DaysUntilNextWatering(plantName VARCHAR(255)) RETURNS INT
BEGIN
    DECLARE current_time DATETIME;
    DECLARE days_left INT;
    SET current_time = NOW();
    SELECT DATEDIFF(LastWatered, current_time) INTO days_left
    FROM Garden
    WHERE PlantName = plantName;
    RETURN days_left;
END;
$$
DELIMITER ;

insert into Users (UserID, First_Name, Last_Name, Email) values (1, 'Costanza', 'Sleightholm', 'csleightholm0@sakura.ne.jp');
insert into Users (UserID, First_Name, Last_Name, Email) values (2, 'Yale', 'Byneth', 'ybyneth1@yelp.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (3, 'Philis', 'Shorton', 'pshorton2@ft.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (4, 'Temp', 'Gavini', 'tgavini3@mail.ru');
insert into Users (UserID, First_Name, Last_Name, Email) values (5, 'Elita', 'Bernasek', 'ebernasek4@oakley.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (6, 'Dougie', 'Brandolini', 'dbrandolini5@google.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (7, 'Ethan', 'Malone', 'emalone6@prlog.org');
insert into Users (UserID, First_Name, Last_Name, Email) values (8, 'Francklin', 'Singleton', 'fsingleton7@hao123.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (9, 'Estella', 'Syratt', 'esyratt8@histats.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (10, 'Elly', 'Estrella', 'eestrella9@buzzfeed.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (11, 'Irena', 'Thying', 'ithyinga@opera.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (12, 'Cornall', 'Vautin', 'cvautinb@addthis.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (13, 'Wang', 'Ferrar', 'wferrarc@ox.ac.uk');
insert into Users (UserID, First_Name, Last_Name, Email) values (14, 'Ingar', 'Bisterfeld', 'ibisterfeldd@zdnet.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (15, 'Thornton', 'Leadstone', 'tleadstonee@cafepress.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (16, 'Albertina', 'Avey', 'aaveyf@list-manage.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (17, 'Poppy', 'Piesing', 'ppiesingg@google.co.uk');
insert into Users (UserID, First_Name, Last_Name, Email) values (18, 'Valentia', 'Sessions', 'vsessionsh@businessweek.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (19, 'Cheryl', 'Mityushin', 'cmityushini@wiley.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (20, 'Carson', 'Gager', 'cgagerj@aol.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (21, 'Courtenay', 'Moultrie', 'cmoultriek@myspace.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (22, 'Ashli', 'Jessel', 'ajessell@reference.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (23, 'Heddi', 'Jenteau', 'hjenteaum@woothemes.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (24, 'Gian', 'Drohun', 'gdrohunn@jiathis.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (25, 'Maynard', 'Hartwell', 'mhartwello@gmpg.org');
insert into Users (UserID, First_Name, Last_Name, Email) values (26, 'Marcela', 'Stitcher', 'mstitcherp@squidoo.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (27, 'Margo', 'Kidwell', 'mkidwellq@chronoengine.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (28, 'Marcie', 'Pammenter', 'mpammenterr@accuweather.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (29, 'Engracia', 'Tapsell', 'etapsells@forbes.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (30, 'Angele', 'Mewitt', 'amewittt@i2i.jp');
insert into Users (UserID, First_Name, Last_Name, Email) values (31, 'Siouxie', 'Foat', 'sfoatu@seattletimes.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (32, 'Salomi', 'Ygoe', 'sygoev@google.it');
insert into Users (UserID, First_Name, Last_Name, Email) values (33, 'Phebe', 'Victor', 'pvictorw@angelfire.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (34, 'Rey', 'Feldstern', 'rfeldsternx@csmonitor.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (35, 'Demetria', 'Acedo', 'dacedoy@angelfire.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (36, 'Mignonne', 'Licciardo', 'mlicciardoz@ifeng.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (37, 'Iolanthe', 'Blaszczyk', 'iblaszczyk10@t.co');
insert into Users (UserID, First_Name, Last_Name, Email) values (38, 'Garth', 'Tomley', 'gtomley11@globo.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (39, 'Rhoda', 'Baiden', 'rbaiden12@jiathis.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (40, 'Haskell', 'Calfe', 'hcalfe13@github.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (41, 'Talyah', 'Pudner', 'tpudner14@squarespace.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (42, 'Roman', 'Ceyssen', 'rceyssen15@merriam-webster.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (43, 'Astra', 'Ploughwright', 'aploughwright16@smugmug.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (44, 'Brittan', 'King', 'bking17@newsvine.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (45, 'Kerwin', 'Christmas', 'kchristmas18@chron.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (46, 'Ange', 'Pratty', 'apratty19@newyorker.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (47, 'Bathsheba', 'Feely', 'bfeely1a@facebook.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (48, 'Sarah', 'Fabri', 'sfabri1b@merriam-webster.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (49, 'Suellen', 'Jacomb', 'sjacomb1c@blinklist.com');
insert into Users (UserID, First_Name, Last_Name, Email) values (50, 'Phillida', 'Spybey', 'pspybey1d@virginia.edu');

insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'John Wall', 6, 12);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Dahle', 17, 46);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Ilene', 11, 55);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'South', 19, 122);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Claremont', 44, 64);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Pierstorff', 14, 48);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Cottonwood', 11, 146);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Badeau', 20, 35);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Aberg', 4, 125);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Miller', 50, 9);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Jenifer', 10, 111);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Armistice', 40, 2);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Bunker Hill', 45, 18);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Bowman', 6, 107);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Northwestern', 22, 86);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Union', 42, 47);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Everett', 40, 140);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Bartelt', 4, 110);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Transport', 29, 101);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Hudson', 46, 108);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Truax', 12, 52);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Briar Crest', 42, 149);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Canary', 13, 147);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Badeau', 28, 6);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Coleman', 28, 149);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Stoughton', 21, 147);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Vidon', 11, 122);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Center', 41, 94);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Rockefeller', 6, 140);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Springview', 35, 89);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Oneill', 50, 4);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Summit', 34, 109);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Bayside', 20, 71);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Charing Cross', 1, 39);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, '8th', 13, 52);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Gale', 12, 86);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Anderson', 25, 97);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Arkansas', 22, 101);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Carey', 31, 44);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Linden', 19, 71);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Schmedeman', 9, 57);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'School', 20, 110);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Sherman', 20, 126);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Miller', 49, 7);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Monument', 23, 59);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Dottie', 3, 84);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Havey', 20, 104);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Bluejay', 1, 132);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Reindahl', 23, 84);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Pearson', 23, 97);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Elgar', 20, 66);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Victoria', 25, 101);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Anthes', 48, 86);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Westport', 7, 128);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Surrey', 46, 137);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Tennyson', 10, 8);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Graceland', 25, 19);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Tennessee', 40, 49);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Golden Leaf', 46, 14);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Carey', 50, 49);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Mayer', 12, 18);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Welch', 9, 17);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Fuller', 11, 105);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Arizona', 36, 29);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Troy', 10, 87);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Clove', 19, 52);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Surrey', 12, 150);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Graceland', 43, 48);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Canary', 35, 66);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Towne', 28, 124);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Macpherson', 36, 45);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Carey', 28, 63);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Larry', 43, 139);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Vidon', 5, 36);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Havey', 11, 54);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Cardinal', 43, 147);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Pankratz', 42, 50);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Lukken', 21, 107);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Eagan', 3, 23);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Thompson', 46, 57);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Swallow', 24, 146);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Tomscot', 37, 42);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Vera', 10, 40);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Bartelt', 48, 59);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Jay', 3, 95);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Grover', 44, 79);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Towne', 32, 149);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Veith', 2, 135);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Mallard', 15, 28);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Westerfield', 33, 149);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Coleman', 34, 3);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Dunning', 30, 94);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Trailsway', 18, 129);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Sunbrook', 50, 134);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'North', 24, 29);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Sundown', 9, 60);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Muir', 44, 26);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Golf View', 30, 147);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Valley Edge', 13, 83);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Steensland', 19, 68);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Orin', 25, 19);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Grasskamp', 43, 119);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Raven', 39, 15);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Vidon', 2, 127);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Loftsgordon', 31, 23);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Maryland', 1, 70);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Vera', 47, 8);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Kinsman', 11, 116);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Calypso', 15, 125);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Randy', 3, 143);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'John Wall', 16, 10);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'High Crossing', 36, 16);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Troy', 23, 87);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'David', 49, 102);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Saint Paul', 26, 32);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Dexter', 27, 54);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Express', 9, 57);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Namekagon', 46, 47);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Center', 34, 13);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Hintze', 30, 123);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Dixon', 39, 117);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Dixon', 37, 136);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Springview', 39, 45);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Oakridge', 5, 124);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Kennedy', 4, 144);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Westend', 44, 110);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Stoughton', 8, 140);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'East', 7, 101);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Debs', 1, 103);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Crowley', 33, 128);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Shelley', 4, 75);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Northport', 35, 38);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Kings', 32, 112);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Merry', 8, 84);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Clemons', 49, 2);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Gale', 42, 55);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Buell', 16, 90);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Schurz', 37, 28);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Coolidge', 15, 82);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Westport', 39, 138);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Thompson', 12, 64);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Golf View', 33, 30);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Corry', 50, 17);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Marquette', 46, 146);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Ludington', 35, 39);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (2, 'Straubel', 40, 84);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (5, 'Bashford', 10, 43);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (3, 'Oriole', 32, 140);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (4, 'Eastwood', 19, 2);
insert into Garden (GardenID, Garden_Name, UserID, PlantID) values (1, 'Mariners Cove', 17, 54);

insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (1, 'Lake Quillwort', 'Monthly', 3, 1694928263, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (2, 'San Francisco Spineflower', 'Never', 12, 1694909473, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (3, 'Sarcogyne Lichen', 'Daily', 19, 1694913889, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (4, 'Spoon Pondweed', 'Daily', 1, 1694948282, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (5, 'Xanthoparmelia Lichen', 'Often', 8, 1694990797, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (6, 'Sand Leek', 'Weekly', 9, 1694951556, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (7, 'Elmleaf Goldenrod', 'Once', 8, 1694911159, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (8, 'Willow Glowweed', 'Yearly', 8, 1694993854, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (9, 'Billion-dollar Grass', 'Never', 16, 1694954587, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (10, 'Grayleaf Phlox', 'Often', 5, 1694993287, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (11, 'False Candytuft', 'Monthly', 17, 1694966864, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (12, 'Sickle Dichelyma Moss', 'Never', 8, 1694966825, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (13, 'Valley Sedge', 'Often', 17, 1694927617, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (14, 'Longleaf Spiderwort', 'Daily', 17, 1694991712, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (15, 'Heartleaf Twayblade', 'Yearly', 5, 1694945761, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (16, 'Weak Saxifrage', 'Once', 11, 1694944699, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (17, 'Alkali Pepperwort', 'Once', 18, 1694935577, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (18, 'Surefoot Buttercup', 'Seldom', 6, 1694982248, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (19, 'Egyptian Grass', 'Yearly', 2, 1694991551, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (20, 'Little Amphianthus', 'Monthly', 15, 1694965128, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (21, 'Ridged Goosefoot', 'Seldom', 12, 1694951088, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (22, 'Pachyphiale Lichen', 'Weekly', 19, 1694926726, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (23, 'Swamp Tupelo', 'Daily', 7, 1694991012, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (24, 'Star Duckweed', 'Yearly', 18, 1694933751, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (25, 'Garlicvine', 'Weekly', 8, 1694928876, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (26, 'Slenderleaf Bundleflower', 'Yearly', 6, 1694989680, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (27, 'Pine Barren Deathcamas', 'Once', 1, 1694991283, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (28, 'King''s Angelica', 'Daily', 4, 1694941483, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (29, 'White Edge Sedge', 'Once', 18, 1694987727, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (30, 'Sweet Scented Geranium', 'Seldom', 20, 1694916865, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (31, 'Cream Sacs', 'Often', 9, 1694957292, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (32, 'White Poplar', 'Yearly', 17, 1694977113, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (33, 'Mountain Meadow-rue', 'Seldom', 18, 1694907305, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (34, 'Grassland Silverpuffs', 'Yearly', 2, 1694941694, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (35, 'Downy Phlox', 'Monthly', 20, 1694946206, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (36, 'Grimmia Dry Rock Moss', 'Yearly', 10, 1694981648, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (37, 'Threeleaflet Dewberry', 'Monthly', 8, 1694973842, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (38, 'Aiphanes', 'Once', 20, 1694918123, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (39, 'Fiveflower Rockdaisy', 'Once', 8, 1694976676, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (40, 'Orange Lichen', 'Monthly', 7, 1694930915, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (41, 'Hybrid Oak', 'Daily', 16, 1694936225, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (42, 'Maronea Lichen', 'Yearly', 12, 1694904240, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (43, 'Bracted Alumroot', 'Daily', 2, 1694967819, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (44, 'Spreading Snakeherb', 'Often', 4, 1694971019, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (45, 'Blue Gem', 'Seldom', 1, 1694921324, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (46, 'Sharp Blazing Star', 'Seldom', 4, 1694997015, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (47, 'Cacapon River Blackberry', 'Yearly', 9, 1694954193, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (48, 'James'' Strigula Lichen', 'Seldom', 9, 1694987605, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (49, 'Gigantochloa', 'Monthly', 16, 1694970588, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (50, 'Barwood', 'Daily', 9, 1694988956, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (51, 'Common Spikerush', 'Weekly', 16, 1694973294, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (52, 'Dot Lichen', 'Never', 1, 1694977525, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (53, 'Fetterbush', 'Often', 7, 1694978706, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (54, 'Gila Thistle', 'Once', 18, 1694970700, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (55, 'Hybrid Willow', 'Weekly', 14, 1694902170, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (56, 'Lesser California Rayless Fleabane', 'Monthly', 5, 1694982620, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (57, 'Falcate Rush', 'Weekly', 15, 1694905761, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (58, 'Nodding Microseris', 'Seldom', 4, 1694989497, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (59, 'Mexican Candelina Lichen', 'Monthly', 2, 1694993784, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (60, 'Refugio Manzanita', 'Yearly', 16, 1694997590, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (61, 'Port Clarence Indian Paintbrush', 'Weekly', 6, 1694978166, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (62, 'Whiteflower Kurrajong', 'Monthly', 2, 1694951259, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (63, 'Wart Lichen', 'Often', 3, 1694904346, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (64, 'Pili Nehe', 'Once', 9, 1694993275, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (65, 'Large White Petunia', 'Once', 13, 1694965206, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (66, 'Waxy Coneflower', 'Yearly', 13, 1694936564, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (67, 'Appalachian Valley Rose', 'Weekly', 19, 1694949473, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (68, 'Nakedstem Carpetweed', 'Once', 13, 1694906860, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (69, 'Candlebark', 'Weekly', 8, 1694956789, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (70, 'Bioletti''s Rush Broom', 'Yearly', 14, 1694899981, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (71, 'Bruised Lichen', 'Seldom', 14, 1694946459, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (72, 'Earth Lichen', 'Yearly', 8, 1694961256, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (73, 'Lemmon''s Poppy', 'Monthly', 17, 1694967796, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (74, 'Purpleflowering Raspberry', 'Often', 13, 1694942414, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (75, 'Dictyonema Lichen', 'Once', 18, 1694957398, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (76, 'Sonoma Lessingia', 'Seldom', 5, 1694907873, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (77, 'Junior Tom Thumb Cactus', 'Yearly', 11, 1694940808, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (78, 'Riddell''s Goldenrod', 'Weekly', 2, 1694960937, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (79, 'African Bermudagrass', 'Once', 15, 1694982023, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (80, 'Magennis'' Dogstooth Grass', 'Once', 7, 1694976467, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (81, 'Snake Canyon Milkvetch', 'Once', 18, 1694908240, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (82, 'Cardinal Catchfly', 'Weekly', 19, 1694932682, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (83, 'Sharsmith''s Onion', 'Yearly', 5, 1694984950, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (84, 'Bush Clockvine', 'Weekly', 7, 1694925996, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (85, 'Shortstalk Dewberry', 'Daily', 10, 1694966428, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (86, 'Louisiana Wakerobin', 'Once', 4, 1694937551, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (87, 'Narrowleaf Hoarypea', 'Daily', 10, 1694907181, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (88, 'Sticky Snakeroot', 'Weekly', 15, 1694935135, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (89, 'Haid''s Amygdalaria Lichen', 'Never', 14, 1694966471, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (90, 'Camphor Pluchea', 'Monthly', 20, 1694938046, 1);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (91, 'Clarkton Hawthorn', 'Yearly', 17, 1694966139, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (92, 'Spiny Hedgehog Cactus', 'Daily', 14, 1694913405, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (93, 'Cup Lichen', 'Seldom', 4, 1694918026, 3);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (94, 'California Alkaligrass', 'Yearly', 20, 1694920797, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (95, 'American Waterwort', 'Weekly', 1, 1694923781, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (96, 'Purple Meadow-rue', 'Often', 12, 1694951498, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (97, 'Hybrid Violet', 'Daily', 10, 1694960551, 2);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (98, 'Holy Basil', 'Often', 4, 1694984685, 5);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (99, 'Bulrush', 'Yearly', 13, 1694956796, 4);
insert into Plants (PlantID, PlantType, Frequency, DaysPerWater, LastWatered, GardenID) values (100, 'Blackseed Speargrass', 'Never', 9, 1694973109, 2);
