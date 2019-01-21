-- Add creature_template_addon for Twilight Avenger 11880
DELETE FROM `creature_template_addon` WHERE `entry` = 11880;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 11880) AND `guid` NOT IN (42998,42991,42989,42986,42985,42979,42978,42973,42950,42949,42948);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (11880, 0, 0, 1, 16, 0, 0, NULL);

