CREATE TABLE `testset` (
  `idTestset` int(11) NOT NULL AUTO_INCREMENT,
  `testDesignTechnique` mediumtext DEFAULT NULL,
  `testbasis` mediumtext DEFAULT NULL,
  `testlevel` enum('unit','integration','system','acceptance') DEFAULT NULL,
  PRIMARY KEY (`idTestset`),
  KEY `testlevel` (`testlevel`),
  CONSTRAINT `testset_ibfk_1` FOREIGN KEY (`testlevel`) REFERENCES `testlevel` (`testlevel`) ON DELETE SET NULL ON UPDATE CASCADE
);

insert into testset (idTestset, testDesignTechnique, testbasis, testlevel) values 
(1, "test design technique 1", "testbasis 1", "unit"),
(2, "test design technique 2", "testbasis 2", "system"),
(3, "test design technique 3", "testbasis 3", "integration"),
(4, "test design technique 4", "testbasis 4", "acceptance"),
(5, "test design technique 5", "testbasis 5", "unit"),
(6, "test design technique 6", "testbasis 6", "integration"),
(7, "test design technique 7", "testbasis 7", "system"),
(8, "test design technique 8", "testbasis 8", "acceptance"),
(9, "test design technique 9", "testbasis 9", "unit");
