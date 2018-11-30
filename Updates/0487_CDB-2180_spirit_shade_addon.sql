-- Add missing creature addon for NPC 15261 (Spirit Shade)
DELETE FROM creature_template_addon WHERE entry=15261;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(15261, 0, 0, 1, 16, 0, 0, '24313');

