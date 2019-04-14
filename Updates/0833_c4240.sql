-- Remove wrong equipment for Caynrus 4240
-- here he has a staff but nothing in sniff https://www.wowhead.com/npc=4240/caynrus#screenshots:id=249052
UPDATE `creature` SET `modelid` = 0 WHERE `id` = 4240;
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 4240;
DELETE FROM `creature_equip_template` WHERE `entry` = 4240;

