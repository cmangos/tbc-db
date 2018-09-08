-- Remove wrong weapon for Fallenroot Rogue 4789
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 4789;
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 4789;
DELETE FROM `creature_equip_template` WHERE `entry` = 55592;

-- Add UNIT_FLAG_SWIMMING for Trigore the Lasher 3652
UPDATE `creature_template` SET `UnitFlags` = 32768 WHERE `entry` = 3652;

-- Starving Buzzard 2829 - https://www.wowhead.com/npc=2829/starving-buzzard#comments:id=617007
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|2048 WHERE `entry` = 2829;

-- Add CREATURE_EXTRA_FLAG_NO_AGGRO_ON_SIGHT for certain civilian npcs due to Civilian (ExtraFlag 65536) / No Aggro on Sight (ExtraFlag 2) conversion
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|2 WHERE `entry` IN (
6244, -- Takar the Seer
10079, -- Brave Moonhorn
11748, -- Samantha Swifthoof
12576 -- Grish Longrunner
);
