-- -----------------
-- Old Hillsbrad Foothills - SpellLists
-- -----------------

-- Durnholde Sentry - 17819 - 20527
DELETE FROM `creature_template_spells` WHERE `entry` IN (17819, 20527);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1781901, 2052701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1781901, 'Old Hillsbrad Foothills - Durnholde Sentry - Normal', 0, 0),
(2052701, 'Old Hillsbrad Foothills - Durnholde Sentry - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1781901, 2052701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1781901, 1, 14895, 0, -1, 1, 0, 100, 0, 4000, 12000, 20000, 28000, 'Durnholde Sentry - Overpower - current'),
(1781901, 2, 15496, 0, -1, 1, 0, 100, 0, 6000, 16000, 13000, 25000, 'Durnholde Sentry - Cleave - current'),
(1781901, 3, 9080, 0, -1, 1, 0, 100, 0, 9000, 18000, 10000, 20000, 'Durnholde Sentry - Harmstring - current'),
-- Heroic
(2052701, 1, 14895, 0, -1, 1, 0, 100, 0, 4000, 12000, 20000, 28000, 'Durnholde Sentry - Overpower - current'),
(2052701, 2, 15496, 0, -1, 1, 0, 100, 0, 6000, 16000, 13000, 25000, 'Durnholde Sentry - Cleave - current'),
(2052701, 3, 9080, 0, -1, 1, 0, 100, 0, 9000, 18000, 10000, 20000, 'Durnholde Sentry - Harmstring - current');

UPDATE `creature_template` SET `SpellList` = 1781901 WHERE `entry` = 17819;
UPDATE `creature_template` SET `SpellList` = 2052701 WHERE `entry` = 20527;
