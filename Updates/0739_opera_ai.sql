-- Opera AI
DELETE FROM `creature_template_spells` WHERE `entry` IN (1752101, 1753301, 1753401, 1753501, 1754701, 1754601, 1754301, 1816801);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1752101, 1753301, 1753401, 1753501, 1754701, 1754601, 1754301, 1816801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1752101, 'Karazhan - The Big Bad Wolf', 0, 0),
(1753301, 'Karazhan - Romulo', 0, 0),
(1753401, 'Karazhan - Julianne', 0, 0),
(1753501, 'Karazhan - Dorothee', 0, 0),
(1754701, 'Karazhan - Tinhead', 0, 0),
(1754601, 'Karazhan - Roar', 0, 0),
(1754301, 'Karazhan - Strawman', 0, 0),
(1816801, 'Karazhan - The Crone', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1752101, 1753301, 1753401, 1753501, 1754701, 1754601, 1754301, 1816801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- The Big Bad Wolf
(1752101, 1, 30769, 0, -1, 2, 0, 100, 0, 2000, 4000, 30000, 30000, 'The Big Bad Wolf - Pick Red Riding Hood - self'),
(1752101, 2, 30752, 0, -1, 17521, 0, 100, 0, 5000, 25000, 20000, 50000, 'The Big Bad Wolf - Terrifying Howl'),
(1752101, 3, 30761, 0, -1, 2, 0, 100, 0, 5000, 25000, 20000, 40000, 'The Big Bad Wolf - Wide Swipe - self'),
-- Romulo
(1753301, 1, 30815, 0, -1, 2, 0, 100, 0, 15000, 30000, 30000, 45000, 'Romulo - Backward Lunge - self'),
(1753301, 2, 30841, 0, -1, 2, 0, 100, 0, 20000, 20000, 20000, 40000, 'Romulo - Daring - self'),
(1753301, 3, 30817, 0, -1, 1, 0, 100, 0, 25000, 25000, 15000, 25000, 'Romulo - Deadly Swathe - current'),
(1753301, 4, 30822, 0, -1, 1, 0, 100, 0, 10000, 10000, 10000, 20000, 'Romulo - Poisoned Thrust - current'),
-- Julianne
(1753401, 1, 30890, 0, -1, 100, 0, 100, 0, 30000, 30000, 30000, 45000, 'Julianne - Blinding Passion - random player'),
(1753401, 2, 30887, 0, -1, 2, 0, 100, 0, 15000, 15000, 15000, 45000, 'Julianne - Devotion - self'),
(1753401, 3, 30889, 0, -1, 100, 0, 100, 0, 5000, 5000, 5000, 30000, 'Julianne - Powerful Attraction - random player'),
(1753401, 4, 30878, 0, -1, 100, 0, 100, 0, 25000, 25000, 45000, 60000, 'Julianne - Powerful Attraction - friendly missing health'), -- ToDo at what % does she use it - include self? 
-- Dorothee
(1753501, 1, 31013, 0, -1, 17535, 0, 100, 0, 12000, 15000, 18000, 30000, 'Dorothee - Frightened Scream - nearest player'),
(1753501, 2, 31012, 0, -1, 100, 0, 100, 0, 0, 0, 0, 0, 'Dorothee - Water Bolt - random player'),
-- Tinhead
(1754701, 1, 31043, 0, -1, 1, 0, 100, 0, 5000, 5000, 5000, 5000, 'Tinhead - Cleave - current'),
(1754701, 2, 31086, 0, -1, 2, 0, 100, 0, 6000, 6000, 6000, 6000, 'Tinhead - Rust - self'),
-- Roar
(1754601, 1, 31041, 0, -1, 1, 0, 100, 0, 5000, 5000, 5000, 8000, 'Roar - Mangle - current'),
(1754601, 2, 31042, 0, -1, 1, 0, 100, 0, 10000, 10000, 10000, 15000, 'Roar - Shred Armor - current'),
(1754601, 3, 31013, 0, -1, 1, 0, 100, 0, 15000, 15000, 20000, 30000, 'Roar - Frightend Shout - current'),
-- Strawman
(1754301, 1, 31046, 0, -1, 1, 0, 100, 0, 5000, 5000, 15000, 15000, 'Strawman - Brain Bash - current'),
(1754301, 2, 31069, 0, -1, 100, 0, 100, 0, 7000, 7000, 20000, 20000, 'Strawman - Brain Wipe - random'),
-- The Crone
(1816801, 1, 32337, 0, -1, 100, 0, 100, 0, 10000, 10000, 15000, 15000, 'The Crone - Chain Lightning - random');

UPDATE `creature_template` SET `SpellList` = 1752101 WHERE `entry` = 17521;
UPDATE `creature_template` SET `SpellList` = 1753301 WHERE `entry` = 17533;
UPDATE `creature_template` SET `SpellList` = 1753401 WHERE `entry` = 17534;
UPDATE `creature_template` SET `SpellList` = 1753501 WHERE `entry` = 17535;
UPDATE `creature_template` SET `SpellList` = 1754701 WHERE `entry` = 17547;
UPDATE `creature_template` SET `SpellList` = 1754601 WHERE `entry` = 17546;
UPDATE `creature_template` SET `SpellList` = 1754301 WHERE `entry` = 17543;
UPDATE `creature_template` SET `SpellList` = 1816801 WHERE `entry` = 18168;

DELETE FROM creature_spell_targeting WHERE Id IN (17521, 17535);
INSERT INTO `creature_spell_targeting` (`Id`, `Type`, `Param1`, `Param2`, `Param3`, `Comments`) VALUES 
('17521', '1', '3', '0', '8194', 'The Big Bad Wolf - Terrifying Howl - ATTACKING_TARGET_NEAREST_BY - SELECT_FLAG_PLAYER/SELECT_FLAG_USE_EFFECT_RADIUS'),
('17535', '1', '3', '0', '8194', 'Dorothee - Frightened Scream - ATTACKING_TARGET_NEAREST_BY - SELECT_FLAG_PLAYER/SELECT_FLAG_USE_EFFECT_RADIUS');

-- Fix broadcast_text
UPDATE broadcast_text SET ChatTypeID = 2 WHERE Id = 14361;
UPDATE broadcast_text SET ChatTypeID = 1 WHERE Id IN (15068, 15066, 15069, 15067, 19276, 15133, 15131, 19277, 15135, 15136, 19278, 15155, 15156, 15050, 15332, 15051, 15052, 15070, 15072, 15074, 15073, 15071, 15075, 15078, 15077, 15076);
