-- Sunblade Sentinel 24777,25571
DELETE FROM `creature_template_addon` WHERE `entry` IN (24777,25571);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(24777,0,0,1,16,0,0,'44537'),
(25571,0,0,1,16,0,0,'46048');

