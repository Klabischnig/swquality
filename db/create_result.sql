CREATE TABLE `result` (
  `result` enum('passed','failed','not executed') NOT NULL,
  PRIMARY KEY (`result`)
);

insert into result (result) values
("passed"), ("failed"),("not executed");