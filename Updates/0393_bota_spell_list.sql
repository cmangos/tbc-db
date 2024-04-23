-- Bloodwarder Protector 17993
DELETE FROM `creature_template_spells` WHERE `entry` IN (17398, 18612);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1799301, 2154801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1799301, 'Botanica - Bloodwarder Protector - Normal', 0, 0),
(2154801, 'Botanica - Bloodwarder Protector - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1799301, 2154801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1799301, 1, 34784, 0, -1, 203, 0, 100, 0, 6000, 15000, 20000, 30000, 'Bloodwarder Protector - Intervene - friendly missing 10%'),
(1799301, 2, 29765, 0, -1, 1, 0, 100, 0, 6000, 14000, 7000, 16000, 'Bloodwarder Protector - Crystal Strike - current'),
(2154801, 1, 34784, 0, -1, 203, 0, 100, 0, 6000, 15000, 20000, 30000, 'Bloodwarder Protector - Intervene - friendly missing 10%'),
(2154801, 2, 29765, 0, -1, 1, 0, 100, 0, 6000, 14000, 7000, 16000, 'Bloodwarder Protector - Crystal Strike - current');

UPDATE `creature_template` SET `SpellList` = 1799301 WHERE `entry` = 17993;
UPDATE `creature_template` SET `SpellList` = 2154801 WHERE `entry` = 21548;


-- Bloodwarder Falconer 17994
DELETE FROM `creature_template_spells` WHERE `entry` IN (17994, 21545);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1799401, 2154501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1799401, 'Botanica - Bloodwarder Falconer - Normal', 0, 0),
(2154501, 'Botanica - Bloodwarder Falconer - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1799401, 2154501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1799401, 1, 34852, 0, -1, 100, 0, 100, 0, 8000, 18000, 8000, 18000, 'Bloodwarder Falconer - Call of the Falcon - random player'),
(1799401, 2, 32908, 0, -1, 1, 0, 100, 0, 6000, 15000, 16000, 27000, 'Bloodwarder Falconer - Wing Clip - current'),
(2154501, 1, 34852, 0, -1, 100, 0, 100, 0, 8000, 18000, 8000, 18000, 'Bloodwarder Falconer - Call of the Falcon - random player'),
(2154501, 2, 32908, 0, -1, 1, 0, 100, 0, 6000, 15000, 16000, 27000, 'Bloodwarder Falconer - Wing Clip - current');

UPDATE `creature_template` SET `SpellList` = 1799401 WHERE `entry` = 17994;
UPDATE `creature_template` SET `SpellList` = 2154501 WHERE `entry` = 21545;


-- Bloodfalcon 18155
DELETE FROM `creature_template_spells` WHERE `entry` IN (18155, 21544);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1815501, 2154401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1815501, 'Botanica - Bloodfalcon - Normal', 0, 0),
(2154401, 'Botanica - Bloodfalcon - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1815501, 2154401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1815501, 1, 34856, 0, -1, 1, 0, 100, 0, 6000, 14000, 11000, 19000, 'Bloodfalcon - Swoop - current'),
(1815501, 2, 18144, 0, -1, 1, 0, 100, 0, 14000, 24000, 17000, 27000, 'Bloodfalcon - Bloodburn - current'),
(2154401, 1, 34856, 0, -1, 1, 0, 100, 0, 6000, 14000, 11000, 19000, 'Bloodfalcon - Swoop - current'),
(2154401, 2, 18144, 0, -1, 1, 0, 100, 0, 14000, 24000, 17000, 27000, 'Bloodfalcon - Bloodburn - current');

UPDATE `creature_template` SET `SpellList` = 1815501 WHERE `entry` = 18155;
UPDATE `creature_template` SET `SpellList` = 2154401 WHERE `entry` = 21544;

-- Tempest Forge Peacekeeper 18405
DELETE FROM `creature_template_spells` WHERE `entry` IN (18405, 21544);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1840501, 2157801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1840501, 'Botanica - Tempest Forge Peacekeeper - Normal', 0, 0),
(2157801, 'Botanica - Tempest Forge Peacekeeper - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1840501, 2157801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1840501, 1, 34785, 0, -1, 1, 0, 100, 0, 9000, 18000, 12000, 21000, 'Tempest Forge Peacekeeper - Arcane Volley - current'),
(1840501, 2, 34791, 0, -1, 2, 0, 100, 0, 8000, 17000, 11000, 20000, 'Tempest Forge Peacekeeper - Arcane Explosion - self'),
(1840501, 3, 34793, 0, -1, 1, 0, 100, 0, 3000, 9000, 16000, 26000, 'Tempest Forge Peacekeeper - Arcane Blast - current'),
(2157801, 1, 34785, 0, -1, 1, 0, 100, 0, 9000, 18000, 12000, 21000, 'Tempest Forge Peacekeeper - Arcane Volley - current'),
(2157801, 2, 34791, 0, -1, 2, 0, 100, 0, 8000, 17000, 11000, 20000, 'Tempest Forge Peacekeeper - Arcane Explosion - self'),
(2157801, 3, 34793, 0, -1, 1, 0, 100, 0, 3000, 9000, 16000, 26000, 'Tempest Forge Peacekeeper - Arcane Blast - current');

UPDATE `creature_template` SET `SpellList` = 1840501 WHERE `entry` = 18405;
UPDATE `creature_template` SET `SpellList` = 2157801 WHERE `entry` = 21578;

-- Bloodwarder Greenkeeper 18419
DELETE FROM `creature_template_spells` WHERE `entry` IN (18419, 21546);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1841901, 2154601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1841901, 'Botanica - Bloodwarder Greenkeeper - Normal', 0, 0),
(2154601, 'Botanica - Bloodwarder Greenkeeper - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1841901, 2154601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1841901, 1, 34800, 0, -1, 101, 0, 100, 0, 12000, 18000, 17000, 21000, 'Bloodwarder Greenkeeper - Impending Coma - random not tank'),
(1841901, 2, 34797, 0, -1, 1, 0, 100, 0, 9600, 16900, 7200, 20500, 'Bloodwarder Greenkeeper - Nature Shock - current'),
(1841901, 3, 34798, 0, -1, 1, 0, 100, 0, 4800, 14500, 6100, 18200, 'Bloodwarder Greenkeeper - Greenkeeper''s Fury - current'),
(2154601, 1, 34800, 0, -1, 101, 0, 100, 0, 12000, 18000, 17000, 21000, 'Bloodwarder Greenkeeper - Impending Coma - random not tank'),
(2154601, 2, 39120, 0, -1, 1, 0, 100, 0, 9600, 16900, 7200, 20500, 'Bloodwarder Greenkeeper - Nature Shock - current'),
(2154601, 3, 39121, 0, -1, 1, 0, 100, 0, 4800, 14500, 6100, 18200, 'Bloodwarder Greenkeeper - Greenkeeper''s Fury - current');

UPDATE `creature_template` SET `SpellList` = 1841901 WHERE `entry` = 18419;
UPDATE `creature_template` SET `SpellList` = 2154601 WHERE `entry` = 21546;


-- Bloodwarder Mender 19633
DELETE FROM `creature_template_spells` WHERE `entry` IN (19633, 21547);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1963301, 2154701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1963301, 'Botanica - Bloodwarder Mender - Normal', 90, 0),
(2154701, 'Botanica - Bloodwarder Mender - Heroic', 90, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1963301, 2154701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1963301, 1, 35096, 0, -1, 201, 0, 100, 0, 5000, 10000, 17000, 21000, 'Bloodwarder Mender - Greater Heal - friendly under 50% include self'),
(1963301, 2, 34809, 0, -1, 5, 0, 100, 0, 9600, 16900, 14500, 22900, 'Bloodwarder Mender - Holy Fury - friendly missing buff'),
(1963301, 3, 17194, 0, -1, 1, 0, 100, 0, 2500, 3500, 2500, 3500, 'Bloodwarder Mender - Mind Blast - current'),
(2154701, 1, 35096, 0, -1, 201, 0, 100, 0, 5000, 10000, 17000, 21000, 'Bloodwarder Mender - Greater Heal - friendly under 50% include self'),
(2154701, 2, 34809, 0, -1, 5, 0, 100, 0, 9600, 16900, 14500, 22900, 'Bloodwarder Mender - Holy Fury - friendly missing buff'),
(2154701, 3, 17287, 0, -1, 1, 0, 100, 0, 2500, 3500, 2500, 3500, 'Bloodwarder Mender - Mind Blast - current');


UPDATE `creature_template` SET `SpellList` = 1963301 WHERE `entry` = 19633;
UPDATE `creature_template` SET `SpellList` = 2154701 WHERE `entry` = 21547;


-- Bloodwarder Steward 18404
DELETE FROM `creature_template_spells` WHERE `entry` IN (18404, 21549);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1840401, 2154901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1840401, 'Botanica - Bloodwarder Steward - Normal', 90, 0),
(2154901, 'Botanica - Bloodwarder Steward - Heroic', 90, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1840401, 2154901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1840401, 1, 34821, 0, -1, 0, 0, 100, 0, 11000, 18000, 17000, 25000, 'Bloodwarder Steward - Arcane Flurry - none'),
(2154901, 1, 34821, 0, -1, 0, 0, 100, 0, 11000, 18000, 17000, 25000, 'Bloodwarder Steward - Arcane Flurry - none');


UPDATE `creature_template` SET `SpellList` = 1840401 WHERE `entry` = 18404;
UPDATE `creature_template` SET `SpellList` = 2154901 WHERE `entry` = 21549;
