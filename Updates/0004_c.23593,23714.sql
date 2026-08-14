-- Move Grimtotem Elder 23714 to creature_spell_list
UPDATE `creature_template` SET `SpellList` = 2371401 WHERE `entry` = 23714;
DELETE FROM `creature_spell_list_entry` WHERE `Id` = 2371401;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES (2371401, 'Dustwallow Marsh - Grimtotem Elder - Mosshide Mystic', 75, 75);
DELETE FROM `creature_spell_list` WHERE `Id` = 2371401;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(2371401, 0, 9532, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Grimtotem Elder - Lightning Bolt'),
(2371401, 1, 11986, 0, -1, 201, 0, 100, 1, 5000, 15000, 15000, 30000, 'Grimtotem Elder - Healing Wave - Missing 50% including self');

