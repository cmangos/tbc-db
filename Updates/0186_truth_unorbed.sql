-- Questend Script for The Truth Unorbed Quest - 10825
SET @OGUID := 157030;
DELETE FROM `dbscripts_on_quest_end` WHERE id = '10825';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(10825,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tree Warden Chawn - Set Active'),
(10825,0,1,10,22233,41000,0,0,0,0,8,0,0,0,0,2976.34, 5476.4487, 143.22585, 4.956735,0,0,'Tree Warden Chawn - Spawn Unsuspecting Leafbeard'), -- 19:51:02.309
(10825,4000,0,10,22232,38000,1,0,0,8,0,0,0,0,0,2978.0886, 5493.5645, 143.23648, 4.5280657,0,0,'Tree Warden Chawn - Spawn Grishna Arakkoa'),  -- 19:51:06.354
(10825,7000,0,10,22240,34000,0,0,0,8,0,0,0,0,0,2975.7708, 5484.842, 145.37312, 4.7822022,0,0,'Tree Warden Chawn - Spawn Leafbeard Flavor Event Channel Bunny'), -- 19:51:09.582
(10825,7000,1,10,22246,34000,0,0,0,8,0,0,0,0,0,2975.6836, 5485.0806, 143.31775, 5.3407073,0,0,'Tree Warden Chawn - Spawn Leafbeard Flavor Event Particle Bunny'), -- 19:51:09.582
(10825,7000,2,9,@OGUID,34,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tree Warden Chawn - Respawn Grishnath Orb'),
(10825,11000,0,36,0,0,0,22233,10,1,0,0,0,0,0,0,0,0,0,0,0,'Tree Warden Chawn - Face Unsuspecting Leafbeard'),
(10825,11000,1,0,0,0,0,0,0,0,19934,0,0,0,0,0,0,0,0,0,0,'Tree Warden Chawn - Say Text'), -- 19:51:13.784
(10825,13000,0,10,22235,23000,1,0,0,8,0,0,0,0,0,2975.679, 5485.071, 143.31743, 4.790736,0,0,'Tree Warden Chawn - Spawn Evil Koi-Koi'), -- 19:51:15.239 
(10825,34000,0,0,0,0,0,0,0,0,19935,0,0,0,0,0,0,0,0,0,0,'Tree Warden Chawn - Say Text'), -- 19:51:38.317
(10825,34000,1,0,0,0,0,22233,10,7,19958,0,0,0,0,0,0,0,0,0,0,'Unsuspecting Leafbeard - Say EmotedText'),
(10825,36000,0,36,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Unsuspecting Leafbeard - Reset Facing'),
(10825,36000,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Tree Warden Chawn - Remove Active');

UPDATE quest_template SET CompleteScript= 10825 WHERE entry= 10825;

-- Unsuspecting Leafbeard shouldnt move and have UnitFlags:
-- UNIT_FIELD_FLAGS = 33536 [IMMUNE_TO_PC, IMMUNE_TO_NPC, UNK_15]
UPDATE creature_template SET UnitFlags = 33536, MovementType = 0 WHERE entry= 22233;

-- Grishna Arakkoa faction 
-- UNIT_FIELD_FACTIONTEMPLATE = 1738 [Arakkoa (1738)]
-- UNIT_FIELD_FLAGS = 33536 [IMMUNE_TO_PC, IMMUNE_TO_NPC, UNK_15]
UPDATE creature_template SET Faction = 1738, UnitFlags = 33536, MovementType = 2 WHERE entry= 22232;

-- Leafbeard Flavor Event Channel Bunny
-- UNIT_FIELD_FACTIONTEMPLATE = 35 [Friendly (35)]
-- UNIT_FIELD_FLAGS = 33554432 [NOT_SELECTABLE]
-- Leafbeard Flavor Event Particle Bunny
-- UNIT_FIELD_FACTIONTEMPLATE = 35 [Friendly (35)]
-- UNIT_FIELD_FLAGS = 33554432 [NOT_SELECTABLE]
UPDATE creature_template SET Faction = 35, UnitFlags = 33554432, MovementType = 0 WHERE entry IN (22240, 22246);

-- Evil Koi-Koi 22235
-- UNIT_FIELD_FLAGS = 33536 [IMMUNE_TO_PC, IMMUNE_TO_NPC, UNK_15]
-- UNIT_FIELD_FACTIONTEMPLATE = 16 [Monster (16)]
-- WalkSpeed: 0.5 (05/2.5=0.2)
UPDATE creature_template SET Faction = 16, UnitFlags = 33536, SpeedWalk = 0.2, MovementType = 2 WHERE entry = 22235;


-- Movement for Grishna Arakkoa and Evil Koi-Koi
DELETE FROM creature_movement_template WHERE entry IN (22232, 22235);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(22232,1,1,2978.0886, 5493.5645, 143.23648,100,0,0),
(22232,1,2,2976.6453, 5485.8228, 143.30869,100,100,2223201), -- 19:51:09.582
(22235,1,1,2975.679, 5485.071, 143.31743,100,0,0),
(22235,1,2,2976.3555, 5476.4536, 143.14305,100,100,2223501);

DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (2223201, 2223501);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(2223201,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grishna Arakkoa - Change movement'), 
(2223201,0,1,1,393,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Grishna Arakkoa - Emote OneShotCreatureSpecial'), -- 19:51:09.582
(2223201,0,1,36,0,0,0,22233,10,2,0,0,0,0,0,0,0,0,0,0,0,'Grishna Arakkoa - Unsuspecting Leafbeard - face Grishna'),
(2223201,0,1,36,0,0,0,22233,10,0,0,0,0,0,0,0,0,0,0,0,0,'Grishna Arakkoa - Face Unsuspecting Leafbeard'),
(2223201,2000,0,15,37679,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Grishna Arakkoa - Cast Arakkoa Channeling'), -- 19:51:12.417
(2223501,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Evil Koi-Koi - Change movement'), 
(2223501,2000,0,36,0,0,0,22232,10,0,0,0,0,0,0,0,0,0,0,0,0,'Evil Koi-Koi - Face Grishna Arakkoa');

-- Text should be emoted
UPDATE `broadcast_text` SET `ChatTypeID`='2' WHERE (`Id`='19958');

-- Grishnath Orb
DELETE FROM gameobject WHERE guid = @OGUID;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES 
(@OGUID, 185185, 530, 1,2975.6748, 5485.0854, 143.23366,1.6929693, 0, 0, 0.7489557, 0.66262007, -10, -10);

-- Spell Target for Cosemetic Purple Beam
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES 
(38632, 1, 21983), -- Samia Inkling
(38632, 1, 22007), -- Tree Warden Chawn
(38632, 1, 22233); -- Unsuspecting Leafbeard


-- Delete static spawned Unsuspecting Leafbeard
-- 86717	22233	530	1	2991,93	5556,64	148,628	3,99453	1515	1515	0	0
DELETE FROM creature WHERE id = 22233;

-- Delete static spawned Grishna Arakkoa
-- 86720	22232	530	1	2945,97	5512,96	146,468	5,80349	1524	1524	0	0
DELETE FROM creature WHERE id = 22232;


-- Delete static spawned Evil Koi-Koi
-- 86718	22235	530	1	2982,71	5534,24	147,892	4,53017	1515	1515	0	0
DELETE FROM creature WHERE id = 22235;