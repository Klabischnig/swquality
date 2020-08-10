CREATE TABLE `testlevel` (
  `testlevel` enum('unit','integration','system','acceptance') NOT NULL,
  PRIMARY KEY (`testlevel`)
);

insert into testlevel (testlevel) values
("unit"),
("system"),
("integration"),
("acceptance");