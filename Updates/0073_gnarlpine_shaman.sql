-- Gnarlpine Shaman 2009
DELETE FROM `creature_template_spells` WHERE `entry` = 2009;

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (200901);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(200901, 'Teldrassil - Gnarlpine Shaman', 0, 0);

DELETE FROM `creature_spell_list` WHERE `Id` IN (200901);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(200901, 1, 332, 0, -1, 201, 0, 100, 0, 2000, 12000, 20000, 30000, 'Gnarlpine Shaman - Healing Wave - missing 50% including self');

UPDATE `creature_template` SET `SpellList` = 200901 WHERE `entry` = 2009;