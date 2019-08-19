-- Correct Equipment for Bleeding Hollow Archer 17270
-- https://www.wowhead.com/npc=17270/bleeding-hollow-archer#screenshots:id=20110
-- [2] UNIT_VIRTUAL_ITEM_SLOT_ID: 12629/1.7697E-41
-- [2] UNIT_VIRTUAL_ITEM_SLOT_ID + 4: 23889/3.347562E-41
UPDATE `creature_equip_template` SET `equipentry2` = 0 WHERE `entry` = 17270;

