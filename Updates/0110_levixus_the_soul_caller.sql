-- Levixus the Soul Cleaver Quest
-- Add missing Ancient Draenei Spirit spawns around Levixus using spawn_group and condition
-- Group despawns when Levixus is dead and respawns when he respawns
-- TBC+ creatures guids also free in wotlk db

SET @CGUID := 157000;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+1 AND @CGUID+30;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnmask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES 
(@CGUID+1, 19416, 530, 1, -3565.49, 4949.01, -8.94927, 4.34587, 120, 120, 0, 0), 
(@CGUID+2, 19416, 530, 1, -3558.75, 4945.35, -8.93848, 3.14159, 120, 120, 0, 0), 
(@CGUID+3, 19416, 530, 1, -3559.01, 4940.64, -8.94042, 2.54818, 120, 120, 0, 0), 
(@CGUID+4, 19416, 530, 1, -3564.04, 4936.5, -8.97862, 1.65806, 120, 120, 0, 0), 
(@CGUID+5, 19416, 530, 1, -3569.75, 4938.04, -8.91788, 0.750492, 120, 120, 0, 0), 
(@CGUID+6, 19416, 530, 1, -3571.58, 4943.31, -8.91785, 0.0349066, 120, 120, 0, 0), 
(@CGUID+7, 19416, 530, 1, -3569.86, 4949.05, -8.91787, 5.39307, 120, 120, 0, 0),
(@CGUID+8, 19416, 530, 1,  -3561.48, 4948.51, -8.96696, 3.94444, 120, 120, 0, 0), 
(@CGUID+9, 19416, 530, 1, -3589.76, 4958.17, -16.0766, 5.8294, 120, 120, 0, 0), 
(@CGUID+10, 19416, 530, 1, -3593.29, 4954.31, -18.6963, 6.0912, 120, 120, 0, 0), 
(@CGUID+11, 19416, 530, 1, -3596.76, 4950.66, -21.2734, 6.19592, 120, 120, 0, 0), 
(@CGUID+12, 19416, 530, 1, -3589.92, 4950.49, -16.0163, 6.02139, 120, 120, 0, 0), 
(@CGUID+13, 19416, 530, 1, -3593.14, 4946.16, -18.3869, 6.05629, 120, 120, 0, 0), 
(@CGUID+14, 19416, 530, 1, -3597.48, 4942.24, -21.6605, 0.0523599, 120, 120, 0, 0), 
(@CGUID+15, 19416, 530, 1, -3590.31, 4942.29, -16.1561, 6.23083, 120, 120, 0, 0), 
(@CGUID+16, 19416, 530, 1, -3593.02, 4938.92, -18.3186, 6.23083, 120, 120, 0, 0), 
(@CGUID+17, 19416, 530, 1, -3596.67, 4934.44, -21.2282, 6.24828, 120, 120, 0, 0), 
(@CGUID+18, 19416, 530, 1, -3589.46, 4933.08, -15.7247, 6.24828, 120, 120, 0, 0), 
(@CGUID+19, 19416, 530, 1, -3593.03, 4931.01, -18.5177, 0.0698132, 120, 120, 0, 0), 
(@CGUID+20, 19416, 530, 1, -3592.68, 4962.18, -18.418, 5.91667, 120, 120, 0, 0), 
(@CGUID+21, 19416, 530, 1, -3604.23, 4928.09, -22.3344, 6.17847, 120, 120, 0, 0), 
(@CGUID+22, 19416, 530, 1, -3610.14, 4928.86, -21.9667, 0.244346, 120, 120, 0, 0), 
(@CGUID+23, 19416, 530, 1, -3604.12, 4937.79, -22.6247, 6.00393, 120, 120, 0, 0), 
(@CGUID+24, 19416, 530, 1, -3610.5, 4936.8, -22.4367, 5.95157, 120, 120, 0, 0), 
(@CGUID+25, 19416, 530, 1, -3604.07, 4946.47, -22.6258, 6.00393, 120, 120, 0, 0), 
(@CGUID+26, 19416, 530, 1, -3610.09, 4946.13, -22.5592, 6.02139, 120, 120, 0, 0), 
(@CGUID+27, 19416, 530, 1, -3603.88, 4954.56, -22.6258, 6.00393, 120, 120, 0, 0), 
(@CGUID+28, 19416, 530, 1, -3609.91, 4954.75, -22.6166, 6.05629, 120, 120, 0, 0), 
(@CGUID+29, 19416, 530, 1, -3603.55, 4962.41, -22.6258, 6.0912, 120, 120, 0, 0), 
(@CGUID+30, 19416, 530, 1, -3609.72, 4962.55, -22.6258, 5.91667, 120, 120, 0, 0),
(@CGUID+31, 19416, 530, 1, -3596.54, 4959.32, -21.3144, 6.05629, 120, 120, 0, 0);
  
-- All of the Draeneis have Aura that makes them invisible for players, they only get visible when Player has finished Quest Vision of the Dead
-- Have to find out how this gets handled before adding the spell to npcs

-- ServerToClient: SMSG_AURA_UPDATE (0x2C22) Length: 56 ConnIdx: 1 Time: 04/11/2023 13:17:17.711 Number: 216
-- UpdateAll: True
-- AurasCount: 1
-- [0] Slot: 0
-- [0] HasAura: True
-- [0] CastID: Full: 0xBC56EC42401FE20700004D0008ACCEEE Cast/7 R5563/S77 Map: 530 Low: 145542894
-- [0] SpellID: 32648 (32648)
-- [0] SpellXSpellVisualID: 0
-- [0] Flags: 513 (513)
-- [0] ActiveFlags: 1
-- [0] CastLevel: 10
-- UnitGUID: Full: 0x2056EC424012F60000004D00002CCEEE Creature/0 R5563/S77 Map: 530 Entry: 19416 Low: 2936558

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+1 AND @CGUID+30;
INSERT INTO creature_addon (`guid`, `stand_state`) VALUES 
(@CGUID+9, 8),
(@CGUID+10, 8),
(@CGUID+11, 8),
(@CGUID+12, 8),
(@CGUID+13, 8),
(@CGUID+14, 8),
(@CGUID+15, 8),
(@CGUID+16, 8),
(@CGUID+17, 8),
(@CGUID+18, 8),
(@CGUID+19, 8),
(@CGUID+20, 8),
(@CGUID+21, 8),
(@CGUID+22, 8),
(@CGUID+23, 8),
(@CGUID+24, 8),
(@CGUID+25, 8),
(@CGUID+26, 8),
(@CGUID+27, 8),
(@CGUID+28, 8),
(@CGUID+29, 8),
(@CGUID+30, 8),
(@CGUID+31, 8);
 
SET @SGGUID := 21000;
DELETE FROM spawn_group WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
-- Spawn group used with condition to despawn the ghosts around him when he is dead
(@SGGUID+1, 'Terokkar Forest - Levixus the Soul Cleaver - Draenei Spirits', 0, 0, 19100, 8);

DELETE FROM spawn_group_spawn WHERE Id = @SGGUID+1;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+1, @CGUID+1, -1),
(@SGGUID+1, @CGUID+2, -1),
(@SGGUID+1, @CGUID+3, -1),
(@SGGUID+1, @CGUID+4, -1),
(@SGGUID+1, @CGUID+5, -1),
(@SGGUID+1, @CGUID+6, -1),
(@SGGUID+1, @CGUID+7, -1),
(@SGGUID+1, @CGUID+8, -1),
(@SGGUID+1, @CGUID+9, -1),
(@SGGUID+1, @CGUID+10, -1),
(@SGGUID+1, @CGUID+11, -1),
(@SGGUID+1, @CGUID+12, -1),
(@SGGUID+1, @CGUID+13, -1),
(@SGGUID+1, @CGUID+14, -1),
(@SGGUID+1, @CGUID+15, -1),
(@SGGUID+1, @CGUID+16, -1),
(@SGGUID+1, @CGUID+17, -1),
(@SGGUID+1, @CGUID+18, -1),
(@SGGUID+1, @CGUID+19, -1),
(@SGGUID+1, @CGUID+20, -1),
(@SGGUID+1, @CGUID+21, -1),
(@SGGUID+1, @CGUID+22, -1),
(@SGGUID+1, @CGUID+23, -1),
(@SGGUID+1, @CGUID+24, -1),
(@SGGUID+1, @CGUID+25, -1),
(@SGGUID+1, @CGUID+26, -1),
(@SGGUID+1, @CGUID+27, -1),
(@SGGUID+1, @CGUID+28, -1),
(@SGGUID+1, @CGUID+29, -1),
(@SGGUID+1, @CGUID+30, -1),
(@SGGUID+1, @CGUID+31, -1);

DELETE FROM worldstate_name WHERE Id = 19100;
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
(19100, 'Terokkar Forest - Levixus the Soul Cleaver - Draenei Spirits');

DELETE FROM `conditions` WHERE `condition_entry` = 19100;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `value3`, `value4`, `flags`, `comments`) VALUES 
(19100, 42, 19100, 1, 0, 0, 0, 'Terokkar Forest - Levixus the Soul Cleaver - Draenei Spirits');

-- Spell List for Levixus the Soul Cleaver
-- Remove dbscript and movement, this gets handled via eai now
DELETE FROM creature_movement_template WHERE Entry = 19847;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1984701;
UPDATE creature SET MovementType = 0 WHERE id = 19847;

DELETE FROM dbscript_random_templates WHERE id = 1984701;
INSERT INTO dbscript_random_templates (`id`, `type`, `target_id`, `comments`) VALUES 
(1984701, 0, 17447, 'Levixus the Soul Cleaver -  OOC Texts'),
(1984701, 0, 17448, 'Levixus the Soul Cleaver -  OOC Texts'),
(1984701, 0, 17453, 'Levixus the Soul Cleaver -  OOC Texts'),
(1984701, 0, 17454, 'Levixus the Soul Cleaver -  OOC Texts');

-- Spell List for Lexivus
UPDATE creature_template SET SpellList = 1984701 WHERE entry=19847;

DELETE FROM creature_spell_list_entry WHERE Id = '1984701';
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1984701, 'Levixus the Soul Cleaver', 0, 0);

DELETE FROM creature_spell_list WHERE Id = '1984701';
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('1984701', '0', '11443', '0', '-1', '1', '0', '100', '0','3000','7000','13000','17000', 'Levixus the Soul Cleaver - Cripple - on current'),
('1984701', '1', '7645', '0', '-1', '101', '0', '100', '0','9000','14000','13000','17000', 'Levixus the Soul Cleaver - Dominate Mind - random not Tank'),
('1984701', '2', '38939', '0', '-1', '1', '0', '100', '0','10000','13000','18000','22000', 'Levixus the Soul Cleaver - Inferno - on current');

-- There is no action_set_worldstate for creature ai, use relay instead
-- When levixus respawns, set worldstate to 0 to let the Draenei Spirits spawn
DELETE FROM dbscripts_on_relay WHERE id = 1984701;
REPLACE INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1984701, 0, 0, 53, 0, 0, 0, 0, 0, 0, 19100, 0, 0, 0, 0, 0, 0, 0, 'Levixus the Soul Cleaver - Set Worldstate');

-- When levixus dies, set worldstate to 1 to let the Draenei Spirits despawn
DELETE FROM dbscripts_on_creature_death WHERE id = 19847;
REPLACE INTO `dbscripts_on_creature_death` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(19847, 0, 0, 53, 0, 0, 0, 0, 0, 0, 19100, 1, 0, 0, 0, 0, 0, 0, 'Levixus the Soul Cleaver - Set Worldstate');

-- Ramdor the Mad random Movement and small RP between seconds
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid = 69405;

DELETE FROM dbscripts_on_relay WHERE id = 1941701;
REPLACE INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1941701, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Set Active'),
(1941701, 0, 1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Stop Movement'),
(1941701, 0, 2, 0, 1941701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Random Text'),
(1941701, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 17328, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Emoted Text'),
(1941701, 8000, 0, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Emote Kneel'),
(1941701, 12000, 0, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Stop Movement'),
(1941701, 12000, 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Remove Active');

DELETE FROM dbscript_random_templates WHERE id = 1941701;
INSERT INTO dbscript_random_templates (`id`, `type`, `target_id`, `comments`) VALUES 
(1941701, 0, 17321, 'Ramdor the Mad -  OOC Texts'),
(1941701, 0, 17322, 'Ramdor the Mad -  OOC Texts'),
(1941701, 0, 17323, 'Ramdor the Mad -  OOC Texts'),
(1941701, 0, 17324, 'Ramdor the Mad -  OOC Texts'),
(1941701, 0, 17325, 'Ramdor the Mad -  OOC Texts'),
(1941701, 0, 17326, 'Ramdor the Mad -  OOC Texts'),
(1941701, 0, 17327, 'Ramdor the Mad -  OOC Texts');

UPDATE broadcast_text SET ChatTypeID = 2 WHERE Id = 17328;

-- Quest Levixus the Soul Caller 
DELETE FROM dbscripts_on_quest_end WHERE id = 10253;
REPLACE INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(10253, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Levixus the Soul Caller - Ramdor - Set Active'),
(10253, 0, 1, 29, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Levixus the Soul Caller - Ramdor - Remove QuestGiver Flag'),
(10253, 0, 2, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Levixus the Soul Caller - Ramdor - Stop Movement'),
(10253, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 17459, 0, 0, 0, 0, 0, 0, 0, 'Levixus the Soul Caller - Ramdor - Say Text'),
(10253, 6000, 1, 20, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Levixus the Soul Caller - Ramdor - Start Waypoint');

UPDATE `quest_template` SET CompleteScript = 10253 WHERE entry = 10253;

DELETE FROM creature_movement_template WHERE Entry = 19417;
INSERT INTO creature_movement_template (Entry, PathId, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES 
(19417, 1, 1, -3380.758, 5185.318, -97.35095, 100, 0, 0, 'Ramdor the Mad - Quest Waypoints'),
(19417, 1, 2, -3370.746, 5184.3066, -101.04942, 100, 100, 1941701, 'Ramdor the Mad - Quest Waypoints');

DELETE FROM dbscripts_on_creature_movement WHERE id = 1941701;
REPLACE INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1941701, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Change Movement'),
(1941701, 3000, 0, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - State Kneel'),
(1941701, 3000, 1, 9, 157029, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Respawn GO'),
(1941701, 7000, 0, 13, 0, 0, 0, 183983, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Activate GO'),
(1941701, 7000, 1, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Remove State Kneel'),
(1941701, 11000, 0, 1, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Emote OneShotNo'),
(1941701, 11000, 1, 0, 0, 0, 0, 0, 0, 0, 17460, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Say Text'),
(1941701, 16000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3386.392,5185.6997,-94.63212, 0, 'Ramdor the Mad - Move Point'),
(1941701, 23000, 0, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Change Movement'),
(1941701, 23000, 1, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Add Quest Flag'),
(1941701, 23000, 2, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ramdor the Mad - Remove Active');


-- The book of Dead Gameobject
-- [1] UpdateType: CreateObject2
-- [1] Object Guid: Full: 0x2C56EC4240B3ABC000004D0000354232 GameObject/0 R5563/S77 Map: 530 Entry: 183983 Low: 3490354
-- [1] Scale: 1.5
UPDATE `gameobject_template` SET `size`='1.5' WHERE (`entry`='183983');

DELETE FROM gameobject WHERE guid = 157029;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES 
(157029, 183983, 530, 1, -3368.968, 5184.064, -101.04955, 3.0717661, 0, 0, 0.9993906, 0.034906134, -10, -10);
