-- Correct VendorSlot List for Dealer Rashaad 20980
-- https://www.wowhead.com/tbc/npc=20980/dealer-rashaad
UPDATE `npc_vendor` SET `Slot` = 1 WHERE `entry` = 20980 AND `item` = 8495; -- Parrot Cage (Senegal)
UPDATE `npc_vendor` SET `Slot` = 2 WHERE `entry` = 20980 AND `item` = 8490; -- Cat Carrier (Siamese)
UPDATE `npc_vendor` SET `Slot` = 3 WHERE `entry` = 20980 AND `item` = 10393; -- Cockroach
UPDATE `npc_vendor` SET `Slot` = 4 WHERE `entry` = 20980 AND `item` = 10392; -- Crimson Snake
UPDATE `npc_vendor` SET `Slot` = 5 WHERE `entry` = 20980 AND `item` = 29364; -- Brown Rabbit Crate
UPDATE `npc_vendor` SET `Slot` = 6 WHERE `entry` = 20980 AND `item` = 29902; -- Red Moth Egg
UPDATE `npc_vendor` SET `Slot` = 7 WHERE `entry` = 20980 AND `item` = 29958; -- Blue Dragonhawk Hatchling
UPDATE `npc_vendor` SET `Slot` = 8 WHERE `entry` = 20980 AND `item` = 29363; -- Mana Wyrmling

