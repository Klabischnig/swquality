CREATE TABLE `testcase` (
  `idTestcase` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `testObjective` longtext DEFAULT NULL,
  `executiontime` double unsigned DEFAULT NULL,
  `result` enum('passed','failed','not executed') DEFAULT NULL,
  `testlevel` enum('unit','integration','system','acceptance') DEFAULT NULL,
  PRIMARY KEY (`idTestcase`),
  KEY `testlevel` (`testlevel`),
  KEY `result` (`result`),
  CONSTRAINT `testcase_ibfk_1` FOREIGN KEY (`testlevel`) REFERENCES `testlevel` (`testlevel`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `testcase_ibfk_2` FOREIGN KEY (`result`) REFERENCES `result` (`result`) ON DELETE SET NULL ON UPDATE CASCADE
);

insert into testcase (idTestcase, title, testObjective, executiontime, result, testlevel) values 
(8, "test case 8", "test objective 8", 0.25, "passed", "unit"),
(9, "test case 9", "test objective 9", 0.57, "failed", "unit"),
(15, "test case 15", "test objective 15", 0.12, "not executed", "unit"),
(1, "test case 1", "test objective 1", 0.42, "passed", "unit"),
(2, "test case 2", "test objective 2", 0.37, "passed", "unit"),
(25, "test case 25", "test objective 25", 1.24, "failed", "unit");

insert into testcase (idTestcase, title, testObjective, executiontime, result, testlevel) values 
(3, "test case 8", "test objective 8", 0.25, "passed", "system"),
(14, "test case 14", "test objective 14", 0.43, "failed", "system"),
(13, "test case 13", "test objective 13", 1.5, "passed", "system"),
(20, "test case 20", "test objective 20", 1.12, "not executed", "system");

insert into testcase (idTestcase, title, testObjective, executiontime, result, testlevel) values 
(12, "test case 12", "test objective 12", 0.53, "passed", "integration"),
(18, "test case 18", "test objective 18", 1.25, "failed", "integration"),
(4, "test case 4", "test objective 4", 0.55, "passed", "integration");

insert into testcase (idTestcase, title, testObjective, executiontime, result, testlevel) values 
(26, "test case 26", "test objective 26", 0.43, "passed", "acceptance"),
(16, "test case 16", "test objective 16", 1.12, "passed", "acceptance"),
(10, "test case 10", "test objective 10", 1.33, "passed", "acceptance");

insert into testcase (idTestcase, title, testObjective, executiontime, result, testlevel) values 
(5, "test case 5", "test objective 5", 0.43, "failed", "unit"),
(6, "test case 6", "test objective 6", 0.43, "not executed", "unit"),
(7, "test case 7", "test objective 7", 0.43, "passed", "unit");

insert into testcase (idTestcase, title, testObjective, executiontime, result, testlevel) values 
(17, "test case 17", "test objective 17", 0.20, "failed", "integration"),
(19, "test case 19", "test objective 19", 1.48, "passed", "integration"),
(21, "test case 21", "test objective 21", 0.15, "passed", "integration");

insert into testcase (idTestcase, title, testObjective, executiontime, result, testlevel) values 
(11, "test case 11", "test objective 11", 0.56, "passed", "system");

insert into testcase (idTestcase, title, testObjective, executiontime, result, testlevel) values 
(22, "test case 22", "test objective 22", 0.24, "passed", "acceptance"),
(23, "test case 23", "test objective 23", 0.00, "not executed", "acceptance");

insert into testcase (idTestcase, title, testObjective, executiontime, result, testlevel) values 
(24, "test case 24", "test objective 24", 1.51, "failed", "unit");
