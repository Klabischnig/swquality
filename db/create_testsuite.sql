CREATE TABLE `testsuite` (
  `idTestsuite` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `testSubProcessObjective` longtext DEFAULT NULL,
  `executionTime` double unsigned DEFAULT NULL,
  `testlevel` enum('unit','integration','system','acceptance') DEFAULT NULL,
  PRIMARY KEY (`idTestsuite`),
  KEY `testlevel` (`testlevel`),
  CONSTRAINT `testsuite_ibfk_1` FOREIGN KEY (`testlevel`) REFERENCES `testlevel` (`testlevel`) ON DELETE SET NULL ON UPDATE CASCADE
);

insert into testsuite (idTestsuite, title, testSubProcessObjective, executionTime, testlevel) values
(1, "testsuite 1", "test sub process objective 1", 1.50, "unit"),
(4, "testsuite 4", "test sub process objective 4", 3.12, "unit"),
(5, "testsuite 5", "test sub process objective 5", 4.33, "unit"),
(2, "testsuite 2", "test sub process objective 2", 02.47, "unit");

insert into testsuite (idTestsuite, title, testSubProcessObjective, executionTime, testlevel) values
(3, "testsuite 3", "test sub process objective 3", 4.52, "system"),
(10, "testsuite 10", "test sub process objective 10", 1.28, "system");

insert into testsuite (idTestsuite, title, testSubProcessObjective, executionTime, testlevel) values
(6, "testsuite 6", "test sub process objective 6", 1.55, "integration"),
(12, "testsuite 12", "test sub process objective 12", 2.59, "integration"),
(9, "testsuite 9", "test sub process objective 9", 3.45, "integration");

insert into testsuite (idTestsuite, title, testSubProcessObjective, executionTime, testlevel) values
(11, "testsuite 11", "test sub process objective 11", 5.12, "acceptance"),
(8, "testsuite 8", "test sub process objective 8", 1.36, "acceptance"),
(7, "testsuite 7", "test sub process objective 7", 2.53, "acceptance");

