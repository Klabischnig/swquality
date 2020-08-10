CREATE TABLE `systemrelease` (
  `idRelease` int(11) NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idRelease`)
);

insert into systemrelease (idRelease, stamp) values 
(1, "2019-10-01 00:00:00"),
(2, "2019-11-05 06:50:07"),
(3, "2020-01-01 08:30:13");