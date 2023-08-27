-- Add more Kil'sorrow Npcs RP Scripts
-- Based on https://github.com/azerothcore/azerothcore-wotlk/commit/95c877c2f4790130982b3bdf4207460970a715d6
UPDATE `creature_template` SET `MinLootGold` = 303, `MaxLootGold` = 1924 WHERE `entry`= 17146; -- Kil'sorrow Spellbinder (161, 216)
REPLACE INTO `creature_addon` (`guid`, `stand_state`, `sheath_state`, `emote`, `auras`) VALUES
(151782, 0, 1, 353, NULL),
(151783, 0, 1, 353, NULL),
(151784, 0, 1, 353, NULL),
(151785, 0, 1, 353, NULL);

DELETE FROM `creature_addon` WHERE `guid` IN (151777,151780,151787,151790,151791,151792,151795,151799);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` IN (151777,151780,151787,151790,151791,151792,151795,151799);
DELETE FROM `creature_movement` WHERE `id` IN (151777,151780,151787,151790,151791,151792,151795,151799);
INSERT INTO `creature_movement` (`Id`, `Point`,`PositionX`,`PositionY`,`PositionZ`,`WaitTime`,`ScriptId`,`Orientation`,`Comment`) VALUES
(151787, 1, -2936.75, 6354.43, 88.3589, 90000, 1714615, 100, 'Kil\'Sorrow Spellbinder/Cultist - Set Random Standstate (0/1/3/8)'),
(151791, 1, -2784.44, 6397.67, 62.2251, 90000, 1714615, 100, 'Kil\'Sorrow Spellbinder/Cultist - Set Random Standstate (0/1/3/8)'),
(151780, 1, -2894.21, 6461.79, 101.635, 90000, 1714615, 100, 'Kil\'Sorrow Spellbinder/Cultist - Set Random Standstate (0/1/3/8)'),
(151795, 1, -2894.21, 6461.79, 101.635, 90000, 1714615, 100, 'Kil\'Sorrow Spellbinder/Cultist - Set Random Standstate (0/1/3/8)'),
(151799, 1, -2787.1, 6414.78, 62.2411, 90000, 1714615, 100, 'Kil\'Sorrow Spellbinder/Cultist - Set Random Standstate (0/1/3/8)'),
(151790, 1, -2787.1, 6414.78, 62.2411, 90000, 1714615, 100, 'Kil\'Sorrow Spellbinder/Cultist - Set Random Standstate (0/1/3/8)'),
(151777, 1, -3018.98, 6515.63, 113.043, 90000, 1714616, 100, 'Kil\'Sorrow Spellbinder/Cultist - Set Random Standstate (0/8)'),
(151792, 1, -2783.24, 6468.62, 78.5516, 90000, 1714616, 100, 'Kil\'Sorrow Spellbinder/Cultist - Set Random Standstate (0/8)');

DELETE FROM `dbscripts_on_creature_movement` WHERE `Id` = 1714614;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1714614, 5000, 0, 1, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kil\'Sorrow Spellbinder/Cultist - EMOTE_STATE_SPELLKNEELSTART'),
(1714614, 5000, 1, 15, 31902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kil\'Sorrow Spellbinder/Cultist - Cast Purple Beam'),

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1714615,1714616);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1714615, 0, 0, 45, 0, 1714601, 0, 0, 0, 0, 0, 0, 0, 0,'Kil\'Sorrow Spellbinder/Cultist - Set Random Standstate (0/1/3/8)', 0, 0, 0, 0),
(1714616, 0, 0, 45, 0, 1714602, 0, 0, 0, 0, 0, 0, 0, 0,'Kil\'Sorrow Spellbinder/Cultist - Set Random Standstate (0/8)', 0, 0, 0, 0);

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 32800 AND 32809;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`priority`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(32800,0,0,28,0,0,0,0,0,0,0,0,0,0,'GENERIC - UNIT_STAND_STATE_STAND',0,0,0,0),
(32801,0,0,28,1,0,0,0,0,0,0,0,0,0,'GENERIC - UNIT_STAND_STATE_SIT',0,0,0,0),
(32802,0,0,28,2,0,0,0,0,0,0,0,0,0,'GENERIC - UNIT_STAND_STATE_SIT_CHAIR',0,0,0,0),
(32803,0,0,28,3,0,0,0,0,0,0,0,0,0,'GENERIC - UNIT_STAND_STATE_SLEEP',0,0,0,0),
(32804,0,0,28,4,0,0,0,0,0,0,0,0,0,'GENERIC - UNIT_STAND_STATE_SIT_LOW_CHAIR',0,0,0,0),
(32805,0,0,28,5,0,0,0,0,0,0,0,0,0,'GENERIC - UNIT_STAND_STATE_SIT_MEDIUM_CHAIR',0,0,0,0),
(32806,0,0,28,6,0,0,0,0,0,0,0,0,0,'GENERIC - UNIT_STAND_STATE_SIT_HIGH_CHAIR',0,0,0,0),
(32807,0,0,28,7,0,0,0,0,0,0,0,0,0,'GENERIC - UNIT_STAND_STATE_DEAD',0,0,0,0),
(32808,0,0,28,8,0,0,0,0,0,0,0,0,0,'GENERIC - UNIT_STAND_STATE_KNEEL',0,0,0,0),
(32809,0,0,28,9,0,0,0,0,0,0,0,0,0,'GENERIC - UNIT_STAND_STATE_CUSTOM',0,0,0,0);

DELETE FROM `dbscript_random_templates` WHERE `id` BETWEEN 1714601 AND 1714602;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(1714601,1,32800,0,'GENERIC - UNIT_STAND_STATE_STAND'),
(1714601,1,32801,0,'GENERIC - UNIT_STAND_STATE_SIT'),
(1714601,1,32803,0,'GENERIC - UNIT_STAND_STATE_SLEEP'),
(1714601,1,32808,0,'GENERIC - UNIT_STAND_STATE_KNEEL'),

(1714602,1,32800,0,'GENERIC - UNIT_STAND_STATE_STAND'),
(1714602,1,32808,30,'GENERIC - UNIT_STAND_STATE_KNEEL');

UPDATE `creature_template` SET `MinLootGold` = 352, `MaxLootGold` = 1788 WHERE `entry`= 17147; -- Kil'sorrow Cultist (154, 206)

REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`, `Name`) VALUES (1714701, 1714701, 'RelayScript (1714701)');
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1714701 FROM `creature` WHERE `guid` IN (151806,151817);
DELETE FROM `creature_addon` WHERE `guid` IN (151806,151817);

DELETE FROM `dbscripts_on_relay` WHERE `id` = 1714701;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1714701, 0, 42, 0, 0, 0, 0, 0, 0, 2717, 0, 0, 0, 0, 0, 0, 0, '17147 - EquipSet 2'),
(1714701, 1000, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '17147 - EMOTE_STATE_USESTANDING');

UPDATE `creature_template` SET `MinLootGold` = 276, `MaxLootGold` = 1836 WHERE `entry`= 17148; -- Kil'sorrow Deathsworn (1100, 1130)

UPDATE `creature_template` SET `SpeedWalk` = 1, `UnitFlags` = 33536, `KillCredit1` = 0 WHERE `entry` = 18397; -- Kil'sorrow Invader (+ feign death from aura passive)
UPDATE `creature_template_addon` SET `emote` = 0, `stand_state` = 0, `auras` = '31261' WHERE `entry` = 18397;

UPDATE `creature_template` SET `SpeedWalk` = 1, `MinLootGold` = 300, `MaxLootGold` = 2000 WHERE `entry` = 18658; -- Kil'sorrow Ritualist (1167, 1222)

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` IN (66915,66913,66914,66916);
DELETE FROM `creature_movement` WHERE `id` IN (66915,66913,66914,66916);
INSERT INTO `creature_movement` (`Id`, `Point`,`PositionX`,`PositionY`,`PositionZ`,`WaitTime`,`ScriptId`,`Orientation`,`Comment`) VALUES
(66913, 1, -2810.39, 8339.39, -94.0092, 5000, 1865801, 100, 'Kil\'sorrow Ritualist - Cast Power Subjugator'),
(66914, 1, -2811.15, 8330.02, -94.0154, 5000, 1865801, 100, 'Kil\'sorrow Ritualist - Cast Power Subjugator'),
(66915, 1, -2814.55, 8342.08, -94.1181, 5000, 1865801, 100, 'Kil\'sorrow Ritualist - Cast Power Subjugator'),
(66916, 1, -2815.97, 8327.21, -94.12, 5000, 1865801, 100, 'Kil\'sorrow Ritualist - Cast Power Subjugator');

DELETE FROM `dbscripts_on_creature_movement` WHERE `Id` = 1865801;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1865801, 5000, 0, 15, 32623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kil\'sorrow Ritualist - Cast Power Subjugator'),
(1865801, 5000, 1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kil\'sorrow Ritualist - Set Idle Movement');

UPDATE `creature_template` SET `SpeedWalk` = 1, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 21276; -- Kil'sorrow Agent (Dummy Template)

