-- Innkeeper Skindle 6807
-- UPDATE gossip_menu_option SET id = 1 WHERE menu_id = 349 AND id = 3; -- 0,1,2,4
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE `entry` IN (5814,6727,6791,6807,8137,8931,14731) AND `item` = 21552;
DELETE FROM `npc_vendor_template` WHERE `entry` = 414 AND `item` = 21552;
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(414, 21552, 0, 0, 5, 0, 0, 'Striped Yellowtail');

UPDATE npc_vendor_template SET Slot = 1 WHERE entry IN (414) AND item = 787; -- Slitherskin Mackerel
UPDATE npc_vendor_template SET Slot = 2 WHERE entry IN (414) AND item = 4592; -- Longjaw Mud Snapper
UPDATE npc_vendor_template SET Slot = 3 WHERE entry IN (414) AND item = 4593; -- Bristle Whisker Catfish
UPDATE npc_vendor_template SET Slot = 4 WHERE entry IN (414) AND item = 4594; -- Rockscale Cod
-- UPDATE npc_vendor_template SET Slot = 5 WHERE entry IN (6807) AND item = 21552; -- Striped Yellowtail
UPDATE npc_vendor_template SET Slot = 6 WHERE entry IN (414) AND item = 8957; -- Spinefin Halibut
UPDATE npc_vendor_template SET Slot = 7 WHERE entry IN (414) AND item = 159; -- Refreshing Spring Water
UPDATE npc_vendor_template SET Slot = 8 WHERE entry IN (414) AND item = 1179; -- Ice Cold Milk
UPDATE npc_vendor_template SET Slot = 9 WHERE entry IN (414) AND item = 1205; -- Melon Juice
UPDATE npc_vendor_template SET Slot = 10 WHERE entry IN (414) AND item = 1708; -- Sweet Nectar
UPDATE npc_vendor_template SET Slot = 11 WHERE entry IN (414) AND item = 1645; -- Moonberry Juice
UPDATE npc_vendor_template SET Slot = 12 WHERE entry IN (414) AND item = 8766; -- Morning Glory Dew

