-- All NPCs 2269 (Hillsbrad Miner) should have mining emote (handle in addon template)
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id=2269);
DELETE FROM `creature_template_addon` WHERE `entry` = 2269;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(2269, 0, 0, 1, 16, 233, 0, NULL);

