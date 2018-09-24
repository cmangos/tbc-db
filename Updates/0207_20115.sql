-- Umbrafen Witchdoctor 20115
DELETE FROM `creature` WHERE `guid` BETWEEN 71592 AND 71597;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 71592 AND 71597;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(71592, 20115, 530, 1, 0, 0, -742.7538, 5307.001, 18.92145, 5.945681, 300, 300, 5, 0, 0, 0, 0, 1),
(71593, 20115, 530, 1, 0, 0, -1098.786, 5188.825, 44.39291, 3.274908, 300, 300, 5, 0, 0, 0, 0, 1),
(71594, 20115, 530, 1, 0, 0, -946.217, 5290.435, 18.31916, 1.356362, 300, 300, 5, 0, 0, 0, 0, 1),
(71595, 20115, 530, 1, 0, 0, -791.7216, 5216.098, 17.5179, 0.6237115, 300, 300, 5, 0, 0, 0, 0, 1),
(71596, 20115, 530, 1, 0, 0, -1056.179, 5222.964, 22.80347, 5.360602, 300, 300, 5, 0, 0, 0, 0, 1),
(71597, 20115, 530, 1, 0, 0, -721.4161, 5299.48, 17.92765, 5.17471, 300, 300, 5, 0, 0, 0, 0, 1);

