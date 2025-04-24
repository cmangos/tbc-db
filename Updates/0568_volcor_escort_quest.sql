-- ----------------
-- Darkshore
-- Quest Escape Through Stealth (995)
-- Quest Escape Through Force (994)
-- ---------------

SET @CGUID := 180818;
SET @SGGUID := 18004; -- spawn_groups
SET @CONDITIONID := 18004;

-- Correct spawnPosition and Respawn Timer based on Sniffs
DELETE FROM creature WHERE guid = 37096;
DELETE FROM creature WHERE guid BETWEEN @CGUID AND @CGUID+1;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(37096, 3692, 1, 1, 4608.44189453125, -6.32595491409301757, 69.7472991943359375, 1.850049018859863281, 60, 60, 0, 0);

-- Correct UnitFlags
UPDATE creature_template SET UnitFlags = 768 WHERE entry = 3692;

-- Change Text to emoted text
UPDATE broadcast_text SET ChatTypeID = '2' WHERE Id IN (1238);


DELETE FROM dbscripts_on_quest_start WHERE id IN (994, 995);
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- Escape Through Stealth
(995, 0, 0, 22, 35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - Change Faction'),
(995, 0, 1, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - StandState Stand'),
(995, 0, 2, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - Face Player'),
(995, 0, 3, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - Emote OneShotBow'),
(995, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 1236, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - Say Text'),
(995, 6000, 0, 15, 10849, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - Cast Spell'),
(995, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 1238, 0, 0, 0, 0, 0, 0, 0, 'Escape Through Stealth - Volcor - Say EmotedText');

UPDATE quest_template SET StartScript = 995 WHERE entry = 995;

-- Waypoints for Volcor when doing escort Quest: Escape Through Stealth
DELETE FROM waypoint_path_name WHERE PathId IN (3692, 3693);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES 
(3692, 'Darkshore - Volcor - Quest: Escape Through Stealth');

DELETE FROM waypoint_path WHERE `PathId` IN (3692, 3693);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
-- Escape Through Stealth path
(3692, 1, 4608.442, -6.326, 69.7473, 100, 10000, 0), 
(3692, 2, 4620.7637,25.817871,70.31253, 100, 0, 0), 
(3692, 3, 4642.706,32.261177,67.791306, 100, 5000, 0);




-- SpellList for Blackwood Ursa
DELETE FROM `creature_template_spells` WHERE `entry` = 2170;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 217001;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(217001, 'Blackwood Ursa', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (217001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(217001, 1, 1058, 0, -1, 200, 0, 100, 0, 2000, 8000, 18000, 21000, 'Blackwood Ursa - Rejuvenation - frindly missing 20% hp include self');

UPDATE `creature_template` SET `SpellList` = 217001 WHERE `entry` = 2170; 

-- SpellList for Blackwood Shaman
DELETE FROM `creature_template_spells` WHERE `entry` = 2171;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 217101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(217101, 'Blackwood Shaman', 0, 70);

DELETE FROM `creature_spell_list` WHERE `Id` IN (217101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(217101, 1, 913, 0, -1, 200, 0, 100, 0, 2000, 8000, 16000, 21000, 'Blackwood Shaman - Healing Wave - frindly missing 20% hp include self'),
(217101, 2, 2606, 0, -1, 100, 0, 100, 0, 9000, 14000, 11000, 15000, 'Blackwood Shaman - Shock - random'),
(217101, 3, 9532, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Blackwood Shaman - Lightning Bolt - current');

UPDATE `creature_template` SET `SpellList` = 217101 WHERE `entry` = 2171; 