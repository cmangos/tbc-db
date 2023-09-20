-- Questend Script for Full Triangle Quest - 10276
DELETE FROM `dbscripts_on_quest_end` WHERE id = '10276';
INSERT INTO dbscripts_on_quest_end(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(10276,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Image of Nexus-Prince Haramad - Set Active'), --  10:52:36.253
(10276,0,1,29,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Image of Nexus-Prince Haramad - Remove NPC Flags'), 
(10276,0,2,10,20163,0,1,0,0,8,0,0,0,0,0,4118.5303,2947.3643,354.60495,4.760,0,0,'Full Triangle - Spawn Ambassador Solannas'), 
(10276,0,3,10,20199,0,1,0,0,8,0,0,0,0,0,4119.928, 2949.9358, 354.60495, 4.6774,0,0,'Full Triangle - Spawn Ambassador\'s Honor Guard'), -- 0x20197C424013B9C0002F39000072F7D4
(10276,0,4,10,20199,0,2,0,0,8,0,0,0,0,0,4117.199, 2949.8013, 354.60495, 4.69493,0,0,'Full Triangle - Spawn Ambassador\'s Honor Guard'),
(10276,6000,0,0,0,0,0,20163,10,7,17787,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Ambassador Solannas - Say Text'), -- 10:52:42.914
(10276,12000,0,0,0,0,0,0,0,0,17793,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Image of Nexus-Prince Haramad - Say Text'), -- 10:52:48.586
(10276,18000,0,1,5,0,0,20163,10,7,0,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Ambassador Solannas - Emote'),
(10276,18000,1,0,0,0,0,20163,10,7,17794,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Ambassador Solannas - Say Text'), -- 10:52:54.539 
(10276,24000,0,48,33536,0,0,20163,10,7,0,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Ambassador Solannas - Remove UnitFlags'), -- 10:53:00.597   559104
(10276,24000,1,48,33536,0,0,20199,10,519,0,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Ambassador Honor Guard - Remove UnitFlags'),
(10276,25000,0,1,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Image of Nexus-Prince Haramad - Emote Rawr'),
(10276,25000,1,0,0,0,0,0,0,0,17796,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Image of Nexus-Prince Haramad - Say Text'), -- 10:53:01.921
(10276,27000,0,18,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Image of Nexus-Prince Haramad - Despawn'), -- 10:53:03.423  
(10276,27000,1,12,24926,120,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Haramad\'s Holographic Stand - Activate'),
(10276,28000,4,10,19675,0,1,0,0,8,0,0,0,0,0,4131.736, 2930.2441, 354.6069, 2.9942,0,0,'Full Triangle - Spawn Nexus-Prince Haramad'); -- 00:55:57.530

UPDATE quest_template SET CompleteScript= 10276 WHERE entry= 10276;

-- Relay Script started from Nexus-Prince Haramad when Ambassador Solannas dies
DELETE FROM `dbscripts_on_relay` WHERE id = '1967501';
INSERT INTO dbscripts_on_relay(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1967501,1000,0,0,0,0,0,0,0,0,17797,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Nexus-Prince Haramad - Say Text'), -- 00:56:04.923
(1967501,10000,0,3,0,0,0,0,0,0,0,0,0,0,0,4133.1665,2930.1848,354.54504,0,0,0,'Full Triangle - Nexus-Prince Haramad - Move'), -- 00:56:13.321
(1967501,12000,0,15,34427,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Nexus-Prince Haramad - Cast Ethereal Teleport'), -- 00:56:14.945
(1967501,12000,1,11,24926,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Haramad\'s Holographic Stand - Deactive'),
(1967501,13000,0,41,0,0,0,20084,25,65,0,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Respawn Image of Nexus-Prince Haramad'),
(1967501,13000,1,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Full Triangle - Nexus-Prince Haramad - Despawn'); -- 00:56:16.973

-- Death Script for Ambassador Solannas
DELETE FROM `dbscripts_on_creature_death` WHERE id = '20163';
INSERT INTO dbscripts_on_creature_death(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(20163,1000,0,35,5,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ambassador Solannas - Send AI Event on Death'); 

-- Movement for Ambassador Solannas and his Guards
DELETE FROM creature_movement_template WHERE entry IN (19675, 20163, 20199);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
(19675,1,1,4131.736, 2930.2441, 354.6069,100,0,0),
(19675,1,2,4122.2397,2931.6533,354.50958,100,100,1967501),
(20163,1,1,4118.5303,2947.3643,354.60495,100,0,0),
(20163,1,2,4118.8247,2931.8252,354.5096,100,100,2016301),
(20199,1,1,4119.928, 2949.9358, 354.60495,100,0,0),
(20199,1,2,4121.2666,2934.7397,354.50958,100,100,2019901),
(20199,2,1,4117.199, 2949.8013, 354.60495,100,0,0),
(20199,2,2,4117.0312,2934.5273,354.5096,100,100,2019901);

-- Correct their on Spawn Faction and movement
-- [6] FactionTemplate: 1789
-- [6] Flags: 33536
-- [6] Flags2: 2048
UPDATE creature_template SET Faction = 1789, UnitFlags = 33536, MovementType = 2 WHERE entry IN (20163, 20199);
UPDATE creature_template SET MovementType = 2 WHERE entry = 19675;

DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (1967501, 2016301, 2019901);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1967501,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Nexus-Prince Haramad - Change movement'), 
(2016301,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ambassador Solannas - Change movement'), 
(2019901,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ambassador Honor Guard - Change movement');

-- Spell_list for Amabassador Solannas and his Guards
DELETE FROM `creature_template_spells` WHERE `entry` = 20163;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2016301;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2016301, 'Netherstorm - Ambassador Solannas', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` = 2016301;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2016301, 1, 11831, 0, -1, 103, 0, 100, 0, 9000, 9000, 9000, 15000, 'Ambassador Solannas - Frost Nova - on AOE eligible target exists - not passed to cast'),
(2016301, 2, 9053, 2, -1, 1, 0, 100, 0, 0, 4800, 3400, 4800, 'Ambassador Solannas - Fireball - on current');

UPDATE `creature_template` SET `SpellList` = 2016301 WHERE `entry` = 20163;


DELETE FROM `creature_template_spells` WHERE `entry` = 20199;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2019901;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2019901, 'Netherstorm - Ambassador Honor Guard', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2019901;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2019901, 1, 15284, 0, -1, 1, 0, 100, 0, 4000, 8000, 8000, 12000, 'Ambassador Honor Guard - Cleave - on current');

UPDATE `creature_template` SET `SpellList` = 2019901 WHERE `entry` = 20199;
