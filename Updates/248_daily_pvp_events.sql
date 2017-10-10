DELETE FROM `game_event` WHERE `entry` BETWEEN 1025 AND 1028;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1025,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,3,'Random Daily PVP - Call to Arms: Arathi Basin'),
(1026,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,3,'Random Daily PVP - Call to Arms: Alterac Valley'),
(1027,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,3,'Random Daily PVP - Call to Arms: Eye of the Storm'),
(1028,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,3,'Random Daily PVP - Call to Arms: Warsong Gulch');

DELETE FROM game_event_quest WHERE event BETWEEN 1025 AND 1028;
INSERT INTO game_event_quest(event,quest) VALUES
(1025,11335),
(1025,11339),
(1026,11336),
(1026,11340),
(1027,11337),
(1027,11341),
(1028,11338),
(1028,11342);


