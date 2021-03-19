-- q.5154 'The Annals of Darrowshire'
-- .go o id 176150
-- there are 10 nodes and one node is the book Musty Tome (176150)
DELETE FROM dbscripts_on_quest_end WHERE id = 5154;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5154,0,0,0,0,0,0,0,0,2000003258,0,0,0,0,0,0,0,''),
(5154,100,15,17285,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast: Enchant Annals of Darrowshire'),
(5154,5000,0,0,0,0,0,0,0,2000003259,0,0,0,0,0,0,0,'');

UPDATE quest_template SET CompleteScript = 5154 WHERE entry = 5154;

DELETE FROM dbscript_string WHERE entry BETWEEN 2000003258 AND 2000003259;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment, broadcast_text_id) VALUES
(2000003258,'Let\'s find out the whole story.  That\'s going to take some magic...',0,0,0,0,NULL, 6418),
(2000003259,'There, it is done.  The book has been enhanced...',0,0,0,0,NULL, 6419);

-- Musty Tome 176150
-- https://tbc.wowhead.com/object=176150/musty-tome
-- this item shouldnt be in this object
DELETE FROM gameobject_loot_template WHERE entry = 13610 AND item = 15696; -- Ruined Tome only in 176151
-- missing guids, our spawn behavior is still wrong, should be group of 10 where one is 176150
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(55593, 176150, 0, 1, 1356.51, -1452.11, 57.8184, -0.296705, 0, 0, -0.147809, 0.989016, 300, 300, 255, 1),
(88659, 176150, 0, 1, 1360.83, -1448.93, 56.969, 1.95477, 0, 0, 0.829038, 0.559192, 60, 60, 100, 1),
(88657, 176150, 0, 1, 1360.85, -1458.26, 56.969, 0.645772, 0, 0, 0.317305, 0.948324, 60, 60, 255, 1),
(88654, 176150, 0, 1, 1374.15, -1448.33, 56.969, 1.69297, 0, 0, 0.748956, 0.66262, 60, 60, 255, 1),
(55594, 176150, 0, 1, 1380.05, -1457.83, 56.9689, 1.71042, 0, 0, 0.754709, 0.65606, 300, 300, 255, 1),
(55592, 176150, 0, 1, 1382.42, -1449.85, 56.969, 1.64061, 0, 0, 0.731354, 0.681998, 300, 300, 255, 1),
(88655, 176150, 0, 1, 1385.29, -1455.31, 56.9689, 0.017452, 0, 0, 0.00872589, 0.999962, 60, 60, 255, 1),
(88653, 176150, 0, 1, 1393.88, -1457.68, 58.3282, 2.33874, 0, 0, 0.920505, 0.390732, 60, 60, 255, 1),
(88656, 176150, 0, 1, 1394.99, -1450.47, 58.3282, 0.855211, 0, 0, 0.414693, 0.909961, 60, 60, 255, 1),
(88660, 176150, 0, 1, 1368.85, -1449.31, 56.969, 0.279253, 0, 0, 0.139173, 0.990268, 60, 60, 100, 1);
UPDATE gameobject SET spawntimesecsmin = 60, spawntimesecsmax = 60, animprogress = 100, state = 1 WHERE id = 176150;

-- Musty Tome 176151
-- https://tbc.wowhead.com/object=176151/musty-tome
-- this item shouldnt be in this object
DELETE FROM gameobject_loot_template WHERE entry = 14480 AND item = 12900; -- Annals of Darrowshire only in 176150

-- rotation values missing, guids identical
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
-- these are the init spawns where we had 10 nodes and 1 node was 176150
(45465, 176151, 0, 1, 1356.51, -1452.11, 57.8184, -0.296706, 0, 0, -0.147809, 0.989016, 60, 60, 100, 1),
(45463, 176151, 0, 1, 1360.83, -1448.93, 56.969, 1.95477, 0, 0, 0.829038, 0.559192, 60, 60, 100, 1),
(45460, 176151, 0, 1, 1360.85, -1458.26, 56.969, 0.645772, 0, 0, 0.317305, 0.948324, 60, 60, 100, 1),
(45461, 176151, 0, 1, 1374.15, -1448.33, 56.969, 1.69297, 0, 0, 0.748956, 0.66262, 60, 60, 100, 1),
(45468, 176151, 0, 1, 1380.05, -1457.83, 56.9689, 1.71042, 0, 0, 0.754709, 0.65606, 60, 60, 100, 1),
(45459, 176151, 0, 1, 1382.42, -1449.85, 56.969, 1.64061, 0, 0, 0.731354, 0.681998, 60, 60, 100, 1),
(45466, 176151, 0, 1, 1385.29, -1455.31, 56.9689, 0.017453, 0, 0, 0.00872639, 0.999962, 60, 60, 100, 1),
(45462, 176151, 0, 1, 1393.88, -1457.68, 58.3282, 2.33874, 0, 0, 0.920505, 0.390732, 60, 60, 100, 1),
(45464, 176151, 0, 1, 1394.99, -1450.47, 58.3282, 0.855211, 0, 0, 0.414693, 0.909961, 60, 60, 100, 1),
(45467, 176151, 0, 1, 1368.85, -1449.31, 56.969, 0.279253, 0, 0, 0.139173, 0.990268, 60, 60, 100, 1);
UPDATE gameobject SET spawntimesecsmin = 60, spawntimesecsmax = 60, animprogress = 100, state = 1 WHERE id = 176151;

-- POOLS
DELETE FROM pool_template WHERE entry = 16476;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(16476,1,'Western Plaguelands - Musty Tome (176150)');

DELETE FROM `pool_gameobject` WHERE `pool_entry` = 16476; -- respawned later in HFP revamp export

DELETE FROM pool_gameobject_template WHERE id = 176150;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(176150,16476,0,'Western Plaguelands - Musty Tome (176150)');
