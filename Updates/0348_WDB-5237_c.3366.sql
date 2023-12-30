-- Tamar 3366
-- vendor list corrected
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 3366;
DELETE FROM `npc_vendor` WHERE `entry` = 3366;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(3366, 2320, 0, 0, 3, 0, 'Coarse Thread'),
(3366, 2321, 0, 0, 4, 0, 'Fine Thread'),
(3366, 2325, 0, 0, 9, 0, 'Black Dye'),
(3366, 2604, 0, 0, 11, 0, 'Red Dye'),
(3366, 2605, 0, 0, 12, 0, 'Green Dye'),
(3366, 4289, 0, 0, 2, 0, 'Salt'),
(3366, 4291, 0, 0, 5, 0, 'Silken Thread'),
(3366, 4340, 0, 0, 13, 0, 'Gray Dye'),
(3366, 4341, 0, 0, 14, 0, 'Yellow Dye'),
(3366, 4342, 0, 0, 16, 0, 'Purple Dye'),
(3366, 6260, 0, 0, 10, 0, 'Blue Dye'),
(3366, 6261, 0, 0, 15, 0, 'Orange Dye'),
(3366, 7005, 0, 0, 1, 0, 'Skinning Knife'),
(3366, 8343, 0, 0, 6, 0, 'Heavy Silken Thread'),
(3366, 10290, 0, 0, 17, 0, 'Pink Dye'),
(3366, 14341, 0, 0, 7, 0, 'Rune Thread'),
(3366, 18731, 1, 7200, 18, 0, 'Pattern: Heavy Leather Ball'); -- unique items require all items to be in npc_vendor, because slot priority is npc_vendor > npc_vendor_template : then by slot.

