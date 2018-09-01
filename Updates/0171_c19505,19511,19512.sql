-- Sunseeker Channeler 19505,21571
UPDATE `creature_template` SET `UnitFlags` = 32832, `MovementType` = 0 WHERE `entry` = 19505;
UPDATE `creature_template` SET `UnitFlags` = 32832  WHERE `entry` = 21571;

-- Nethervine Inciter 19511,21563
UPDATE `creature_template` SET `UnitFlags` = 64, `MeleeBaseAttackTime` = 2000, `MovementType` = 0 WHERE `entry` = 19511;
UPDATE `creature_template` SET `UnitFlags` = 64, `MeleeBaseAttackTime` = 2000, `EquipmentTemplateId` = 19511 WHERE `entry` = 21563;

-- Nethervine Reaper 19512,21564
UPDATE `creature_template` SET `UnitFlags` = 64, `MovementType` = 0 WHERE `entry` = 19512;
UPDATE `creature_template` SET `UnitFlags` = 64, `EquipmentTemplateId` = 19512  WHERE `entry` = 21564;

