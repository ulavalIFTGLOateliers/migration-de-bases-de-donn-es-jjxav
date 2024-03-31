
ALTER TABLE album DROP FOREIGN KEY FK_A_musicianName;

DROP TABLE band;

RENAME TABLE musician TO singer;

ALTER TABLE singer
RENAME COLUMN musicianName TO singerName,
DROP COLUMN role,
DROP COLUMN bandName;


ALTER TABLE album ADD CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES singer(singerName);

