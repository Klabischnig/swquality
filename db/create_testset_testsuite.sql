CREATE TABLE `testset_testsuite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTestset` int(11) DEFAULT NULL,
  `idTestsuite` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idTestset` (`idTestset`),
  KEY `idTestsuite` (`idTestsuite`),
  CONSTRAINT `testset_testsuite_ibfk_1` FOREIGN KEY (`idTestset`) REFERENCES `testset` (`idTestset`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `testset_testsuite_ibfk_2` FOREIGN KEY (`idTestsuite`) REFERENCES `testsuite` (`idTestsuite`) ON DELETE CASCADE ON UPDATE CASCADE
);

insert into testset_testsuite (id, idTestset, idTestsuite) values 
(1,1,1),(2,1,4),
(3,2,3),
(4,3,6),(5,3,12),
(6,4,11),(7,4,8),
(8,5,5),(9,5,4),
(10,6,9),
(11,7,10),
(12,8,7),(13,8,8),
(14,9,2),(15,9,4);