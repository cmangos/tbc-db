-- Gatewatcher Gyro-Kill 19218,21525
UPDATE `creature_template` SET `UnitFlags` = 64, `MovementType` = 0 WHERE `entry` = 19218;
UPDATE `creature_template` SET `UnitFlags` = 64, `PickpocketLootId` = 19218 WHERE `entry` = 21525;
UPDATE `creature_model_info` SET `bounding_radius` = 6.846691 WHERE `modelid` = 18816;

-- Gatewatcher Iron-Hand 19710,21526
UPDATE `creature_template` SET  `UnitFlags` = 64, `MovementType` = 0 WHERE `entry` = 19710;
UPDATE `creature_template` SET `UnitFlags` = 64, `ModelId1` = 21191, `PickpocketLootId` = 19710 WHERE `entry` = 21526;
UPDATE `creature_model_info` SET `bounding_radius` = 5.896758 WHERE `modelid` = 21191;

