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


-- Thrall - 17876 - 20548
DELETE FROM `creature_template_spells` WHERE `entry` IN (17876, 20548);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1787601, 2054801);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1787601, 'Old Hillsbrad Foothills - Thrall - Normal', 0, 0),
(2054801, 'Old Hillsbrad Foothills - Thrall - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1787601, 2054801);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1787601, 1, 12169, 0, -1, 2, 0, 100, 0, 5000, 16000, 5000, 16000, 'Thrall - Shield Block on self'),
(1787601, 2, 14516, 0, -1, 1, 0, 100, 0, 7000, 22000, 8000, 22000, 'Thrall - Strike on Current'),
-- Heroic
(2054801, 1, 12169, 0, -1, 2, 0, 100, 0, 5000, 16000, 5000, 16000, 'Thrall - Shield Block on self'),
(2054801, 2, 14516, 0, -1, 1, 0, 100, 0, 7000, 22000, 8000, 22000, 'Thrall - Strike on Current');

UPDATE `creature_template` SET `SpellList` = 1787601 WHERE `entry` = 17876;
UPDATE `creature_template` SET `SpellList` = 2054801 WHERE `entry` = 20548;

-- Durnholde Mage 18934 - 20525
DELETE FROM `creature_template_spells` WHERE `entry` IN (18934, 20525);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1893401, 2052501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1893401, 'Old Hillsbrad Foothills - Durnholde Mage - Normal', 0, 80),
(2052501, 'Old Hillsbrad Foothills - Durnholde Mage - Heroic', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1893401, 2052501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1893401, 1, 13323, 0, -1, 101, 0, 100, 0, 6000, 11000, 14000, 20000, 'Durnholde Mage - Polymorph random not tank'),
(1893401, 2, 15244, 0, -1, 109, 0, 100, 0, 8000, 16000, 12000, 22000, 'Durnholde Mage - Cone of Cold random player in melee range'),
(1893401, 3, 13341, 0, -1, 1, 0, 100, 0, 8000, 15000, 10000, 17000, 'Durnholde Mage - Fire Blast current'),
(1893401, 4, 12466, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Durnholde Mage - Fireball current'),
-- Heroic
(2052501, 1, 13323, 0, -1, 101, 0, 100, 0, 6000, 11000, 14000, 20000, 'Durnholde Mage - Polymorph random not tank'),
(2052501, 2, 38384, 0, -1, 109, 0, 100, 0, 8000, 16000, 12000, 22000, 'Durnholde Mage - Cone of Cold random player in melee range'),
(2052501, 3, 16144, 0, -1, 1, 0, 100, 0, 8000, 15000, 10000, 17000, 'Durnholde Mage - Fire Blast current'),
(2052501, 4, 17290, 2, -1, 1, 0, 100, 0, 0, 0, 0, 0, 'Durnholde Mage - Fireball current');

UPDATE `creature_template` SET `SpellList` = 1893401 WHERE `entry` = 18934;
UPDATE `creature_template` SET `SpellList` = 2052501 WHERE `entry` = 20525;


-- Tarren Mill Lookout 18094 - 20546
DELETE FROM `creature_template_spells` WHERE `entry` IN (18094, 20546);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1809401, 2318301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1809401, 'Old Hillsbrad Foothills - Tarren Mill Lookout - Normal', 0, 80),
(2318301, 'Old Hillsbrad Foothills - Tarren Mill Lookout - Heroic', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1809401, 2318301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1809401, 1, 35511, 0, -1, 130, 0, 100, 0, 4000, 12000, 4000, 12000, 'Tarren Mill Lookout - Serpent Sting - top aggro aura not present'),
(1809401, 2, 17174, 0, -1, 130, 0, 100, 0, 4000, 8000, 6000, 9000, 'Tarren Mill Lookout - Concussive Shot - top aggro aura not present'),
(1809401, 3, 15620, 2, -1, 1, 0, 100, 0, 0, 2000, 2000, 4000, 'Tarren Mill Lookout - Shoot - current'),
-- Heroic
(2054601, 1, 35511, 0, -1, 130, 0, 100, 0, 4000, 12000, 4000, 12000, 'Tarren Mill Lookout - Serpent Sting - top aggro aura not present'),
(2054601, 2, 17174, 0, -1, 130, 0, 100, 0, 6000, 9000, 6000, 9000, 'Tarren Mill Lookout - Concussive Shot - top aggro aura not present'),
(2054601, 3, 16100, 2, -1, 1, 0, 100, 0, 0, 2000, 2000, 4000, 'Tarren Mill Lookout - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 1809401 WHERE `entry` = 18094;
UPDATE `creature_template` SET `SpellList` = 2054601 WHERE `entry` = 20546;


-- Tarren Mill Lookout 23177 - 23183
DELETE FROM `creature_template_spells` WHERE `entry` IN (23177, 23183);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2317701, 2318301);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2317701, 'Old Hillsbrad Foothills - Tarren Mill Lookout - Normal', 0, 80),
(2318301, 'Old Hillsbrad Foothills - Tarren Mill Lookout - Heroic', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2317701, 2318301);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2317701, 1, 35511, 0, -1, 130, 0, 100, 0, 4000, 12000, 4000, 12000, 'Tarren Mill Lookout - Serpent Sting - top aggro aura not present'),
(2317701, 2, 17174, 0, -1, 130, 0, 100, 0, 4000, 8000, 6000, 9000, 'Tarren Mill Lookout - Concussive Shot - top aggro aura not present'),
(2317701, 3, 15620, 2, -1, 1, 0, 100, 0, 0, 2000, 2000, 4000, 'Tarren Mill Lookout - Shoot - current'),
-- Heroic
(2318301, 1, 35511, 0, -1, 130, 0, 100, 0, 4000, 12000, 4000, 12000, 'Tarren Mill Lookout - Serpent Sting - top aggro aura not present'),
(2318301, 2, 17174, 0, -1, 130, 0, 100, 0, 6000, 9000, 6000, 9000, 'Tarren Mill Lookout - Concussive Shot - top aggro aura not present'),
(2318301, 3, 16100, 2, -1, 1, 0, 100, 0, 0, 2000, 2000, 4000, 'Tarren Mill Lookout - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 2317701 WHERE `entry` = 23177;
UPDATE `creature_template` SET `SpellList` = 2318301 WHERE `entry` = 23183;

-- Tarren Mill Lookout 23178 - 23184
 DELETE FROM `creature_template_spells` WHERE `entry` IN (23178, 23184);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2317801, 2318401);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2317801, 'Old Hillsbrad Foothills - Tarren Mill Lookout - Normal', 0, 80),
(2318401, 'Old Hillsbrad Foothills - Tarren Mill Lookout - Heroic', 0, 80);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2317801, 2318401);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2317801, 1, 35511, 0, -1, 130, 0, 100, 0, 4000, 12000, 4000, 12000, 'Tarren Mill Lookout - Serpent Sting - top aggro aura not present'),
(2317801, 2, 17174, 0, -1, 130, 0, 100, 0, 4000, 8000, 6000, 9000, 'Tarren Mill Lookout - Concussive Shot - top aggro aura not present'),
(2317801, 3, 15620, 2, -1, 1, 0, 100, 0, 0, 2000, 2000, 4000, 'Tarren Mill Lookout - Shoot - current'),
-- Heroic
(2318401, 1, 35511, 0, -1, 130, 0, 100, 0, 4000, 12000, 4000, 12000, 'Tarren Mill Lookout - Serpent Sting - top aggro aura not present'),
(2318401, 2, 17174, 0, -1, 130, 0, 100, 0, 6000, 9000, 6000, 9000, 'Tarren Mill Lookout - Concussive Shot - top aggro aura not present'),
(2318401, 3, 16100, 2, -1, 1, 0, 100, 0, 0, 2000, 2000, 4000, 'Tarren Mill Lookout - Shoot - current');

UPDATE `creature_template` SET `SpellList` = 2317701 WHERE `entry` = 23178;
UPDATE `creature_template` SET `SpellList` = 2318401 WHERE `entry` = 23184;

-- Tarren Mill Guardsman 18092 - 20545
DELETE FROM `creature_template_spells` WHERE `entry` IN (18092, 20545);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1809201, 2054501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1809201, 'Old Hillsbrad Foothills - Tarren Mill Guardsman - Normal', 0, 0),
(2054501, 'Old Hillsbrad Foothills - Tarren Mill Guardsman - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1809201, 2054501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1809201, 1, 15749, 0, -1, 107, 0, 100, 0, 2000, 8000, 16000, 22000, 'Tarren Mill Guardsman - Shield Charge - random not in melee'),
-- Heroic
(2054501, 1, 15749, 0, -1, 107, 0, 100, 0, 2000, 8000, 16000, 22000, 'Tarren Mill Guardsman - Shield Charge - random not in melee');

UPDATE `creature_template` SET `SpellList` = 1809201 WHERE `entry` = 18092;
UPDATE `creature_template` SET `SpellList` = 2054501 WHERE `entry` = 20545;

-- Tarren Mill Guardsman 23175 - 23181
DELETE FROM `creature_template_spells` WHERE `entry` IN (23175, 23181);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2317501, 2318101);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2317501, 'Old Hillsbrad Foothills - Tarren Mill Guardsman - Normal', 0, 0),
(2318101, 'Old Hillsbrad Foothills - Tarren Mill Guardsman - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2317501, 2318101);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2317501, 1, 15749, 0, -1, 107, 0, 100, 0, 2000, 8000, 16000, 22000, 'Tarren Mill Guardsman - Shield Charge - random not in melee'),
-- Heroic
(2318101, 1, 15749, 0, -1, 107, 0, 100, 0, 2000, 8000, 16000, 22000, 'Tarren Mill Guardsman - Shield Charge - random not in melee');

UPDATE `creature_template` SET `SpellList` = 2317501 WHERE `entry` = 23175;
UPDATE `creature_template` SET `SpellList` = 2318101 WHERE `entry` = 23181;

-- Tarren Mill Guardsman 23176 - 23182
DELETE FROM `creature_template_spells` WHERE `entry` IN (23176, 23182);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2317601, 2318201);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2317601, 'Old Hillsbrad Foothills - Tarren Mill Guardsman - Normal', 0, 0),
(2318201, 'Old Hillsbrad Foothills - Tarren Mill Guardsman - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2317601, 2318201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2317601, 1, 15749, 0, -1, 107, 0, 100, 0, 2000, 8000, 16000, 22000, 'Tarren Mill Guardsman - Shield Charge - random not in melee'),
-- Heroic
(2318201, 1, 15749, 0, -1, 107, 0, 100, 0, 2000, 8000, 16000, 22000, 'Tarren Mill Guardsman - Shield Charge - random not in melee');

UPDATE `creature_template` SET `SpellList` = 2317601 WHERE `entry` = 23176;
UPDATE `creature_template` SET `SpellList` = 2318201 WHERE `entry` = 23182;


-- Tarren Mill Protector 18093 - 20547
DELETE FROM creature_spell_targeting WHERE Id = 211;
INSERT INTO `creature_spell_targeting` (`Id`, `Type`, `Param1`, `Param2`, `Param3`, `Comments`) VALUES 
('211', '2', '20', '1', '1', 'Support - Missing 20% including self');

DELETE FROM `creature_template_spells` WHERE `entry` IN (18093, 20547);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1809301, 2054701);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(1809301, 'Old Hillsbrad Foothills - Tarren Mill Protector - Normal', 0, 0),
(2054701, 'Old Hillsbrad Foothills - Tarren Mill Protector - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1809301, 2054701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1809301, 1, 17843, 0, -1, 211, 0, 100, 0, 5000, 10000, 10000, 10000, 'Tarren Mill Protector - Flash Heal - missing 20% including self'),
(1809301, 2, 32588, 0, -1, 1, 0, 100, 0, 6000, 12000, 12000, 18000, 'Tarren Mill Protector - Concussion Blow - current'),
-- Heroic
(2054701, 1, 29380, 0, -1, 3, 0, 100, 0, 0, 6000, 2000, 6000, 'Tarren Mill Protector - Cleanse - eligible friendly dispel'),
(2054701, 2, 17138, 0, -1, 211, 0, 100, 0, 5000, 10000, 10000, 10000, 'Tarren Mill Protector - Flash Heal - missing 20% including self'),
(2054701, 3, 32588, 0, -1, 1, 0, 100, 0, 6000, 12000, 12000, 18000, 'Tarren Mill Protector - Concussion Blow - current'),

UPDATE `creature_template` SET `SpellList` = 1809301 WHERE `entry` = 18093;
UPDATE `creature_template` SET `SpellList` = 2054701 WHERE `entry` = 20547;


-- Tarren Mill Protector 23179 - 23185
DELETE FROM `creature_template_spells` WHERE `entry` IN (23179, 23185);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2317901, 2318501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2317901, 'Old Hillsbrad Foothills - Tarren Mill Protector - Normal', 0, 0),
(2318501, 'Old Hillsbrad Foothills - Tarren Mill Protector - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2317901, 2318501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2317901, 1, 17843, 0, -1, 211, 0, 100, 0, 5000, 10000, 10000, 10000, 'Tarren Mill Protector - Flash Heal - missing 20% including self'),
(2317901, 2, 32588, 0, -1, 1, 0, 100, 0, 6000, 12000, 12000, 18000, 'Tarren Mill Protector - Concussion Blow - current'),
-- Heroic
(2318501, 1, 29380, 0, -1, 3, 0, 100, 0, 0, 6000, 2000, 6000, 'Tarren Mill Protector - Cleanse - eligible friendly dispel'),
(2318501, 2, 17138, 0, -1, 211, 0, 100, 0, 5000, 10000, 10000, 10000, 'Tarren Mill Protector - Flash Heal - missing 20% including self'),
(2318501, 3, 32588, 0, -1, 1, 0, 100, 0, 6000, 12000, 12000, 18000, 'Tarren Mill Protector - Concussion Blow - current'),

UPDATE `creature_template` SET `SpellList` = 2317901 WHERE `entry` = 23179;
UPDATE `creature_template` SET `SpellList` = 2318501 WHERE `entry` = 23185;

-- Tarren Mill Protector 23180 - 23186
DELETE FROM `creature_template_spells` WHERE `entry` IN (23180, 23186);

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (2318001, 2318601);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2318001, 'Old Hillsbrad Foothills - Tarren Mill Protector - Normal', 0, 0),
(2318601, 'Old Hillsbrad Foothills - Tarren Mill Protector - Heroic', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (2318001, 2318601);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2318001, 1, 17843, 0, -1, 211, 0, 100, 0, 5000, 10000, 10000, 10000, 'Tarren Mill Protector - Flash Heal - missing 20% including self'),
(2318001, 2, 32588, 0, -1, 1, 0, 100, 0, 6000, 12000, 12000, 18000, 'Tarren Mill Protector - Concussion Blow - current'),
-- Heroic
(2318601, 1, 29380, 0, -1, 3, 0, 100, 0, 0, 6000, 2000, 6000, 'Tarren Mill Protector - Cleanse - eligible friendly dispel'),
(2318601, 2, 17138, 0, -1, 211, 0, 100, 0, 5000, 10000, 10000, 10000, 'Tarren Mill Protector - Flash Heal - missing 20% including self'),
(2318601, 3, 32588, 0, -1, 1, 0, 100, 0, 6000, 12000, 12000, 18000, 'Tarren Mill Protector - Concussion Blow - current'),

UPDATE `creature_template` SET `SpellList` = 2318001 WHERE `entry` = 23180;
UPDATE `creature_template` SET `SpellList` = 2318601 WHERE `entry` = 23186;