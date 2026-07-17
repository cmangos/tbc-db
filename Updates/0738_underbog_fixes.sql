-- Underbog
-- Remove Trample (spell 2) from Heroic Bog Giant, move spell 3 to spell 2
DELETE FROM `creature_spell_list` WHERE `Id` = 2016401 AND `Position` = 2;
UPDATE `creature_spell_list` SET `Position` = 2 WHERE `Id` = 2016401 AND `Position` = 3;
