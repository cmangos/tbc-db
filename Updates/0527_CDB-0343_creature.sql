-- Updated spawns of creature 61 (Thuros Lightfingers) as it was wielding the wrong equipment
-- Made one of the spawn sit
-- Source: http://www.wowhead.com/npc=61
DELETE FROM `creature_addon` WHERE `guid` = 98747;
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (98747, 0, 1, 1, 16, 0, 0, NULL);

