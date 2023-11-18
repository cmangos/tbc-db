-- Xizk Goodstitch 2670
-- vendor list corrected
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 2670;
DELETE FROM `npc_vendor` WHERE `entry` = 2670;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(2670, 2320, 0, 0, 1, 0, 0, 'Coarse Thread'),
(2670, 2321, 0, 0, 2, 0, 0, 'Fine Thread'),
(2670, 4291, 0, 0, 3, 0, 0, 'Silken Thread'),
(2670, 8343, 0, 0, 4, 0, 0, 'Heavy Silken Thread'),
(2670, 14341, 0, 0, 5, 0, 0, 'Rune Thread'),
(2670, 38426, 0, 0, 6, 0, 0, 'Eternium Thread'),
(2670, 2324, 0, 0, 7, 0, 0, 'Bleach'),
(2670, 2604, 0, 0, 8, 0, 0, 'Red Dye'),
(2670, 6260, 0, 0, 9, 0, 0, 'Blue Dye'),
(2670, 2605, 0, 0, 10, 0, 0, 'Green Dye'),
(2670, 4341, 0, 0, 11, 0, 0, 'Yellow Dye'),
(2670, 4340, 0, 0, 12, 0, 0, 'Gray Dye'),
(2670, 6261, 0, 0, 13, 0, 0, 'Orange Dye'),
(2670, 2325, 0, 0, 14, 0, 0, 'Black Dye'),
(2670, 4342, 0, 0, 15, 0, 0, 'Purple Dye'),
(2670, 10290, 0, 0, 16, 0, 0, 'Pink Dye'),
(2670, 14630, 1, 9000, 17, 0, 0, 'Pattern: Enchanter\'s Cowl'), -- were missing limited supply in tbcmangos!
(2670, 7087, 1, 9000, 18, 0, 0, 'Pattern: Crimson Silk Cloak');

UPDATE npc_vendor_template SET Slot = 1 WHERE entry IN (140) AND item = 2320; -- Coarse Thread
UPDATE npc_vendor_template SET Slot = 2 WHERE entry IN (140) AND item = 2321; -- Fine Thread
UPDATE npc_vendor_template SET Slot = 3 WHERE entry IN (140) AND item = 4291; -- Silken Thread
UPDATE npc_vendor_template SET Slot = 4 WHERE entry IN (140) AND item = 8343; -- Heavy Silken Thread
UPDATE npc_vendor_template SET Slot = 5 WHERE entry IN (140) AND item = 14341; -- Rune Thread
UPDATE npc_vendor_template SET Slot = 6 WHERE entry IN (140) AND item = 38426; -- Eternium Thread
UPDATE npc_vendor_template SET Slot = 7 WHERE entry IN (140) AND item = 2324; -- Bleach
UPDATE npc_vendor_template SET Slot = 8 WHERE entry IN (140) AND item = 6260; -- Blue Dye
UPDATE npc_vendor_template SET Slot = 9 WHERE entry IN (140) AND item = 2604; -- Red Dye
UPDATE npc_vendor_template SET Slot = 10 WHERE entry IN (140) AND item = 2605; -- Green Dye
UPDATE npc_vendor_template SET Slot = 11 WHERE entry IN (140) AND item = 4341; -- Yellow Dye
UPDATE npc_vendor_template SET Slot = 12 WHERE entry IN (140) AND item = 4340; -- Gray Dye
UPDATE npc_vendor_template SET Slot = 13 WHERE entry IN (140) AND item = 6261; -- Orange Dye
UPDATE npc_vendor_template SET Slot = 14 WHERE entry IN (140) AND item = 2325; -- Black Dye
UPDATE npc_vendor_template SET Slot = 15 WHERE entry IN (140) AND item = 4342; -- Purple Dye
UPDATE npc_vendor_template SET Slot = 16 WHERE entry IN (140) AND item = 10290; -- Pink Dye

