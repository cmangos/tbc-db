-- Remove Trample (s.15550) from Heroic Bog Giant
-- https://www.wowhead.com/tbc/npc=17723/bog-giant#abilities;mode:heroic
DELETE FROM `creature_spell_list` WHERE `Id` = 2016401 AND `Position` = 2;
-- INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- (2016401, 2, 15550, 0, -1, 2, 0, 100, 0, 6000, 16000, 16000, 26000, 'Bog Giant - Trample - self'); -- prenerf?
-- UPDATE `creature_spell_list` SET `Position` = 2 WHERE `Id` = 2016401 AND `Position` = 3; -- keep original order for now.

