-- -----------
-- Gruul's Lair
-- Wild Fel Stalkers 
-- -----------

-- Wild Fel Stalkers 

DELETE FROM `creature_template_spells` WHERE `entry` = 18847;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1884701, 1884702);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1884701, 'Gruul\'s Lair - Wild Fel Stalkers', 0, 0),
(1884702, 'Gruul\'s Lair - Wild Fel Stalkers - Charmed', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1884701, 1884702);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1884701, 1, 33086, 0, -1, 1, 0, 100, 0, 4000, 8000, 5000, 12000, 'Wild Fel Stalkers  - Wild Bite - current'),
(1884702, 1, 33086, 0, -1, 1, 0, 100, 0, 5000, 5000, 5000, 5000, 'Wild Fel Stalkers  - Wild Bite - current'),
(1884702, 2, 33091, 0, -1, 2, 0, 100, 0, 10000, 10000, 10000, 10000, 'Wild Fel Stalkers  - Determination - self'),
(1884702, 3, 33096, 0, -1, 1, 0, 100, 0, 20000, 20000, 20000, 20000, 'Wild Fel Stalkers  - Threaten - current');


UPDATE creature_template SET `SpellList` = 1884701, CharmedSpellList = 1884702 WHERE entry = 18847;