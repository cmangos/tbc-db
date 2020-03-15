-- Remove StandState for A-Me 01 9623 should be handled in Core
DELETE FROM `creature_addon` WHERE `guid` = 24268;
UPDATE `creature_template_addon` SET `bytes1` = 0, `b2_1_flags` = 16 WHERE `entry` = 9623;

-- Remove UNIT_STAND_STATE_KNEEL for Captured Arko'narin 11016 (Escort)
UPDATE `creature_template_addon` SET `bytes1` = 0 WHERE `entry` = 11016;

-- Remove UNIT_STAND_STATE_DEAD for Ringo 9999 (Escort, but Following might need escort faction to remove unitflags)
DELETE FROM `creature_addon` WHERE `guid` = 23708;
UPDATE `creature_template_addon` SET `bytes1` = 0, `b2_1_flags` = 16 WHERE `entry` = 9999;

-- Remove Static UNIT_STAND_STATE_KNEEL for Dalinda Malem 5644 (Escort)
DELETE FROM `creature_addon` WHERE `guid` = 26987;
UPDATE `creature_template` SET `UnitFlags` = 512 WHERE `entry` = 5644;
UPDATE `creature_template_addon` SET `bytes1` = 0, `b2_1_flags` = 16 WHERE `entry` = 5644;

