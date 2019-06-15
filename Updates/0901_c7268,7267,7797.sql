-- Stats Improvements for Zul'Farrak Endboss Room
-- Sandfury Guardian 7268
UPDATE `creature_template` SET `UnitFlags` = 32832 WHERE `entry` = 7268; -- 33088 UNIT_FLAG_IMMUNE_TO_PLAYER is removed on aggro

-- Chief Ukorz Sandscalp 7267
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|536870912 WHERE `entry` = 7267; -- Sap Immunity
UPDATE `creature_model_info` SET `bounding_radius` = 0.3672, `combat_reach` = 1.8 WHERE `modelid` = 6439;

-- Ruuzlu 7797
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|536870912 WHERE `entry` = 7797; -- Sap Immunity
UPDATE `creature_model_info` SET `bounding_radius` = 0.3672, `combat_reach` = 1.8 WHERE `modelid` = 6687;

