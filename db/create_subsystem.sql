CREATE TABLE `subsystem` (
  `idSubsystem` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idSubsystem`)
);

insert into subsystem (idSubsystem, title) values 
(1, "subsystem 1"), (2, "subsystem 2"), (3, "subsystem 3"), (4, "subsystem 4"), (5, "subsystem 5");