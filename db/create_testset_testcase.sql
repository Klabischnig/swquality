CREATE TABLE `testset_testcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTestset` int(11) DEFAULT NULL,
  `idTestcase` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idTestset` (`idTestset`),
  KEY `idTestcase` (`idTestcase`),
  CONSTRAINT `testset_testcase_ibfk_1` FOREIGN KEY (`idTestset`) REFERENCES `testset` (`idTestset`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `testset_testcase_ibfk_2` FOREIGN KEY (`idTestcase`) REFERENCES `testcase` (`idTestcase`) ON DELETE CASCADE ON UPDATE CASCADE
) ;

insert into testset_testcase (id, idTestset, idTestcase) values
(1,1,8), (2,1,9),(3,1,15), (4,1,1),(5,1,2),(6,1,25),
(7,2,3),(8,2,14),(9,2,13),(10,2,20),
(11,3,12),(12,3,18),(13,3,4),
(14,4,26),(15,4,16),(16,4,10),
(17,5,5),(18,5,6),(19,5,1),(20,5,2),(21,5,7),
(22,6,17),(23,6,19),(24,6,21),
(25,7,11),
(26,8,22),(27,8,23),(28,8,10),
(29,9,24),(30,9,25),(31,9,7),(32,9,1),(33,9,2);