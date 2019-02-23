-- Temporus 17880,20745
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `ExtraFlags` = `ExtraFlags`|256, `Leash` = 80, `MechanicImmuneMask` = `MechanicImmuneMask`|(1024+33554432) WHERE `entry` = 17880;
UPDATE `creature_template` SET `MinLevel` = 72, `MaxLevel` = 72, `Faction` = 1720, `ExtraFlags` = `ExtraFlags`|256, `Leash` = 80 WHERE `entry` = 20745;
UPDATE `creature_model_info` SET `bounding_radius` = 0.525, `combat_reach` = 1.75 WHERE `modelid` = 19066;

-- Infinite Timereaver 21698,22167
UPDATE `creature_template` SET `UnitFlags` = 32832, `ExtraFlags` = 256, `Leash` = 80, `MechanicImmuneMask` = 646168407, `EquipmentTemplateId` = 0 WHERE `entry` = 21698;
UPDATE `creature_template` SET `Faction` = 1720, `UnitFlags` = 32832, `ExtraFlags` = 256, `Leash` = 80, `MechanicImmuneMask` = 646168407 WHERE `entry` = 22167;
DELETE FROM `creature_equip_template` WHERE `entry` = 21698;

-- Chrono Lord Deja 17879,20738
UPDATE `creature_template` SET `Leash` = 80, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 17879;
UPDATE `creature_template` SET `MinLevel` = 72, `MaxLevel` = 72, `Faction` = 1720, `Leash` = 80 WHERE `entry` = 20738;

-- Infinite Chrono-Lord 21697,21712
UPDATE `creature_template` SET `Leash` = 80 WHERE `entry` = 21697;
UPDATE `creature_template` SET `Faction` = 1720, `Leash` = 80 WHERE `entry` = 21712;

-- Aeonus 17881,20737
-- UPDATE `creature_template` SET  WHERE `entry` = 17881;
UPDATE `creature_template` SET `Faction` = 1720, `ExtraFlags` = `ExtraFlags`&~256 WHERE `entry` = 20737;
UPDATE `creature_model_info` SET `bounding_radius` = 0.3, `combat_reach` = 10 WHERE `modelid` = 20510;

-- Rift Lord 17839, 20744, 21140, 22172 & Rift Keeper 21104, 22170, 21148, 22171
UPDATE `creature_template` SET `Leash` = 80 WHERE `entry` IN (17839, 20744, 21140, 22172, 21104, 22170, 21148, 22171);

UPDATE `creature_template` SET `lootid` = 21104 WHERE `entry` = 21148;
UPDATE `creature_template` SET `MechanicImmuneMask` = 1034927867 WHERE `entry` IN (20744,22170);
UPDATE `creature_template` SET `lootid` = 22170 WHERE `entry` = 22171;
UPDATE `creature_template` SET `KillCredit1` = 17839 WHERE `entry` IN (17839,20744);

