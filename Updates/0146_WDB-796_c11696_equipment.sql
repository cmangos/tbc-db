-- Correct Equipment for Chal Fairwind <Wintersaber Trainers> 11696
-- [2] GUID: Full: 0xF130002DB01F84C3 Entry: 11696 UInt64: 17379391158251128003
-- [2] (37) UNIT_VIRTUAL_ITEM_SLOT_DISPLAY_1: 7430 -> Monster - Claw 3494
-- [2] (37) UNIT_VIRTUAL_ITEM_SLOT_DISPLAY_2: 21144 -> Monster - Claw Offhand 11506
UPDATE `creature_template` SET `EquipmentTemplateId` = 11696 WHERE `entry` = 11696;
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 129; -- N/A "Angry Programmer Tweedle Dum" 129
DELETE FROM `creature_equip_template` WHERE `entry` IN (129,11696);
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (11696, 3494, 11506, 0);

