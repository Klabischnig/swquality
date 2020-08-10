CREATE TABLE `testsuite_testcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTestcase` int(11) DEFAULT NULL,
  `idTestsuite` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idTestcase` (`idTestcase`),
  KEY `idTestsuite` (`idTestsuite`),
  CONSTRAINT `testsuite_testcase_ibfk_1` FOREIGN KEY (`idTestcase`) REFERENCES `testcase` (`idTestcase`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `testsuite_testcase_ibfk_2` FOREIGN KEY (`idTestsuite`) REFERENCES `testsuite` (`idTestsuite`) ON DELETE CASCADE ON UPDATE CASCADE
);

insert into testsuite_testcase (id, idTestsuite, idTestcase) values 
(1,1,8),(2,1,9),(3,1,15),
(4,4,1),(5,4,2),
(6,3,3),(7,3,15),
(8,6,12),(9,6,18),
(10,12,4),
(11,11,26),(12,11,16),
(13,8,10),
(14,5,5),(15,5,6),
(16,9,17),
(17,10,11),
(18,7,22),(19,7,23),
(20,2,24);