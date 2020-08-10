CREATE TABLE `testitem_component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTestitem` int(11) DEFAULT NULL,
  `idComponent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idTestitem` (`idTestitem`),
  KEY `idComponent` (`idComponent`),
  CONSTRAINT `testitem_component_ibfk_1` FOREIGN KEY (`idTestitem`) REFERENCES `testitem` (`idTestitem`),
  CONSTRAINT `testitem_component_ibfk_2` FOREIGN KEY (`idComponent`) REFERENCES `release_component` (`id`)
) ;

insert into testitem_component (id, idTestitem, idComponent) values
(1,1,1),(2,1,2),(3,1,3),
(4,2,6),(5,2,9),
(6,3,15),(7,3,20),(8,3,7),
(9,4,19),(10,4,25);

insert into testitem_component (id, idTestitem, idComponent) values 
(11,5,8),(12,5,11),(13,5,14),
(14,6,24),(15,6,16),(16,6,17),(17,6,18),
(18,4,21),(19,4,22);

insert into testitem_component (id, idTestitem, idComponent) values
(20,7,23),
(21,8,4), (22,8,5),
(23,9,10), (24,10,12),(25,10,13);