CREATE TABLE `subsystem_component` (
  `idSubsystem` int(11) DEFAULT NULL,
  `idComponent` int(11) DEFAULT NULL
) ;

ALTER TABLE subsystem_component
ADD FOREIGN KEY (idSubsystem) REFERENCES subsystem(idSubsystem);
ALTER TABLE subsystem_component
ADD FOREIGN KEY (idComponent) REFERENCES systemcomponent(idComponent);

insert into subsystem_component (idSubsystem, idComponent) values
(1,1), (1,2), (1,3),(1,8),(1,11),(1,14),
(2,6),(2,9),(2,24),
(3,15),(3,19),(3,20),(3,21),(3,22),(3,23),
(4,4),(4,5),(4,7),
(5,10),(5,12),(5,13),(5,16),(5,17),(5,18),(5,25);

