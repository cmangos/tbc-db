-- Reinsert VendorList with Slot for Sab'aoth 22479
-- https://www.wowhead.com/tbc/npc=22479/sabaoth
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 22479;
DELETE FROM `npc_vendor` WHERE `entry` = 22479;
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `comments`) VALUES
(22479, 8924, 23, 'Dust of Deterioration'),
(22479, 8925, 20, 'Crystal Vial'),
(22479, 17034, 1, 'Maple Seed'),
(22479, 17035, 2, 'Stranglethorn Seed'),
(22479, 17036, 3, 'Ashwood Seed'),
(22479, 22148, 16, 'Wild Quillvine'),
(124, 2931, 26, 'Maiden\'s Anguish'),
(124, 3777, 22, 'Lethargy Root'),
(124, 5140, 21, 'Flash Powder'),
(124, 5173, 25, 'Deathweed'),
(124, 5565, 17, 'Infernal Stone'),
(124, 8923, 24, 'Essence of Agony'),
(124, 16583, 18, 'Demonic Figurine'),
(124, 17020, 9, 'Arcane Powder'),
(124, 17021, 14, 'Wild Berries'),
(124, 17026, 15, 'Wild Thornroot'),
(124, 17028, 12, 'Holy Candle'),
(124, 17029, 13, 'Sacred Candle'),
(124, 17030, 10, 'Ankh'),
(124, 17031, 7, 'Rune of Teleportation'),
(124, 17032, 8, 'Rune of Portals'),
(124, 17033, 11, 'Symbol of Divinity'),
(124, 17037, 4, 'Hornbeam Seed'),
(124, 17038, 5, 'Ironwood Seed'),
(124, 21177, 19, 'Symbol of Kings'),
(124, 22147, 6, 'Flintweed Seed');

-- Replace 124 with slot list
REPLACE INTO `npc_vendor_template` (`entry`, `item`, `slot`, `comments`) VALUES
(124, 2931, 26, 'Maiden\'s Anguish'),
(124, 3777, 22, 'Lethargy Root'),
(124, 5140, 21, 'Flash Powder'),
(124, 5173, 25, 'Deathweed'),
(124, 5565, 17, 'Infernal Stone'),
(124, 8923, 24, 'Essence of Agony'),
(124, 16583, 18, 'Demonic Figurine'),
(124, 17020, 9, 'Arcane Powder'),
(124, 17021, 14, 'Wild Berries'),
(124, 17026, 15, 'Wild Thornroot'),
(124, 17028, 12, 'Holy Candle'),
(124, 17029, 13, 'Sacred Candle'),
(124, 17030, 10, 'Ankh'),
(124, 17031, 7, 'Rune of Teleportation'),
(124, 17032, 8, 'Rune of Portals'),
(124, 17033, 11, 'Symbol of Divinity'),
(124, 17037, 4, 'Hornbeam Seed'),
(124, 17038, 5, 'Ironwood Seed'),
(124, 21177, 19, 'Symbol of Kings'),
(124, 22147, 6, 'Flintweed Seed');

