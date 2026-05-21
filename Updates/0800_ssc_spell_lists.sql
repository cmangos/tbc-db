-- -----------
-- Serpentshrine Cavern
-- SpellLists
-- -----------

-- Coilfang Beast-Tamer
DELETE FROM `creature_template_spells` WHERE `entry` = 21221;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2122101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2122101, 'Serpentshrine Cavern - Coilfang Beast-Tamer', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2122101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2122101, 1, 38484, 0, -1, 0, 0, 100, 0, 6000, 10000, 18000, 22000, 'Coilfang Beast-Tamer - Bestial Wrath - none'),
(2122101, 2, 38474, 0, -1, 1, 0, 100, 0, 6000, 14000, 6000, 21000, 'Coilfang Beast-Tamer - Cleave - current');

UPDATE `creature_template` SET `SpellList` = 2122101 WHERE `entry` = 21221;


-- Serpentshrine Sporebat
-- ServerToClient: SMSG_SPELL_START (0x630029) Length: 130 ConnIdx: 1 Time: 05/20/2026 21:38:48.857 Number: 902684
-- (Cast) CasterGUID: Full: 0x206470448014BF800021B700020E0C43 Creature/0 R6428/S8631 Map: 548 Entry: 21246 Low: 34475075
-- (Cast) CasterUnit: Full: 0x206470448014BF800021B700020E0C43 Creature/0 R6428/S8631 Map: 548 Entry: 21246 Low: 34475075
-- (Cast) CastID: Full: 0xBC64704480258F430021B7000A0E0DC8 Cast/3 R6428/S8631 Map: 548 Entry: 38461 Low: 168693192
-- (Cast) SpellID: 38461 (38461)
DELETE FROM `creature_template_spells` WHERE `entry` = 21246;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2124601;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(2124601, 'Serpentshrine Cavern - Serpentshrine Sporebat', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` = 2124601;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2124601, 1, 38461, 0, -1, 100, 0, 100, 0, 4000, 9000, 11000, 14000, 'Serpentshrine Sporebat - Charge - random');


UPDATE `creature_template` SET `SpellList` = 2124601 WHERE `entry` = 21246;
