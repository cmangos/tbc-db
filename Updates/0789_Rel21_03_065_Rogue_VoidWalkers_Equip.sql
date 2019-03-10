-- Remove equipment from Rogue Voidwalkers 16974, screen shows it with but 2008 sniff already has it removed and wotlk comment also says its not there anymore
-- https://www.wowhead.com/npc=16974/rogue-voidwalker#screenshots:id=31449
-- https://github.com/mangosone/database/commit/f29d2557ee966a7cfb83bb24b060a6d80571f36a
UPDATE `creature_template` SET `EquipmentTemplateId`=0 WHERE `entry` =16974;
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 16974); -- s.34303 is executed in another way, not as passive in _addon
UPDATE `creature` SET `spawndist`  = 5, `MovementType` = 1 WHERE `guid` = 59359 AND `id` = 16974;

-- Uncontrolled Voidwalker 16975
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 16975); -- s.34303 is executed in another way, not as passive in _addon
UPDATE `creature` SET `spawndist`  = 5, `MovementType` = 1 WHERE `guid` = 59363 AND `id` = 16975;

