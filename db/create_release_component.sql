CREATE TABLE `release_component` (
  `id` int(11) NOT NULL,
  `idComponent` int(11) DEFAULT NULL,
  `isRisky` tinyint(1) DEFAULT NULL,
  `numberOfDefects` int(11) DEFAULT 0,
  `testcoverage` double DEFAULT NULL,
  `idRelease` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `percentage` CHECK (`testcoverage` between 0 and 100)
);

ALTER TABLE release_component
ADD FOREIGN KEY (`idRelease`) REFERENCES `systemrelease` (`idRelease`);

ALTER TABLE release_component
ADD FOREIGN KEY  (`idComponent`)  REFERENCES systemcomponent(`idComponent`);

select * from release_component where idComponent = 25;
insert into release_component (id, idComponent, isRisky, numberOfDefects, testcoverage, idRelease) values
(1,1,1,10,20.6,1),
(2,2,1,2,40,1),
(3,3,1,6,66.66,1),
(4,6,0,1,80,1),
(5,9,0,0,90.3,1),
(6,15,0,3,45.6,1),
(7,19,1,21,52.6,1),
(8,20,0,1,93.12,1),
(9,7,0,3,85.10,1),
(10,25,0,0,70.39,1);

insert into release_component (id, idComponent, isRisky, numberOfDefects, testcoverage, idRelease) values
(11,1,0,1,90.5,2),
(12,2,0,0,68.5,2),
(13,3,0,0,87,2),
(14,8,1,20,15.6,2),
(15,11,1,0,0,2),
(16,14,1,0,5,2),
(17,24,1,18,70.29,2),
(18,19,0,3,94.22,2),
(19,21,0,1,66.55,2),
(20,21,0,6,87.26,2),
(21,22,0,0,37.55,2),
(22,7,1,18,34.15,2),
(23,16,0,2,49.78,2),
(24,17,0,1,67.15,2),
(25,18,1,5,24.98,2);

insert into release_component (id, idComponent, isRisky, numberOfDefects, testcoverage, idRelease) values
(26,6,0,0,97.25,3),
(27,9,0,0,96.5,3),
(28,24,0,2,84.24,3),
(29,23,0,0,12.5,3),
(30,4,1,0,1.5,3),
(31,5,1,5,14.96,3),
(32,7,0,3,74.22,3),
(33,10,1,19,54.88,3),
(34,12,0,0,41.76,3),
(35,13,0,3,84.02,3),
(36,16,1,6,12.89,3),
(37,17,1,8,61,3),
(38,18,0,0,100,3),
(39,25,1,8,58.07,3);