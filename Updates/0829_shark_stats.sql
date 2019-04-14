-- 5185 Hammerhead Shark
UPDATE `creature_template` SET `MinLevel` = 31, `UnitFlags` = 32832, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 5185;

-- 5186 Basking Shark - Deeprun Tram

-- 5434 Coral Shark
UPDATE `creature_template` SET `MinLevel` = 46, `UnitFlags` = 32832, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 5434;

-- 5435 Sand Shark
UPDATE `creature_template` SET `UnitFlags` = 32768 WHERE `entry` = 5435; -- recheck MeleeBaseAttackTime

-- 12123 Reef Shark
UPDATE `creature_template` SET `MaxLevel` = 22, `UnitFlags` = 32832 WHERE `entry` = 12123;

-- 12124 Great Shark
UPDATE `creature_template` SET `UnitFlags` = 32832 WHERE `entry` = 12124; -- recheck MeleeBaseAttackTime

-- 12125 Mammoth Shark
UPDATE `creature_template` SET `UnitFlags` = 32768 WHERE `entry` = 12125; -- recheck MeleeBaseAttackTime
DELETE FROM `creature_template_addon` WHERE `entry` = 12125;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(12125, 1, 16, '12787');

-- 15661 Baby Shark - NSR

-- 23928 Lurking Shark
UPDATE `creature_template` SET `UnitFlags` = 0 WHERE `entry` = 23928;

