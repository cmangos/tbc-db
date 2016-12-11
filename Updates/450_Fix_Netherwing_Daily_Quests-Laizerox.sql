-- =============================================
-- Fix Netherwing Daily Quests - Thanks Laizerox
-- =============================================
DELETE FROM `spell_area` WHERE `spell`=40214;
INSERT INTO `spell_area` (`spell`, `area`,`quest_end`) VALUES (40214, 3758, 11013);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `autocast`) VALUES (40214, 3759, 11013, 1, 1);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `autocast`) VALUES (40214, 3966, 11013, 1, 1);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `autocast`) VALUES (40214, 3939, 11013, 1, 1);
INSERT INTO `spell_area` (`spell`, `area`, `condition_id`, `autocast`) VALUES (40214, 3759, 446, 1);
INSERT INTO `spell_area` (`spell`, `area`, `condition_id`, `autocast`) VALUES (40214, 3966, 446, 1);
INSERT INTO `spell_area` (`spell`, `area`, `condition_id`, `autocast`) VALUES (40214, 3939, 446, 1);
UPDATE `conditions` SET `type`=8 WHERE `condition_entry`=446;

