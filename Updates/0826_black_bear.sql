UPDATE `creature` SET `position_x`=-4298.227, `position_y`=-1420.108, `position_z`=391.32, `orientation`=4.435794 WHERE `guid`=191201;
UPDATE `creature` SET `position_x`=-4301.8081, `position_y`=-1422.118, `position_z`=391.556, `orientation`=5.795453 WHERE `guid`=191200;

DELETE FROM `creature_addon` WHERE `guid` IN (191201,191200);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `emote`, `auras`) VALUES
(191201, 0, 1, 0, ''),
(191200, 0, 1, 0, '');


