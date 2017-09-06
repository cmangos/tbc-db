ALTER TABLE game_event
ADD EventGroup mediumint(8) unsigned NOT NULL DEFAULT '0' AFTER linkedTo;

DROP TABLE IF EXISTS `quest_group`;

DELETE FROM `game_event` WHERE `entry` BETWEEN 1000 AND 1023;
INSERT INTO `game_event` (`entry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`linkedTo`,`EventGroup`,`description`) VALUES 
(1000,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,1,'Random Daily Dungeon - Wanted: Arcatraz Sentinels'),
(1001,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,1,'Random Daily Dungeon - Wanted: Coilfang Myrmidons'),
(1002,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,1,'Random Daily Dungeon - Wanted: Malicious Instructors'),
(1003,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,1,'Random Daily Dungeon - Wanted: Rift Lords'),
(1004,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,1,'Random Daily Dungeon - Wanted: Shattered Hand Centurions'),
(1005,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,1,'Random Daily Dungeon - Wanted: Sunseeker Channelers'),
(1006,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,1,'Random Daily Dungeon - Wanted: Tempest-Forge Destroyers'),
(1007,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,1,'Random Daily Dungeon - Wanted: Sisters of Torment'),

(1008,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: Nazan''s Riding Crop'),
(1009,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: A Black Stalker Egg'),
(1010,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: A Warp Splinter Clipping'),
(1011,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: Aeonus''s Hourglass'),
(1012,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: Bladefist''s Seal'),
(1013,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: Keli''dan''s Feathered Stave'),
(1014,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: Murmur''s Whisper'),
(1015,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: Pathaleon''s Projector'),
(1016,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: Shaffar''s Wonderous Pendant'),
(1017,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: The Epoch Hunter''s Head'),
(1018,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: The Exarch''s Soul Gem'),
(1019,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: The Headfeathers of Ikiss'),
(1020,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: The Heart of Quagmirran'),
(1021,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: The Scroll of Skyriss'),
(1022,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: The Warlord''s Treatise'),
(1023,'2011-01-14 02:00:00','2020-12-31 00:00:00',0,1440,0,0,2,'Random Daily Heroic - Wanted: The Signet Ring of Prince Kael''thas');

DELETE FROM game_event_quest WHERE event BETWEEN 1000 AND 1023;
INSERT INTO game_event_quest(event,quest) VALUES
(1000,11389),
(1001,11371),
(1002,11376),
(1003,11383),
(1004,11364),
(1005,11385),
(1006,11387),
(1007,11500),
(1008,11354),
(1009,11369),
(1010,11384),
(1011,11382),
(1012,11363),
(1013,11362),
(1014,11375),
(1015,11386),
(1016,11373),
(1017,11378),
(1018,11374),
(1019,11372),
(1020,11368),
(1021,11388),
(1022,11370),
(1023,11499);

-- All images are unselectable/passive
UPDATE `creature_template` SET `UnitFlags` = 33555200 WHERE `entry` IN (24854,24434,24415,24426,24429,24411,24430,24432,24410,24420,24431,24428,24414,24413,24425,24433,24423,24427,24424,24422,24419,24435,24421,24855);

-- Adjust positioning of hologram stands slightly
UPDATE `gameobject` SET `position_x` = -1787.656, `position_y` = 5158.583, `position_z` = -40.5 WHERE `guid` = 50360; -- heroic
UPDATE `gameobject` SET `position_x` = -1803.635, `position_y` = 5143.491, `position_z` = -40.5 WHERE `guid` = 50361; -- dungeon

-- All images should be flying/levitating
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` IN (24854,24434,24415,24426,24429,24411,24430,24432,24410,24420,24431,24428,24414,24413,24425,24433,24423,24427,24424,24422,24419,24435,24421,24855);

SET @START_GUID := 151200;
SET @GUID := @START_GUID;
DELETE FROM `creature` WHERE `id` IN (24854,24434,24415,24426,24429,24411,24430,24432);
DELETE FROM `creature` WHERE `id` IN (24410,24420,24431,24428,24414,24413,24425,24433,24423,24427,24424,24422,24419,24435,24421,24855);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES 
-- Daily Dungeons
(@GUID := @GUID + 0,24434,530,1,0,0,-1803.635,5143.491,-39.2503,2.19344,25,0,0,6986,0,0,0),     -- Arcatraz Sentinel Image
(@GUID := @GUID + 1,24415,530,1,0,0,-1803.635,5143.491,-39.2503,2.19344,25,0,0,6986,0,0,0),     -- Coilfang Myrmidon Image
(@GUID := @GUID + 1,24426,530,1,0,0,-1803.635,5143.491,-39.2503,2.19344,25,0,0,5589,3155,0,0),  -- Malicious Instructor Image
(@GUID := @GUID + 1,24429,530,1,0,0,-1803.635,5143.491,-39.2503,2.19344,25,0,0,7181,0,0,0),     -- Rift Lord Image
(@GUID := @GUID + 1,24411,530,1,0,0,-1803.635,5143.491,-39.2503,2.19344,25,0,0,6986,0,0,0),     -- Shattered Hand Centurion Image
(@GUID := @GUID + 1,24430,530,1,0,0,-1803.635,5143.491,-39.2503,2.19344,25,0,0,6986,0,0,0),     -- Sunseeker Channeler Image
(@GUID := @GUID + 1,24432,530,1,0,0,-1803.635,5143.491,-39.2503,2.19344,25,0,0,6986,0,0,0),     -- Tempest-Forge Destroyer Image
(@GUID := @GUID + 1,24854,530,1,0,0,-1803.635,5143.491,-39.2503,2.19344,25,0,0,5589,3155,0,0),  -- Sister of Torment Image
-- Daily Heroics
(@GUID := @GUID + 1,24410,530,1,0,0,-1787.656,5158.583,-39.02167,3.12,25,0,0,7380,0,0,0),     	-- Vazruden the Herald Image
(@GUID := @GUID + 1,24420,530,1,0,0,-1787.656,5158.583,-39.2503,3.12,25,0,0,5903,3309,0,0),   	-- The Black Stalker Image
(@GUID := @GUID + 1,24431,530,1,0,0,-1787.656,5158.583,-39.2503,3.12,25,0,0,7380,0,0,0),      	-- Warp Splinter Image
(@GUID := @GUID + 1,24428,530,1,0,0,-1787.656,5158.583,-39.2503,3.12,25,0,0,7380,0,0,0),      	-- Aeonus Image
(@GUID := @GUID + 1,24414,530,1,0,0,-1787.656,5158.583,-39.2503,3.12,25,0,0,7380,0,0,0),      	-- Warchief Kargath Bladefist Image
(@GUID := @GUID + 1,24413,530,1,0,0,-1787.656,5158.583,-39.2503,3.12,25,0,0,7380,0,0,0),      	-- Keli'dan the Breaker Image
(@GUID := @GUID + 1,24425,530,1,0,0,-1787.656,5158.583,-39.2503,3.12,25,0,0,7380,0,0,0),      	-- Murmur Image
(@GUID := @GUID + 1,24433,530,1,0,0,-1787.656,5158.583,-39.2503,3.12,25,0,0,5903,3309,0,0),   	-- Pathaleon the Calculator's Image
(@GUID := @GUID + 1,24423,530,1,0,0,-1787.656,5158.583,-39.2503,3.12,25,0,0,5903,3309,0,0),   	-- Nexus-Prince Shaffar Image
(@GUID := @GUID + 1,24427,530,1,0,0,-1787.656,5158.583,-39.02167,3.12,25,0,0,7380,0,0,0),     	-- Epoch Hunter Image
(@GUID := @GUID + 1,24424,530,1,0,0,-1787.656,5158.583,-39.2503,3.12,25,0,0,7380,0,0,0),      	-- Exarch Maladaar Image
(@GUID := @GUID + 1,24422,530,1,0,0,-1787.656,5158.583,-39.2503,3.12,25,0,0,5166,7500,0,0),   	-- Talon King Ikiss Image
(@GUID := @GUID + 1,24419,530,1,0,0,-1787.656,5158.583,-39.2503,3.12,25,0,0,7380,0,0,0),      	-- Quagmirran Image
(@GUID := @GUID + 1,24435,530,1,0,0,-1787.656,5158.583,-39.2503,3.12,25,0,0,5903,3309,0,0),   	-- Harbinger Skyriss Image
(@GUID := @GUID + 1,24421,530,1,0,0,-1787.656,5158.583,-39.2503,3.12,25,0,0,42,0,0,0),        	-- Warlord Kalithresh Image
(@GUID := @GUID + 1,24855,530,1,0,0,-1787.656,5158.583,-39.2503,3.12,25,0,0,5903,3309,0,0);   	-- Kael'thas Sunstrider Image

SET @GUID := @START_GUID;
DELETE FROM `game_event_creature` WHERE `event` BETWEEN 1000 AND 1023;
INSERT INTO `game_event_creature` (`guid`,`event`) VALUES
-- Daily Dungeons
(@GUID := @GUID + 0,1000),
(@GUID := @GUID + 1,1001),
(@GUID := @GUID + 1,1002),
(@GUID := @GUID + 1,1003),
(@GUID := @GUID + 1,1004),
(@GUID := @GUID + 1,1005),
(@GUID := @GUID + 1,1006),
(@GUID := @GUID + 1,1007),
-- Daily Heroics
(@GUID := @GUID + 1,1008),
(@GUID := @GUID + 1,1009),
(@GUID := @GUID + 1,1010),
(@GUID := @GUID + 1,1011),
(@GUID := @GUID + 1,1012),
(@GUID := @GUID + 1,1013),
(@GUID := @GUID + 1,1014),
(@GUID := @GUID + 1,1015),
(@GUID := @GUID + 1,1016),
(@GUID := @GUID + 1,1017),
(@GUID := @GUID + 1,1018),
(@GUID := @GUID + 1,1019),
(@GUID := @GUID + 1,1020),
(@GUID := @GUID + 1,1021),
(@GUID := @GUID + 1,1022),
(@GUID := @GUID + 1,1023);

-- Rotation implementation

UPDATE creature_template SET SpeedWalk=1,SpeedRun=8,ModelId1=17200,ModelId2=0,UnitFlags=33555200 WHERE entry=24412;

DELETE FROM spell_script_target WHERE entry IN(43685,43691);
INSERT INTO spell_script_target VALUES
(43685,1,24412,0),
(43691,1,24412,0);

DELETE FROM creature where id in(24412);
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(151224,24412,530,1,0,0,-1805.979,5145.452,-40.20918,0,300,0,0,6986,0,0,2),
(151225,24412,530,1,0,0,-1784.099,5158.404,-40.20918,0,300,0,0,6986,0,0,2);

DELETE FROM creature_movement WHERE id IN(151224,151225);
INSERT INTO creature_movement(id, point, position_x, position_y, position_z, orientation) VALUES
(151225,1,-1785.337,5155.88,-40.20918,100),
(151225,2,-1787.604,5155.49,-39.95918,100),
(151225,3,-1790.097,5155.834,-40.20918,100),
(151225,4,-1790.891,5158.362,-40.20918,100),
(151225,5,-1790,5160.982,-40.20918,100),
(151225,6,-1787.425,5161.558,-40.20918,100),
(151225,7,-1784.979,5160.777,-40.20918,100),
(151225,8,-1784.099,5158.404,-40.20918,100),

(151224,1,-1803.15,5145.873,-40.20918,100),
(151224,2,-1801.932,5144.047,-39.95918,100),
(151224,3,-1802.998,5141.658,-40.20918,100),
(151224,4,-1805.441,5141.446,-40.20918,100),
(151224,5,-1806.957,5143.694,-40.20918,100),
(151224,6,-1805.81,5145.754,-40.20918,100);

-- Wind Trader Zhareem
UPDATE creature SET position_x = -1793.096, position_y = 5153.81, position_z = -40.12583, orientation = 2.879793 WHERE guid = 12270;

-- Nether-Stalker Mah'duun
UPDATE creature SET position_x = -1798.239, position_y = 5149.043, position_z = -40.12583, orientation = 1.745329 WHERE guid = 12271;



