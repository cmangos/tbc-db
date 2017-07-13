DELETE FROM `spell_target_position` WHERE `ID`=42200;
INSERT INTO `spell_target_position` (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES 
(42200, 1, 5010.165039, -4554.938965, 852.146362, 0.883979);

DELETE FROM `spell_area` WHERE `spell`=42202;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES 
(42202, 616, 0, 0, 0, 0, 2, 1);


