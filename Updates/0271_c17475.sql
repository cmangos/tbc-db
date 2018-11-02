-- Remove wrong Equipment for Murgurgula 17475 thx @Phentora
-- https://de.wowhead.com/npc=17475/murgurgula#screenshots:id=461905
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 17475;
DELETE FROM `creature_equip_template` WHERE `entry` = 17475;

