-- Fargon Mortalak 2845
-- vendor list corrected
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 2845;
DELETE FROM `npc_vendor` WHERE `entry` = 2845;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(2845, 2417, 0, 0, 1, 0, 0, 'Augmented Chain Vest'),
(2845, 2419, 0, 0, 2, 0, 0, 'Augmented Chain Belt'),
(2845, 2418, 0, 0, 3, 0, 0, 'Augmented Chain Leggings'),
(2845, 2420, 0, 0, 4, 0, 0, 'Augmented Chain Boots'),
(2845, 2421, 0, 0, 5, 0, 0, 'Augmented Chain Bracers'),
(2845, 2422, 0, 0, 6, 0, 0, 'Augmented Chain Gloves'),
(2845, 3891, 0, 0, 7, 0, 0, 'Augmented Chain Helm'),
(2845, 17189, 0, 0, 8, 0, 0, 'Metal Buckler'),
(2845, 2448, 0, 0, 9, 0, 0, 'Heavy Pavise'),
(2845, 12257, 1, 9000, 10, 0, 0, 'Heavy Notched Belt'); -- missing

UPDATE npc_vendor_template SET Slot = 1 WHERE entry IN (237) AND item = 2417; -- Augmented Chain Vest
UPDATE npc_vendor_template SET Slot = 2 WHERE entry IN (237) AND item = 2419; -- Augmented Chain Belt
UPDATE npc_vendor_template SET Slot = 3 WHERE entry IN (237) AND item = 2418; -- Augmented Chain Leggings
UPDATE npc_vendor_template SET Slot = 4 WHERE entry IN (237) AND item = 2420; -- Augmented Chain Boots
UPDATE npc_vendor_template SET Slot = 5 WHERE entry IN (237) AND item = 2421; -- Augmented Chain Bracers
UPDATE npc_vendor_template SET Slot = 6 WHERE entry IN (237) AND item = 2422; -- Augmented Chain Gloves
UPDATE npc_vendor_template SET Slot = 7 WHERE entry IN (237) AND item = 3891; -- Augmented Chain Helm
UPDATE npc_vendor_template SET Slot = 8 WHERE entry IN (237) AND item = 17189; -- Metal Buckler
UPDATE npc_vendor_template SET Slot = 9 WHERE entry IN (237) AND item = 2448; -- Heavy Pavise

