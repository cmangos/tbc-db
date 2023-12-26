-- Shadowmoon Darkcaster 17694
DELETE FROM `creature_template_spells` WHERE `entry` IN (17694, 20577);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1769401, 2057701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1769401, 'Shattered Halls - Shadowmoon Darkcaster - Normal', 0, 90),
(2057701, 'Shattered Halls - Shadowmoon Darkcaster - Heroic', 0, 90);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1769401, 2057701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1769401, 1, 12542, 0, -1, 101, 0, 100, 0, 14000, 24000, 14000, 24000, 'Shadowmoon Darkcaster - Fear - random player non tank'),
(1769401, 2, 11990, 0, -1, 100, 0, 100, 0, 6000, 15000, 15000, 22000, 'Shadowmoon Darkcaster - Rain of Fire - random player'),
(1769401, 3, 12471, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Shadowmoon Darkcaster - Shadow Bolt - current'),
(2057701, 1, 12542, 0, -1, 101, 0, 100, 0, 14000, 24000, 14000, 24000, 'Shadowmoon Darkcaster - Fear - random player non tank'),
(2057701, 2, 33508, 0, -1, 100, 0, 100, 0, 6000, 15000, 15000, 22000, 'Shadowmoon Darkcaster - Rain of Fire - random player'),
(2057701, 3, 15232, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Shadowmoon Darkcaster - Shadow Bolt - current');

UPDATE `creature_template` SET `SpellList` = 1769401 WHERE `entry` = 17694;
UPDATE `creature_template` SET `SpellList` = 2057701 WHERE `entry` = 20577;

-- Shattered Hand Sharpshooter 16704
DELETE FROM `creature_template_spells` WHERE `entry` IN (16704, 20594);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1670401, 2059401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1670401, 'Shattered Halls - Shattered Hand Sharpshooter - Normal', 0, 80),
(2059401, 'Shattered Halls - Shattered Hand Sharpshooter - Heroic', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1670401, 2059401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1670401, 1, 23601, 0, -1, 100, 0, 100, 0, 13350, 21000, 20700, 39250, 'Shattered Hand Sharpshooter - Scatter Shot - random'),
(1670401, 2, 30481, 0, -1, 100, 0, 100, 0, 14000, 22000, 17000, 28000, 'Shattered Hand Sharpshooter - Incendiary Shot - random'),
(1670401, 3, 15620, 2, -1, 1, 0, 100, 0, 0, 0, 2300, 5000, 'Shattered Hand Sharpshooter - Shoot - current'),
(2059401, 1, 23601, 0, -1, 100, 0, 100, 0, 13350, 21000, 20700, 39250, 'Shattered Hand Sharpshooter - Scatter Shot - random'),
(2059401, 2, 35945, 0, -1, 100, 0, 100, 0, 14000, 22000, 17000, 28000, 'Shattered Hand Sharpshooter - Incendiary Shot - random'),
(2059401, 3, 37551, 0, -1, 105, 0, 100, 0, 12000, 19000, 12000, 19000, 'Shattered Hand Sharpshooter - Viper Sting - random mana user'),
(2059401, 4, 22907, 2, -1, 1, 0, 100, 0, 0, 0, 2300, 5000, 'Shattered Hand Sharpshooter - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 1670401 WHERE `entry` = 16704;
UPDATE `creature_template` SET `SpellList` = 2059401 WHERE `entry` = 20594;

-- Shattered Hand Executioner 17301
DELETE FROM `creature_template_spells` WHERE `entry` IN (17301, 20585);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1730101, 2058501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1730101, 'Shattered Halls - Shattered Hand Executioner - Normal', 0, 0),
(2058501, 'Shattered Halls - Shattered Hand Executioner - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1730101, 2058501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1730101, 1, 15284, 0, -1, 1, 0, 100, 0, 5000, 7000, 5000, 7000, 'Shattered Hand Executioner - Cleave - current'),
(1730101, 2, 11876, 0, -1, 2, 0, 100, 0, 7000, 11000, 12000, 15000, 'Shattered Hand Executioner - War Stomp - self'),
(2058501, 1, 15284, 0, -1, 1, 0, 100, 0, 5000, 7000, 5000, 7000, 'Shattered Hand Executioner - Cleave - current'),
(2058501, 2, 11876, 0, -1, 2, 0, 100, 0, 7000, 11000, 12000, 15000, 'Shattered Hand Executioner - War Stomp - self');

UPDATE `creature_template` SET `SpellList` = 1730101 WHERE `entry` = 17301;
UPDATE `creature_template` SET `SpellList` = 2058501 WHERE `entry` = 20585;

-- Creeping Ooze 17356
DELETE FROM `creature_template_spells` WHERE `entry` IN (17356, 20565);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1735601, 2056501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1735601, 'Shattered Halls - Creeping Ooze - Normal', 0, 0),
(2056501, 'Shattered Halls - Creeping Ooze - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1735601, 2056501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1735601, 1, 30494, 0, -1, 2, 0, 100, 0, 3000, 6000, 3800, 6500, 'Creeping Ooze - Sticky Ooze - self'),
(2056501, 1, 30494, 0, -1, 2, 0, 100, 0, 3000, 6000, 3800, 6500, 'Creeping Ooze - Sticky Ooze - self');

UPDATE `creature_template` SET `SpellList` = 1735601 WHERE `entry` = 17356;
UPDATE `creature_template` SET `SpellList` = 2056501 WHERE `entry` = 20565;


-- Creeping Oozeling 17357
DELETE FROM `creature_template_spells` WHERE `entry` IN (17357, 20566);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1735701, 2056601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1735701, 'Shattered Halls - Creeping Oozeling - Normal', 0, 0),
(2056601, 'Shattered Halls - Creeping Oozeling - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1735701, 2056601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1735701, 1, 30494, 0, -1, 2, 0, 100, 0, 3000, 6000, 3800, 6500, 'Creeping Oozeling - Sticky Ooze - self'),
(2056601, 1, 30494, 0, -1, 2, 0, 100, 0, 3000, 6000, 3800, 6500, 'Creeping Oozeling - Sticky Ooze - self');

UPDATE `creature_template` SET `SpellList` = 1735701 WHERE `entry` = 17357;
UPDATE `creature_template` SET `SpellList` = 2056601 WHERE `entry` = 20566;

-- Shattered Hand Zealot 17462
DELETE FROM `creature_template_spells` WHERE `entry` IN (17462, 20595);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1746201, 2059501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1746201, 'Shattered Halls - Shattered Hand Zealot - Normal', 0, 0),
(2059501, 'Shattered Halls - Shattered Hand Zealot - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1746201, 2059501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1746201, 1, 30989, 0, -1, 1, 0, 100, 0, 3000, 6000, 10000, 13000, 'Shattered Hand Zealot - Hamstring - current'),
(2059501, 1, 30989, 0, -1, 1, 0, 100, 0, 3000, 6000, 10000, 13000, 'Shattered Hand Zealot - Hamstring - current');

UPDATE `creature_template` SET `SpellList` = 1746201 WHERE `entry` = 17462;
UPDATE `creature_template` SET `SpellList` = 2059501 WHERE `entry` = 20595;


-- Shattered Hand Archer 17427
DELETE FROM `creature_template_spells` WHERE `entry` IN (17427, 20579);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1742701, 2057901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1742701, 'Shattered Halls - Shattered Hand Archer - Normal', 0, 80),
(2057901, 'Shattered Halls - Shattered Hand Archer - Heroic', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1742701, 2057901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1742701, 1, 30990, 0, -1, 1, 0, 100, 0, 8000, 18000, 18000, 25000, 'Shattered Hand Archer - Multi Shoot - current'),
(1742701, 2, 16100, 2, -1, 1, 0, 100, 0, 0, 0, 2300, 5000, 'Shattered Hand Archer - Shoot - current'),
(2057901, 1, 30990, 0, -1, 1, 0, 100, 0, 8000, 18000, 18000, 25000, 'Shattered Hand Archer - Multi Shoot - current'),
(2057901, 2, 22907, 2, -1, 1, 0, 100, 0, 0, 0, 2300, 5000, 'Shattered Hand Archer - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 1742701 WHERE `entry` = 17427;
UPDATE `creature_template` SET `SpellList` = 2057901 WHERE `entry` = 20579;

-- Heathen Guard 17621
DELETE FROM `creature_template_spells` WHERE `entry` IN (17621, 20569);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1762101, 2056901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1762101, 'Shattered Halls - Shattered Hand Archer - Normal', 0, 0),
(2056901, 'Shattered Halls - Shattered Hand Archer - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1762101, 2056901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1762101, 1, 30474, 0, -1, 1, 0, 100, 0, 6000, 10000, 10000, 14000, 'Heathen Guard - Bloodthirst - current'),
(2056901, 2, 30474, 0, -1, 1, 0, 100, 0, 6000, 10000, 10000, 14000, 'Heathen Guard - Bloodthirst - current');

UPDATE `creature_template` SET `SpellList` = 1762101 WHERE `entry` = 17621;
UPDATE `creature_template` SET `SpellList` = 2056901 WHERE `entry` = 20569;

-- Sharpshooter Guard 17622
DELETE FROM `creature_template_spells` WHERE `entry` IN (17622, 20578);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1762201, 2057801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1762201, 'Shattered Halls - Sharpshooter Guard - Normal', 0, 80),
(2057801, 'Shattered Halls - Sharpshooter Guard - Heroic', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1762201, 2057801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1762201, 1, 23601, 0, -1, 100, 0, 100, 0, 13350, 21000, 20700, 39250, 'Sharpshooter Guard - Scatter Shot - random'),
(1762201, 2, 30481, 0, -1, 100, 0, 100, 0, 14000, 22000, 17000, 28000, 'Sharpshooter Guard - Incendiary Shot - random'),
(1762201, 3, 15620, 2, -1, 1, 0, 100, 0, 0, 0, 2300, 5000, 'Sharpshooter Guard - Shoot - current'),
(2057801, 1, 23601, 0, -1, 100, 0, 100, 0, 13350, 21000, 20700, 39250, 'Sharpshooter Guard - Scatter Shot - random'),
(2057801, 2, 35945, 0, -1, 100, 0, 100, 0, 14000, 22000, 17000, 28000, 'Sharpshooter Guard - Incendiary Shot - random'),
(2057801, 3, 37551, 0, -1, 105, 0, 100, 0, 12000, 19000, 12000, 19000, 'Sharpshooter Guard - Viper Sting - random mana user'),
(2057801, 4, 22907, 2, -1, 1, 0, 100, 0, 0, 0, 2300, 5000, 'Sharpshooter Guard - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 1762201 WHERE `entry` = 17622;
UPDATE `creature_template` SET `SpellList` = 2057801 WHERE `entry` = 20578;

-- Shattered Hand Reaver 17623
DELETE FROM `creature_template_spells` WHERE `entry` IN (17623, 20575);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1762301, 2057501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1762301, 'Shattered Halls - Shattered Hand Reaver - Normal', 0, 0),
(2057501, 'Shattered Halls - Shattered Hand Reaver - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1762301, 2057501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1762301, 1, 15496, 0, -1, 1, 0, 100, 0, 6000, 9000, 6000, 9000, 'Shattered Hand Reaver - Cleave - current'),
(1762301, 2, 30471, 0, -1, 1, 0, 100, 0, 7000, 11000, 11000, 15000, 'Shattered Hand Reaver - Uppercut - current'),
(2057501, 1, 15496, 0, -1, 1, 0, 100, 0, 6000, 9000, 6000, 9000, 'Shattered Hand Reaver - Cleave - current'),
(2057501, 2, 30471, 0, -1, 1, 0, 100, 0, 7000, 11000, 11000, 15000, 'Shattered Hand Reaver - Uppercut - current');

UPDATE `creature_template` SET `SpellList` = 1762301 WHERE `entry` = 17623;
UPDATE `creature_template` SET `SpellList` = 2057501 WHERE `entry` = 20575;

-- Rabid Warhound 17669
DELETE FROM `creature_template_spells` WHERE `entry` IN (17669, 20574);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1766901, 2057401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1766901, 'Shattered Halls - Rabid Warhound - Normal', 0, 0),
(2057401, 'Shattered Halls - Rabid Warhound - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1766901, 2057401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1766901, 1, 30639, 0, -1, 1, 0, 100, 0, 4000, 6000, 4000, 6000, 'Rabid Warhound - Carnivorous Bite - current'),
(1766901, 2, 30636, 0, -1, 1, 0, 100, 0, 2000, 6000, 12000, 16000, 'Rabid Warhound - Furious Howl - current'),
(2057401, 1, 30639, 0, -1, 1, 0, 100, 0, 4000, 6000, 4000, 6000, 'Rabid Warhound - Carnivorous Bite - current'),
(2057401, 2, 35942, 0, -1, 1, 0, 100, 0, 2000, 4000, 10000, 12000, 'Rabid Warhound - Furious Howl - current');

UPDATE `creature_template` SET `SpellList` = 1766901 WHERE `entry` = 17669;
UPDATE `creature_template` SET `SpellList` = 2057401 WHERE `entry` = 20574;

-- Shattered Hand Houndmaster 17670
DELETE FROM `creature_template_spells` WHERE `entry` IN (17670, 20588);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1767001, 2058801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1767001, 'Shattered Halls - Shattered Hand Houndmaster - Normal', 0, 80),
(2058801, 'Shattered Halls - Shattered Hand Houndmaster - Heroic', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1767001, 2058801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1767001, 1, 34100, 0, -1, 100, 0, 100, 0, 16000, 27000, 60000, 70000, 'Shattered Hand Houndmaster - Volley - random'),
(1767001, 2, 30932, 0, -1, 100, 0, 100, 0, 8000, 16000, 21000, 28000, 'Shattered Hand Houndmaster - Impaling Bolt - random'),
(1767001, 3, 15620, 2, -1, 1, 0, 100, 0, 0, 0, 2300, 5000, 'Shattered Hand Houndmaster - Shoot - current'),
(2058801, 1, 35950, 0, -1, 100, 0, 100, 0, 16000, 27000, 60000, 70000, 'Shattered Hand Houndmaster - Volley - random'),
(2058801, 2, 40248, 0, -1, 100, 0, 100, 0, 8000, 16000, 21000, 28000, 'Shattered Hand Houndmaster - Impaling Bolt - random'),
(2058801, 3, 37437, 0, -1, 4, 0, 100, 0, 0, 7000, 7000, 14000, 'Shattered Hand Houndmaster - ClearAllDebuffs - eligible friendly dispel not self'),
(2058801, 4, 22907, 2, -1, 1, 0, 100, 0, 0, 0, 2300, 5000, 'Shattered Hand Houndmaster - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 1767001 WHERE `entry` = 17670;
UPDATE `creature_template` SET `SpellList` = 2058801 WHERE `entry` = 20588;


