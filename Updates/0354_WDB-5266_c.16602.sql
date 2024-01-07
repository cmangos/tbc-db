-- Floyd Pinkus 16602
-- Vendor list corrected
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 16602;
DELETE FROM `npc_vendor` WHERE `entry` = 16602;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(16602, 8952, 0, 0, 1, 0, 0, 'Roasted Quail'),
(16602, 27854, 0, 0, 2, 0, 0, 'Smoked Talbuk Venison'),
(16602, 29451, 0, 0, 3, 0, 0, 'Clefthoof Ribs'),
(16602, 8766, 0, 0, 4, 0, 0, 'Morning Glory Dew'),
(16602, 28399, 0, 0, 5, 0, 0, 'Filtered Draenic Water'),
(16602, 27860, 0, 0, 6, 0, 0, 'Purified Draenic Water'),
(16602, 11285, 0, 0, 7, 0, 0, 'Jagged Arrow'),
(16602, 28053, 0, 0, 8, 0, 0, 'Wicked Arrow'),
(16602, 28056, 0, 0, 9, 0, 0, 'Blackflight Arrow'),
(16602, 11284, 0, 0, 10, 0, 0, 'Accurate Slugs'),
(16602, 28060, 0, 0, 11, 0, 0, 'Impact Shot'),
(16602, 28061, 0, 0, 12, 0, 0, 'Ironbite Shell'),
(16602, 14341, 0, 0, 13, 0, 0, 'Rune Thread'),
(16602, 18256, 0, 0, 14, 0, 0, 'Imbued Vial'),
(16602, 6532, 0, 0, 15, 0, 0, 'Bright Baubles'),
-- 10648; -- Common Parchment 16
(16602, 30744, 0, 0, 17, 0, 0, 'Draenic Leather Pack'),
(16602, 30748, 1, 43200, 18, 0, 0, 'Enchanter\'s Satchel'),
(16602, 30747, 1, 43200, 19, 0, 0, 'Gem Pouch'),
(16602, 30746, 1, 43200, 20, 0, 0, 'Mining Sack'),
(16602, 30745, 1, 43200, 21, 0, 0, 'Heavy Toolbox'),
(16602, 4470, 0, 0, 22, 0, 0, 'Simple Wood'), -- slot wrong
(16602, 4471, 0, 0, 23, 0, 0, 'Flint and Tinder'), -- slot wrong
(16602, 3713, 0, 0, 24, 0, 0, 'Soothing Spices'); -- slot wrong

-- (16602, 29014, 0, 0, 0, 0, 0, 'Blacksteel Throwing Dagger'),
-- (16602, 29013, 0, 0, 0, 0, 0, 'Jagged Throwing Axe'),
-- (16602, 2928, 0, 0, 0, 0, 0, 'Dust of Decay');

