-- Blixrez Goodstitch 2846
-- vendor list corrected
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 2846;
DELETE FROM `npc_vendor` WHERE `entry` =  2846;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(2846, 7005, 0, 0, 0, 0, 0, 'Skinning Knife'),
(2846, 4289, 0, 0, 1, 0, 0, 'Salt'),
(2846, 2320, 0, 0, 2, 0, 0, 'Coarse Thread'),
(2846, 2321, 0, 0, 3, 0, 0, 'Fine Thread'),
(2846, 4291, 0, 0, 4, 0, 0, 'Silken Thread'),
(2846, 8343, 0, 0, 5, 0, 0, 'Heavy Silken Thread'),
(2846, 14341, 0, 0, 6, 0, 0, 'Rune Thread'),
-- (2846, 38426, 0, 0, 7, 0, 0, 'Eternium Thread'),
(2846, 2325, 0, 0, 8, 0, 0, 'Black Dye'),
(2846, 6260, 0, 0, 9, 0, 0, 'Blue Dye'),
(2846, 2604, 0, 0, 10, 0, 0, 'Red Dye'),
(2846, 2605, 0, 0, 11, 0, 0, 'Green Dye'),
(2846, 4340, 0, 0, 12, 0, 0, 'Gray Dye'),
(2846, 4341, 0, 0, 13, 0, 0, 'Yellow Dye'),
(2846, 6261, 0, 0, 14, 0, 0, 'Orange Dye'),
(2846, 4342, 0, 0, 15, 0, 0, 'Purple Dye'),
(2846, 10290, 0, 0, 16, 0, 0, 'Pink Dye'),
(2846, 5788, 1, 3600, 17, 0, 0, 'Pattern: Thick Murloc Armor'),
(2846, 5789, 1, 3600, 18, 0, 0, 'Pattern: Murloc Scale Bracers');

UPDATE npc_vendor_template SET Slot = 1 WHERE entry IN (141) AND item = 7005; -- Skinning Knife
UPDATE npc_vendor_template SET Slot = 2 WHERE entry IN (141) AND item = 4289; -- Salt
UPDATE npc_vendor_template SET Slot = 3  WHERE entry IN (141) AND item = 2320; -- Coarse Thread
UPDATE npc_vendor_template SET Slot = 4  WHERE entry IN (141) AND item = 2321; -- Fine Thread
UPDATE npc_vendor_template SET Slot = 5  WHERE entry IN (141) AND item = 4291; -- Silken Thread
UPDATE npc_vendor_template SET Slot = 6  WHERE entry IN (141) AND item = 8343; -- Heavy Silken Thread
UPDATE npc_vendor_template SET Slot = 7  WHERE entry IN (141) AND item = 14341; -- Rune Thread
UPDATE npc_vendor_template SET Slot = 8  WHERE entry IN (141) AND item = 38426; -- Eternium Thread
UPDATE npc_vendor_template SET Slot = 9  WHERE entry IN (141) AND item = 2325; -- Black Dye
UPDATE npc_vendor_template SET Slot = 10  WHERE entry IN (141) AND item = 6260; -- Blue Dye
UPDATE npc_vendor_template SET Slot = 11 WHERE entry IN (141) AND item = 2604; -- Red Dye
UPDATE npc_vendor_template SET Slot = 12 WHERE entry IN (141) AND item = 2605; -- Green Dye
UPDATE npc_vendor_template SET Slot = 13 WHERE entry IN (141) AND item = 4340; -- Gray Dye
UPDATE npc_vendor_template SET Slot = 14 WHERE entry IN (141) AND item = 4341; -- Yellow Dye
UPDATE npc_vendor_template SET Slot = 15 WHERE entry IN (141) AND item = 6261; -- Orange Dye
UPDATE npc_vendor_template SET Slot = 16 WHERE entry IN (141) AND item = 4342; -- Purple Dye
UPDATE npc_vendor_template SET Slot = 17 WHERE entry IN (141) AND item = 10290; -- Pink Dye

