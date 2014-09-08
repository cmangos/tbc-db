-- based on https://github.com/cmangos/classic-db/commit/9051bd7f867e26ec8ef7b0fb1ac1c924f08492c0

-- Lil Timmy 8666
UPDATE `creature_template` SET `UnitFlags` = 768, `EquipmentTemplateId` = 0 WHERE `entry` = 8666;

-- White Kitten 7386 - use Timmy spawn as he has the waypoints
UPDATE `creature` SET `position_x` = -8634.51, `position_y` = 918.961, `position_z` = 99.355, `orientation` = 3.83299 WHERE `guid` = 53705 AND `id` = 7386;
UPDATE `creature_template` SET `Faction` = 188, `UnitFlags` = 768, `SkinningLootId` = 0, `EquipmentTemplateId` = 0 WHERE `entry` = 7386;

DELETE FROM `creature_linking` WHERE `master_guid` = 45501;
DELETE FROM `creature_linking_template` WHERE `entry` = 7386;
INSERT INTO `creature_linking_template` VALUES
(7386, 0, 8666, 128 + 512 + 8192, 0);

