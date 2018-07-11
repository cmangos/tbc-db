DELETE FROM `game_event` WHERE `entry` = 44;
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `linkedTo`, `EventGroup`, `description`) VALUES
(44, '2010-09-19 00:01:00', '2020-09-20 00:00:00', 525600, 1440, 398, 0, 0, 'Pirate\'s Day');

DELETE FROM gameobject_template WHERE entry IN(190363);
INSERT INTO gameobject_template(entry, type, displayId, name, size) VALUES
(190363,5,3972,'Pirate Day Music Doodad',1);

DELETE FROM gameobject WHERE id IN(190363) AND guid IN(88);
INSERT INTO gameobject(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
('88', '190363', '0', '1', '-14424.7', '531.309', '24.8791', '-2.47837', '0', '0', '-0.945519', '0.325567', '300', '300', '255', '1');

DELETE FROM game_event_gameobject WHERE guid IN(88) AND event IN(44);
INSERT INTO game_event_gameobject(guid, event) VALUES
('88', '44');


