-- Correct Equipment for Time-Lost Scryer 18319
-- https://www.wowhead.com/npc=18319/time-lost-scryer#screenshots:id=171574
-- [1] UNIT_VIRTUAL_ITEM_SLOT_ID: 2711/3.79892E-42
UPDATE `creature_equip_template` SET `equipentry2` = 0 WHERE `entry` = 18319; -- 12750

