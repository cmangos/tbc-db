-- Underbog
-- Remove Trample (spell 2) from Heroic Bog Giant, move spell 3 to spell 2
DELETE FROM `creature_spell_list` WHERE `Id` = 2016401 AND `Position` = 2;
UPDATE `creature_spell_list` SET `Position` = 2 WHERE `Id` = 2016401 AND `Position` = 3;

-- Add Enrage at low hp (seems below 30) to Normal Bog Giant
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES ('1772301', '3', '8599', '0', '5364', '0', '0', '100', '1', '0', '0', '600000', '600000', 'Bog Giant - Enrage below 30');

-- Add Enrage at low hp (seems below 15) to Normal Underbog Lord
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES ('1773401', '3', '8599', '0', '1107', '0', '0', '100', '1', '0', '0', '600000', '600000', 'Underbog Lord - Enrage below 15');