-- Missing teleport positions for Grandmaster Vorpil Draw Shadows (Draw Shadows) trigger spell 

-- Sniff
-- ServerToClient: SMSG_MOVE_UPDATE_TELEPORT (0x48000F) Length: 70 ConnIdx: 1 Time: 09/30/2025 10:45:04.891 Number: 26157
-- (MovementStats) MoverGUID: Full: 0x2042444560124B0000226500005B97D8 Creature/0 R4241/S8805 Map: 555 Entry: 18732 Low: 6002648
-- (MovementStats) MovementFlags: 0 (None)
-- (MovementStats) Position: X: -253.548 Y: -263.646 Z: 17.0864 O: 0
DELETE FROM spell_target_position WHERE id = 33558;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`) VALUES ('33558', '555', '-253.548', '-263.646', '17.0864');

