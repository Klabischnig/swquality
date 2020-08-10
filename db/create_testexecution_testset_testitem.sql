CREATE TABLE `testexecution_testset_testitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTestexecution` int(11) DEFAULT NULL,
  `idTestset` int(11) DEFAULT NULL,
  `idTestitem` int(11) DEFAULT NULL,
  `isFlaky` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idTestset` (`idTestset`),
  KEY `idTestitem` (`idTestitem`),
  CONSTRAINT `testexecution_testset_testitem_ibfk_1` FOREIGN KEY (`idTestset`) REFERENCES `testset` (`idTestset`),
  CONSTRAINT `testexecution_testset_testitem_ibfk_2` FOREIGN KEY (`idTestitem`) REFERENCES `testitem` (`idTestitem`)
);

insert into testexecution_testset_testitem (id, idTestexecution, idTestset, idTestitem, isFlaky) values 
(1,1,1,1,1),
(2,1,5,1,0),
(3,1,7,1,0),
(4,1,4,1,1),
(5,1,3,1,0),

(6,1,9,2,0),
(7,1,8,2,1),
(8,1,3,2,0),

(9,2,1,3,1),
(10,2,8,3,0),
(11,2,9,3,0),

(12,2,6,4,0),
(13,2,3,4,0),
(14,2,9,4,0);

insert into testexecution_testset_testitem (id, idTestexecution, idTestset, idTestitem, isFlaky) values 
(15,3,1,1,0),
(16,3,7,1,1),
(17,3,5,1,0),
(18,3,3,1,0),
(19,3,4,1,1),

(20,3,9,5,1),
(21,3,3,5,0),
(22,3,5,5,0),

(23,3,7,6,1),
(24,3,3,6,0),

(25,4,6,4,0),
(26,4,3,4,0),
(27,4,9,4,1),

(28,4,1,3,0),
(29,4,8,3,1),
(30,4,9,3,1);

insert into testexecution_testset_testitem (id, idTestexecution, idTestset, idTestitem, isFlaky) values 
(31,5,1,2,0),
(40,5,9,2,1),

(32,5,2,6,0),
(38,5,8,6,1),
(41,5,5,6,0),
(42,5,7,6,0),

(33,5,3,7,1),
(43,5,7,7,0),

(34,5,4,8,0),
(44,5,9,8,1),
(45,5,1,8,0),
(46,5,6,8,1),

(35,6,5,3,0),
(47,6,7,3,0),
(48,6,2,3,0),

(36,6,6,9,1),
(49,6,9,9,1),
(50,6,3,9,1),

(37,6,7,10,0),

(39,6,9,4,1),
(51,6,7,4,0);