-- =============================================
-- Add one more Area to spell_area
-- =============================================
DELETE FROM `spell_area` WHERE `spell`=40214 AND `area`=3965;
INSERT INTO `spell_area` (`spell`, `area`, `condition_id`, `autocast`) VALUES (40214, 3965, 446, 1);

