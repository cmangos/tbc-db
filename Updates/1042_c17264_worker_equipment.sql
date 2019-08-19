-- Add Worker Equipment for Bonechewer Ravener 17264
DELETE FROM `creature_equip_template` WHERE `entry` = 52513;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(52513, 2028, 22215, 0); -- 17264

