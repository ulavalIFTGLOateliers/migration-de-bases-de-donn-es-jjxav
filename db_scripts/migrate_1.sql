ALTER TABLE album DROP FOREIGN KEY FK_A_singerName;

CREATE Table band (
    bandName VARCHAR(50) PRIMARY KEY,
    creation YEAR,
    genre VARCHAR(50)
);

RENAME TABLE singer TO musician;

ALTER TABLE musician
RENAME COLUMN singerName TO musicianName,
ADD COLUMN role VARCHAR(50),
ADD COLUMN bandName varchar(50);

ALTER TABLE album ADD CONSTRAINT FK_A_musicianName FOREIGN KEY (singerName) REFERENCES musician(musicianName);


INSERT INTO band VALUES 
("Crazy Duo", 2015, "rock"),
("Luna", 2009, "classical"),
("Mysterio", 2019, "pop");


UPDATE musician SET role = "vocals", bandName = "Crazy Duo" WHERE musicianName = "Alina";
UPDATE musician SET role = "guitar", bandName = "Mysterio" WHERE musicianName = "Mysterio";
UPDATE musician SET role = "percussion", bandName = "Crazy Duo" WHERE musicianName = "Rainbow";
UPDATE musician SET role = "piano", bandName = "Luna" WHERE musicianName = "Luna";

