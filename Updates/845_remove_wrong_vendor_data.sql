-- Remove wrong vendor data
DELETE FROM `npc_vendor` WHERE `item` = 5503; -- Clam Meat

DELETE FROM `npc_vendor` WHERE `item` = 6948; -- Hearthstone
DELETE FROM `npc_vendor_template` WHERE `item` = 6948; -- Hearthstone

