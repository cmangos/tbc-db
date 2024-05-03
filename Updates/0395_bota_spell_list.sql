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
(1840401, 'Botanica - Bloodwarder Steward - Normal', 0, 0),
(2154901, 'Botanica - Bloodwarder Steward - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1840401, 2154901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1840401, 1, 34821, 0, -1, 0, 0, 100, 0, 11000, 18000, 17000, 25000, 'Bloodwarder Steward - Arcane Flurry - none'),
(2154901, 1, 34821, 0, -1, 0, 0, 100, 0, 11000, 18000, 17000, 25000, 'Bloodwarder Steward - Arcane Flurry - none');

UPDATE `creature_template` SET `SpellList` = 1840401 WHERE `entry` = 18404;
UPDATE `creature_template` SET `SpellList` = 2154901 WHERE `entry` = 21549;

-- Sunseeker Geomancer 18420
DELETE FROM `creature_template_spells` WHERE `entry` IN (18420, 21574);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1842001, 2157401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1842001, 'Botanica - Sunseeker Geomancer - Normal', 0, 0),
(2157401, 'Botanica - Sunseeker Geomancer - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1842001, 2157401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1842001, 1, 35124, 0, -1, 2, 0, 100, 0, 4000, 8000, 4000, 8000, 'Sunseeker Geomancer - Arcane Explosion - self'),
(2157401, 1, 35124, 0, -1, 2, 0, 100, 0, 4000, 8000, 4000, 8000, 'Sunseeker Geomancer - AArcane Explosion - self');

UPDATE `creature_template` SET `SpellList` = 1842001 WHERE `entry` = 18420;
UPDATE `creature_template` SET `SpellList` = 2157401 WHERE `entry` = 21574;


-- Sunseeker Researcher 18421
DELETE FROM `creature_template_spells` WHERE `entry` IN (18421, 21577);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1842101, 2157701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1842101, 'Botanica - Sunseeker Researcher - Normal', 0, 0),
(2157701, 'Botanica - Sunseeker Researcher - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1842101, 2157701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1842101, 1, 34353, 0, -1, 1, 0, 100, 0, 6000, 10000, 6000, 10000, 'Sunseeker Researcher - Frost Shock - current'),
(1842101, 2, 34355, 0, -1, 2, 0, 100, 0, 12000, 20000, 24000, 30000, 'Sunseeker Researcher - Poison Shield - self'),
(1842101, 3, 34352, 0, -1, 100, 0, 100, 0, 4000, 18000, 6000, 20000, 'Sunseeker Researcher - Mind Shock - random'),
(1842101, 4, 34354, 0, -1, 1, 0, 100, 0, 6000, 16000, 8000, 18000, 'Sunseeker Researcher - Flame Shock - current'),
(2157701, 1, 34353, 0, -1, 1, 0, 100, 0, 6000, 10000, 6000, 10000, 'Sunseeker Researcher - Frost Shock - current'),
(2157701, 2, 34355, 0, -1, 2, 0, 100, 0, 12000, 20000, 24000, 30000, 'Sunseeker Researcher - Poison Shield - self'),
(2157701, 3, 34352, 0, -1, 100, 0, 100, 0, 4000, 18000, 6000, 20000, 'Sunseeker Researcher - Mind Shock - random'),
(2157701, 4, 34354, 0, -1, 1, 0, 100, 0, 6000, 16000, 8000, 18000, 'Sunseeker Researcher - Flame Shock - current');


UPDATE `creature_template` SET `SpellList` = 1842101 WHERE `entry` = 18421;
UPDATE `creature_template` SET `SpellList` = 2157701 WHERE `entry` = 21577;


-- Sunseeker Botanist 18422
DELETE FROM `creature_template_spells` WHERE `entry` IN (18422, 21570);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1842201, 2157001);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1842201, 'Botanica - Sunseeker Botanist - Normal', 80, 0),
(2157001, 'Botanica - Sunseeker Botanist - Heroic', 80, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1842201, 2157001);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1842201, 1, 34350, 0, -1, 6, 0, 100, 0, 6000, 16000, 17000, 28000, 'Sunseeker Botanist - Nature''s Rage - friendly missing buff skip self'),
(1842201, 2, 34254, 0, -5530001, 0, 0, 100, 0, 2000, 12000, 25000, 35000, 'Sunseeker Botanist - Rejuvenate Plant - friendly missing 20% skip self'),
(1842201, 3, 27637, 0, -1, 206, 0, 100, 0, 4000, 14000, 22000, 32000, 'Sunseeker Botanist - Regrowth - friendly missing 25% including self'),
(2157001, 1, 34350, 0, -1, 6, 0, 100, 0, 6000, 16000, 17000, 28000, 'Sunseeker Botanist - Nature''s Rage - friendly missing buff skip self'),
(2157001, 2, 39126, 0, -5530001, 0, 0, 100, 0, 2000, 12000, 25000, 35000, 'Sunseeker Botanist - Rejuvenate Plant - friendly missing 20% skip self'),
(2157001, 3, 39125, 0, -1, 206, 0, 100, 0, 4000, 14000, 22000, 32000, 'Sunseeker Botanist - Regrowth - friendly missing 25% including self');

UPDATE `creature_template` SET `SpellList` = 1842201 WHERE `entry` = 18422;
UPDATE `creature_template` SET `SpellList` = 2157001 WHERE `entry` = 21570;

-- Sunseeker Botanist Rejuvenate Plant should only be casted on friendly Plants, using custom unit_condition combat condition for this
-- Unit Condition for Sunseeker Botanist
DELETE FROM `unit_condition` WHERE `Id` IN (-5530001);
INSERT INTO `unit_condition` (Id,Variable_0,Op_0,Value_0,Variable_1,Op_1,Value_1) VALUES
(-5530001,75,1,5530015,12,4,80);	-- STRING_ID EQUAL_TO 5320001, HEALTH_PERCENT, LESS_THAN_OR_EQUAL_TO 80

  -- Combat Condition for Sunseeker Botanist
DELETE FROM `combat_condition` WHERE `Id` IN (-5530001); 
INSERT INTO `combat_condition` (Id, FriendConditionID_0,FriendConditionOp_0,FriendConditionCount_0) VALUES
(-5530001,-5530001,6,1); -- STRING_ID EQUAL_TO 5530015

-- Assign string_id to all plants in botanica
UPDATE `creature_template` SET `StringId1` = 5530015 WHERE `entry` IN (19557, 19608, 19920, 19958, 19962, 19964, 19969, 21555, 21554, 21579, 21583, 21550, 21566, 21557);

-- Sunseeker Chemist 19486
DELETE FROM `creature_template_spells` WHERE `entry` IN (19486, 21572);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1948601, 2157201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1948601, 'Botanica - Sunseeker Chemist - Normal', 0, 0),
(2157201, 'Botanica - Sunseeker Chemist - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1948601, 2157201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1948601, 1, 34358, 0, -1, 100, 0, 100, 0, 8000, 16000, 18000, 28000, 'Sunseeker Chemist - Vial of Poison - random'),
(1948601, 2, 34359, 0, -1, 3, 0, 100, 0, 12000, 21000, 14000, 24000, 'Sunseeker Chemist - Fire Breath Potion - self'),
(2157201, 1, 39127, 0, -1, 100, 0, 100, 0, 8000, 16000, 18000, 28000, 'Sunseeker Chemist - Vial of Poison - random'),
(2157201, 2, 39128, 0, -1, 3, 0, 100, 0, 12000, 21000, 14000, 24000, 'Sunseeker Chemist - Fire Breath Potion - self');


UPDATE `creature_template` SET `SpellList` = 1948601 WHERE `entry` = 19486;
UPDATE `creature_template` SET `SpellList` = 2157201 WHERE `entry` = 21572;


-- Greater Frayer 19557
DELETE FROM `creature_template_spells` WHERE `entry` IN (19557, 21555);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1955701, 2155501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1955701, 'Botanica - Greater Frayer - Normal', 0, 0),
(2155501, 'Botanica - Greater Frayer - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1955701, 2155501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1955701, 1, 34644, 0, -1, 1, 0, 100, 0, 5000, 13000, 6000, 14000, 'Greater Frayer - Lash - current'),
(2155501, 1, 39122, 0, -1, 1, 0, 100, 0, 5000, 13000, 6000, 14000, 'Greater Frayer - Lash - current');


UPDATE `creature_template` SET `SpellList` = 1955701 WHERE `entry` = 19557;
UPDATE `creature_template` SET `SpellList` = 2155501 WHERE `entry` = 21555;

-- Sunseeker Harvester 19509
DELETE FROM `creature_template_spells` WHERE `entry` IN (19509, 21575);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1950901, 2157501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1950901, 'Botanica - Sunseeker Harvester - Normal', 0, 0),
(2157501, 'Botanica - Sunseeker Harvester - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1950901, 2157501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1950901, 1, 34639, 0, -1, 101, 0, 100, 0, 7000, 17000, 15000, 21000, 'Sunseeker Harvester - Polymorph - random not tank'),
(1950901, 2, 34640, 0, -1, 1, 0, 100, 0, 4000, 14000, 6000, 16000, 'Sunseeker Harvester - Wilting Touch - current'),
(2157501, 1, 34639, 0, -1, 101, 0, 100, 0, 7000, 17000, 15000, 21000, 'Sunseeker Harvester - Polymorph - random not tank'),
(2157501, 2, 34640, 0, -1, 1, 0, 100, 0, 4000, 14000, 6000, 16000, 'Sunseeker Harvester - Wilting Touch - current');

UPDATE `creature_template` SET `SpellList` = 1950901 WHERE `entry` = 19509;
UPDATE `creature_template` SET `SpellList` = 2157501 WHERE `entry` = 21575;


-- Nethervine Inciter 19511
DELETE FROM `creature_template_spells` WHERE `entry` IN (19511, 21563);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1951101, 2156301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1951101, 'Botanica - Nethervine Inciter - Normal', 0, 0),
(2156301, 'Botanica - Nethervine Inciter - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1951101, 2156301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1951101, 1, 30621, 0, -1, 1, 0, 100, 0, 10000, 22000, 20000, 32000, 'Nethervine Inciter - Kidney Shot - current'),
(1951101, 2, 34616, 0, -1, 1, 0, 100, 0, 6000, 18000, 120000, 130000, 'Nethervine Inciter - Deadly Poison - current'),
(1951101, 3, 34615, 0, -1, 105, 0, 100, 0, 6000, 18000, 22000, 32000, 'Nethervine Inciter - Mind Numbing Poison - random mana user'),

(2156301, 1, 30621, 0, -1, 1, 0, 100, 0, 10000, 22000, 20000, 32000, 'Nethervine Inciter - Kidney Shot - current'),
(2156301, 2, 34616, 0, -1, 1, 0, 100, 0, 6000, 18000, 120000, 130000, 'Nethervine Inciter - Deadly Poison - current'),
(2156301, 3, 34615, 0, -1, 105, 0, 100, 0, 6000, 18000, 22000, 32000, 'Nethervine Inciter - Mind Numbing Poison - random mana user');

UPDATE `creature_template` SET `SpellList` = 1951101 WHERE `entry` = 19511;
UPDATE `creature_template` SET `SpellList` = 2156301 WHERE `entry` = 21563;


-- Nethervine Reaper 19512
DELETE FROM `creature_template_spells` WHERE `entry` IN (19512, 21564);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1951201, 2156401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1951201, 'Botanica - Nethervine Reaper - Normal', 0, 0),
(2156401, 'Botanica - Nethervine Reaper - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1951201, 2156401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1951201, 1, 34626, 0, -1, 100, 0, 100, 0, 6000, 17000, 20000, 30000, 'Nethervine Reaper - Pale Death - random'),
(1951201, 2, 15284, 0, -1, 1, 0, 100, 0, 8000, 21000, 8000, 21000, 'Nethervine Reaper - Cleave - current'),
(2156401, 1, 34626, 0, -1, 100, 0, 100, 0, 6000, 17000, 20000, 30000, 'Nethervine Reaper - Pale Death - random'),
(2156401, 2, 15284, 0, -1, 1, 0, 100, 0, 8000, 21000, 8000, 21000, 'Nethervine Reaper - Cleave - current');


UPDATE `creature_template` SET `SpellList` = 1951201 WHERE `entry` = 19512;
UPDATE `creature_template` SET `SpellList` = 2156401 WHERE `entry` = 21564;


-- Sunseeker Herbalist 19508
DELETE FROM `creature_template_spells` WHERE `entry` IN (19508, 21576);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1950801, 2157601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1950801, 'Botanica - Sunseeker Herbalist - Normal', 0, 0),
(2157601, 'Botanica - Sunseeker Herbalist - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1950801, 2157601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1950801, 1, 22127, 0, -1, 1, 0, 100, 0, 7000, 16000, 13000, 19000, 'Sunseeker Herbalist - Entangling Roots - current'),
(2157601, 1, 22127, 0, -1, 1, 0, 100, 0, 7000, 16000, 13000, 19000, 'Sunseeker Herbalist - Entangling Roots - current');

UPDATE `creature_template` SET `SpellList` = 1950801 WHERE `entry` = 19508;
UPDATE `creature_template` SET `SpellList` = 2157601 WHERE `entry` = 21576;


-- Sunseeker Channeler 19505
DELETE FROM `creature_template_spells` WHERE `entry` IN (19505, 21571);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1950501, 2157101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1950501, 'Botanica - Sunseeker Channeler - Normal', 0, 0),
(2157101, 'Botanica - Sunseeker Channeler - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1950501, 2157101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1950501, 1, 34634, 0, -1, 2, 0, 100, 0, 6000, 15000, 9000, 22000, 'Sunseeker Channeler - Sunseeker Aura - self'),
(1950501, 2, 34637, 0, -1, 105, 0, 100, 0, 7000, 16000, 12000, 27000, 'Sunseeker Channeler - Soul Channel - random mana user'),
(2157101, 1, 34634, 0, -1, 2, 0, 100, 0, 6000, 15000, 9000, 22000, 'Sunseeker Channeler - Sunseeker Aura - self'),
(2157101, 2, 34637, 0, -1, 105, 0, 100, 0, 7000, 16000, 12000, 27000, 'Sunseeker Channeler - Soul Channel - random mana user');

UPDATE `creature_template` SET `SpellList` = 1950501 WHERE `entry` = 19505;
UPDATE `creature_template` SET `SpellList` = 2157101 WHERE `entry` = 21571;

