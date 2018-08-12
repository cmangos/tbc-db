-- Nexus-Prince Shaffar 18344,20266
UPDATE `creature_template` SET `UnitFlags` = 32832, `MechanicImmuneMask` = `MechanicImmuneMask`&~8, `MovementType` = 0 WHERE `entry` = 18344;
UPDATE `creature_template` SET `UnitFlags` = 32832, `PickpocketLootId` = 18344, `EquipmentTemplateId` = 18344 WHERE `entry` = 20266;

