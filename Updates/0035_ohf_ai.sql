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

-- Durnholde Rifleman - 17820 - 20526
DELETE FROM `creature_template_spells` WHERE `entry` IN (17820, 20526);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1782001, 2052601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1782001, 'Old Hillsbrad Foothills - Durnholde Rifleman - Normal', 0, 80),
(2052601, 'Old Hillsbrad Foothills - Durnholde Rifleman - Heroic', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1782001, 2052601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1782001, 1, 23601, 0, -1, 1, 0, 100, 0, 10000, 22000, 20000, 32000, 'Durnholde Rifleman - Scatter Shot - current'),
(1782001, 2, 31942, 0, -1, 1, 0, 100, 0, 12000, 20000, 14000, 28000, 'Durnholde Rifleman - Multi-Shot - current'),
(1782001, 3, 16100, 2, -1, 1, 0, 100, 0, 0, 2000, 2000, 4000, 'Durnholde Rifleman - Shoot - current'),
-- Heroic
(2052601, 1, 23601, 0, -1, 1, 0, 100, 0, 10000, 22000, 20000, 32000, 'Durnholde Rifleman - Scatter Shot - current'),
(2052601, 2, 38383, 0, -1, 1, 0, 100, 0, 12000, 20000, 14000, 28000, 'Durnholde Rifleman - Multi-Shot - current'),
(2052601, 3, 22907, 2, -1, 1, 0, 100, 0, 0, 2000, 2000, 4000, 'Durnholde Rifleman - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 1782001 WHERE `entry` = 17820;
UPDATE `creature_template` SET `SpellList` = 2052601 WHERE `entry` = 20526;

-- Durnholde Warden - 17833 - 20530
-- ToDO retest if dispel magic also get casted on normal mode + recheck timers on anni
DELETE FROM `creature_template_spells` WHERE `entry` IN (17833, 20530);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1783301, 2053001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1783301, 'Old Hillsbrad Foothills - Durnholde Warden - Normal', 0, 0),
(2053001, 'Old Hillsbrad Foothills - Durnholde Warden - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1783301, 2053001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1783301, 1, 15586, 0, -1, 201, 0, 100, 0, 5000, 10000, 6000, 12000, 'Durnholde Warden - Heal - Friendly missing 50% including self'),
(1783301, 2, 22884, 0, -1, 0, 0, 100, 0, 18800, 33800, 30100, 48300, 'Durnholde Warden - Psychic Scream - none'),
(1783301, 3, 15654, 0, -1, 1, 0, 100, 0, 3800, 8400, 10800, 24100, 'Durnholde Warden - Shadow Word: Pain - Current'),
-- Heroic
(2053001, 1, 17201, 0, -1, 3, 0, 100, 0, 7000, 12000, 10000, 16000, 'Durnholde Warden - Dispel Magic on Friendly Dispel'),
(2053001, 2, 15586, 0, -1, 201, 0, 100, 0, 5000, 10000, 6000, 12000, 'Durnholde Warden - Heal - Friendly missing 50% including self'),
(2053001, 3, 22884, 0, -1, 0, 0, 100, 0, 18800, 33800, 30100, 48300, 'Durnholde Warden - Psychic Scream - none'),
(2053001, 4, 15654, 0, -1, 1, 0, 100, 0, 3800, 8400, 10800, 24100, 'Durnholde Warden - Shadow Word: Pain - Current');

UPDATE `creature_template` SET `SpellList` = 1783301 WHERE `entry` = 17833;
UPDATE `creature_template` SET `SpellList` = 2053001 WHERE `entry` = 20530;

-- Durnholde Veteran 17860 - 20529
DELETE FROM `creature_template_spells` WHERE `entry` IN (17860, 20529);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1786001, 2052901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1786001, 'Old Hillsbrad Foothills - Durnholde Veteran - Normal', 0, 0),
(2052901, 'Old Hillsbrad Foothills - Durnholde Veteran - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1786001, 2052901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1786001, 1, 15582, 0, -1, 1, 0, 100, 0, 5000, 10000, 10000, 12200, 'Durnholde Veteran - Backstab on Current'),
(1786001, 2, 15581, 0, -1, 1, 0, 100, 0, 3000, 10000, 3000, 10000, 'Durnholde Veteran - Sinister Strike on Current'),
-- Heroic
(2052901, 1, 15582, 0, -1, 1, 0, 100, 0, 5000, 10000, 10000, 12200, 'Durnholde Veteran - Backstab on Current'),
(2052901, 2, 15581, 0, -1, 1, 0, 100, 0, 3000, 10000, 3000, 10000, 'Durnholde Veteran - Sinister Strike on Current');

UPDATE `creature_template` SET `SpellList` = 1786001 WHERE `entry` = 17860;
UPDATE `creature_template` SET `SpellList` = 2052901 WHERE `entry` = 20529;
