CREATE TABLE `testexecution` (
  `idTestexecution` int(11) NOT NULL AUTO_INCREMENT,
  `stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `buildNumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTestexecution`)
);

insert into testexecution (idTestexecution, stamp, buildNumber) values 
(1, "2019-10-05 08:06:30", 1),
(2, "2019-11-18 19:15:15", 2),
(3, "2019-12-20 00:01:00", 3),
(4, "2020-01-01 07:15:34", 4),
(5, "2020-01-06 15:33:57", 5),
(6, "2020-01-19 11:11:11", 6);