-- Borya 3364
-- all patterns available at same time
-- vendor list corrected
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 3364;
DELETE FROM `npc_vendor` WHERE `entry` = 3364;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(3364, 2320, 0, 0, 1, 0, 0, 'Coarse Thread'),
(3364, 2321, 0, 0, 2, 0, 0, 'Fine Thread'),
(3364, 4291, 0, 0, 3, 0, 0, 'Silken Thread'),
(3364, 8343, 0, 0, 4, 0, 0, 'Heavy Silken Thread'),
(3364, 14341, 0, 0, 5, 0, 0, 'Rune Thread'),
-- 38426; -- Eternium Thread
(3364, 2324, 0, 0, 7, 0, 0, 'Bleach'),
(3364, 2604, 0, 0, 8, 0, 0, 'Red Dye'),
(3364, 6260, 0, 0, 9, 0, 0, 'Blue Dye'),
(3364, 2605, 0, 0, 10, 0, 0, 'Green Dye'),
(3364, 4341, 0, 0, 11, 0, 0, 'Yellow Dye'),
(3364, 4340, 0, 0, 12, 0, 0, 'Gray Dye'),
(3364, 6261, 0, 0, 13, 0, 0, 'Orange Dye'),
(3364, 2325, 0, 0, 14, 0, 0, 'Black Dye'),
(3364, 4342, 0, 0, 15, 0, 0, 'Purple Dye'),
(3364, 10290, 0, 0, 16, 0, 0, 'Pink Dye'),
(3364, 5772, 1, 7200, 17, 0, 0, 'Pattern: Red Woolen Bag'), -- vmangos order
(3364, 6270, 1, 9000, 18, 0, 0, 'Pattern: Blue Linen Vest'),
(3364, 6274, 1, 7200, 19, 0, 0, 'Pattern: Blue Overalls'),
(3364, 10314, 1, 7200, 20, 0, 0, 'Pattern: Lavender Mageweave Shirt'),
(3364, 10317, 1, 7200, 21, 0, 0, 'Pattern: Pink Mageweave Shirt');

