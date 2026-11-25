-- Akubar the Seer grouping, spawns and 

-- select guid from creature where id = 8298;
-- 3930, 98534, 98535, 98536, 98537,  98538, 98539, 98540

-- Spawns based on TBC Anniversary sniffs
-- Note: These are not the exact spawn positions. They were estimated by observing
-- each creature's random movement for over 10 minutes and taking the midpoint.
DELETE FROM creature WHERE guid IN (3930, 98534, 98535, 98536, 98537,  98538, 98539, 98540);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(98534, 8298, 0, 1, -11657.114, -2801.4668, 4.859172, 6.15384, 18000, 28800, 25, 1),
(98535, 8298, 0, 1, -11568.7656, -3238.13842, 6.0302, 4.9914, 18000, 28800, 20, 1),
(98536, 8298, 0, 1, -11743.344, -2969.888, 8.540402, 1.03304, 18000, 28800, 25, 1);

-- Remove Pooling
DELETE FROM pool_template WHERE Entry = 1031;
DELETE FROM pool_creature_template WHERE id = 8298;

-- Spawngroup already exist in Database - Id 261 
UPDATE spawn_group SET Name = "Blasted Lands - Akubar the Seer (1)" WHERE Id = 261;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`, `Chance`) VALUES
(261, 98534, 0, 0),
(261, 98535, 0, 0),
(261, 98536, 0, 0);

-- AI
DELETE FROM `creature_template_spells` WHERE `entry` = 8298;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (829801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(829801, 'Blasted Lands - Akubar the Seer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (829801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(829801, 1, 11436, 0, -1, 1, 0, 100, 0, 10000, 15000, 25700, 31300, 'Akubar the Seer - Slow - current'),
(829801, 2, 20831, 0, -1, 1, 0, 100, 0, 0, 10000, 11800, 16800, 'Akubar the Seer - Chain Lightning - current'),
(829801, 3, 20824, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Akubar the Seer - Lightning Bolt - current');


UPDATE `creature_template` SET `SpellList` = 829801 WHERE `entry` = 8298;