-- Reinsert SpellList for Coilfang Technician (Heroic) 19891
-- https://github.com/cmangos/tbc-db/commit/02512e1695e5158449d4201e6b524cec932b6a0c#diff-8001d5d7f0af5be7b7debcc4ab43cb9795dfabc31f059276c080feb42a5a4334R14-R395
DELETE FROM `creature_spell_list` WHERE `Id` = 1989101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(1989101, 2, 39376, 0, -1, 100, 0, 100, 0, 10000, 24000, 21000, 33000, 'Coilfang Technician - Rain of Fire - random');

