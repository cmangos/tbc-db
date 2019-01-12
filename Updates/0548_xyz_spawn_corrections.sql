-- creature delete

DELETE FROM `creature` WHERE `guid` IN (73987,73988) AND `id` = 21060; -- Positioned in Dragonmaw Fortress below Ground
DELETE FROM `creature` WHERE `guid` = 769 AND `id` = 6366; -- Kurzen Mindslave summoned by Mogh the Undying 1060
DELETE FROM `creature_addon` WHERE `guid` = 769; -- also remove creature_addon
DELETE FROM `creature` WHERE `guid` = 85563 AND `id` = 21312; -- not found in sniff, resolves TBC-316

-- Delete duplicate 15197 (128993/160014) - https://github.com/cmangos/classic-db/commit/cfa6ee809413ed95325d25a1f05adc64cfbe3715
DELETE FROM `creature` WHERE `guid` = 128993;
DELETE FROM `game_event_creature` WHERE `guid` = 128993;


-- creature move

UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `id` = 705 AND `guid` = 1012;
DELETE FROM `creature_movement` WHERE `id` = 1012;

-- Aborius <Fury of Water> 18101
UPDATE `creature` SET `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 64054 AND `id` = 18101;

-- The Crone 18168 - should not move on Spawn
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 18168;

-- Marshfang Ripper 18130
UPDATE `creature` SET `position_x` = 280.27, `position_y` = 5138.97, `position_z` = 23.17 WHERE `guid` = 64591 AND `id` = 18130;
UPDATE `creature` SET `position_x` = 355.37, `position_y` = 5130.52, `position_z` = 20.89 WHERE `guid` = 64593 AND `id` = 18130;
UPDATE `creature` SET `position_x` = 387.92, `position_y` = 5103.89, `position_z` = 22.70 WHERE `guid` = 64594 AND `id` = 18130;
UPDATE `creature` SET `position_x` = 875.22, `position_y` = 5822.14, `position_z` = 31.36 WHERE `guid` = 64603 AND `id` = 18130;

-- Marshfang Slicer 18131
UPDATE `creature` SET `position_x` = 21.76, `position_y` = 7924.19, `position_z` = 21.98 WHERE `guid` = 64643 AND `id` = 18131;

-- Count Ungula 18285
UPDATE `creature` SET `spawndist` = 10, `MovementType` = 1 WHERE `guid` = 65575 AND `id` = 18285;

-- go delete

DELETE FROM `gameobject` WHERE `guid` = 141677; -- duplicate 141651
DELETE FROM `pool_gameobject` WHERE `guid` = 141677;

-- go move

UPDATE `gameobject` SET `position_z` = 37.0769 WHERE `guid` = 141853 AND `id` = 181270;
UPDATE `gameobject` SET `position_x` = 2717.54, `position_y` = 7222.56, `position_z` = 367.76 WHERE `guid` = 141351 AND `id` = 181271;
UPDATE `gameobject` SET `position_x` = 3931.69, `position_y` = 2185.29, `position_z` = 234.68 WHERE `guid` = 141807 AND `id` = 181279;
UPDATE `gameobject` SET `position_z` = 202.73 WHERE `guid` = 141404;
UPDATE `gameobject` SET `position_z` = 232.56 WHERE `guid` = 141738;
UPDATE `gameobject` SET `position_z` = 130.35 WHERE `guid` = 141762;
UPDATE `gameobject` SET `position_z` = -4.20 WHERE `guid` = 23109;

-- go improvements

-- Delete wrong gameobject pool_template 3591 - resolves TBC-1578
DELETE FROM `gameobject` WHERE `guid` BETWEEN 105256 AND 105261;
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 105256 AND 105261;
DELETE FROM `pool_template` WHERE `entry` = 3591;  -- Mineral Spawn Point 115 - The Hinterlands spawned in Elwynn

-- Substitute with actual zone node
DELETE FROM `gameobject` WHERE `guid` = 105256 AND `id` = 1731;
INSERT INTO `gameobject` VALUES (105256, 1731, 0, 1, -9025.47, -595.008, 56.6837, 0.767944, 0, 0, 0, 0, 45, 90, 255, 1);
DELETE FROM `pool_gameobject` WHERE `guid` = 105256;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(105256, 2011, 0, 'Mineral Spawn Point 108 - Copper');

-- Set GO_READY for mining node pool 8976
UPDATE `gameobject` SET `state` = 1 WHERE `guid` IN (111052,111053,111054);

