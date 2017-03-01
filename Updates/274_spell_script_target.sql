-- Added missing spell target for spell 12938 (Fel Curse) in quest Uniting the Shattered Amulet in Blasted Lands
DELETE FROM `spell_script_target` WHERE `entry` = 12938;
INSERT INTO `spell_script_target` VALUES
(12938, 1, 7665, 0), -- Grol the Destroyer
(12938, 1, 7667, 0), -- Lady Sevine
(12938, 1, 7666, 0); -- Archmage Allistarj
