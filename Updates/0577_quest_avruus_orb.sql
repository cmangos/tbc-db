-- ----------------
-- Avruu's orb
-- ----------------


-- SpellList for Aeranas
DELETE FROM `creature_template_spells` WHERE `entry` = 17085;

DELETE FROM `creature_spell_list_entry` WHERE `Id`= 1708501;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1708501, 'Aeranas', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1708501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1708501, 1, 15535, 0, -1, 101, 0, 100, 0, 6000, 14000, 10000, 18000, 'Aeranas - Enveloping Winds - random non tank'),
(1708501, 2, 12553, 0, -1, 1, 0, 100, 0, 4000, 10000, 6000, 12000, 'Aeranas - Shock - current');

UPDATE `creature_template` SET `SpellList` = 1708501 WHERE `entry` = 17085;
	
-- ---------------
-- TBC Version Only - !! PLS DONT PORT THIS PART TO WOTLK !!
-- In TBC Version of this Quest, Aeranas spawns instantly after using Haal'eshi Altar - 181606 without needing to use gossips
-- ---------------

-- ServerToClient: SMSG_QUERY_GAME_OBJECT_RESPONSE (0x2915) Length: 186 ConnIdx: 1 Time: 06/02/2021 14:45:40.562 Number: 450871
-- Entry: 181606
-- Type: 10 (Goober)
-- Display ID: 6964
-- [0] Name: Haal'eshi Altar
-- [0] Data: 1656
-- [3] Data: 3000
-- [22] Data: 90527

UPDATE gameobject_template SET type = 10 , data0 = 1656, data3 = 3000, data22 = 90527 WHERE entry = 181606; 

DELETE FROM dbscripts_on_go_template_use WHERE id = 181606;
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(181606, 0, 0, 31, 17085, 20, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest: Avruu\'s Orb - Haal\'eshi Altar - terminate script of Aeranas found and alive'),
(181606, 1, 1, 10, 17085, 180000, 0, 0, 0, 8, 0, 0, 0, 17085, -1323.9098, 4042.4487, 116.62573, 0.2967, 'Quest: Avruu\'s Orb - Haal\'eshi Altar - spawn for Aeranas');

-- Aeranas on spawn has NpcFlags 0 and only gets it after player brings him under 30% health - also should be unkillable
UPDATE creature_template SET NpcFlags = 0, StaticFlags1 = 10 WHERE entry = 17085;

-- OnSpawn start RelayScript
DELETE FROM creature_spawn_data_template WHERE entry = 17085;
INSERT INTO `creature_spawn_data_template` (`Entry`, `RelayId`, `Name`) VALUES 
(17085, 17085, 'Aeranas start RelayScript on Spawn');

DELETE FROM dbscripts_on_relay WHERE id IN (17085, 17086);
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- On spawn Script
(17085, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 13448, 0, 0, 0, 0, 0, 0, 0, 'Quest: Avruu\'s Orb - Aeranas - Say Text'), -- 14:46:46.797
(17085, 10000, 0, 22, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest: Avruu\'s Orb - Aeranas - Change faction'),
-- After player brings him under 30% health
(17086, 1000, 0, 3, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Quest: Avruu\'s Orb - Aeranas - Run to HomePosition'),
(17086, 5000, 0, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest: Avruu\'s Orb - Aeranas - Add QuestGiver Flags'),
(17086, 5000, 1, 0, 0, 0, 0, 0, 0, 0, 13447, 0, 0, 0, 0, 0, 0, 0, 'Quest: Avruu\'s Orb - Aeranas - Say Text');
