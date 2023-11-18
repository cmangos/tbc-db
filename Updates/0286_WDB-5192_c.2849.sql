-- Qixdi Goodstitch 2849
-- vendor list corrected
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 2849;
DELETE FROM `npc_vendor` WHERE `entry` =  2849;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(2849, 7338, 0, 0, 1, 0, 0, 'Mood Ring'),
(2849, 7341, 0, 0, 2, 0, 0, 'Cubic Zirconia Ring'),
(2849, 7342, 0, 0, 3, 0, 0, 'Silver Piffeny Band'),
(2849, 7339, 0, 0, 4, 0, 0, 'Miniscule Diamond Ring'),
(2849, 7340, 0, 0, 5, 0, 0, 'Flawless Diamond Solitaire'),
(2849, 7337, 0, 0, 6, 0, 0, 'The Rock'),
(2849, 200, 0, 0, 8, 0, 0, 'Thick Cloth Vest'),
(2849, 3597, 0, 0, 9, 0, 0, 'Thick Cloth Belt'),
(2849, 201, 0, 0, 10, 0, 0, 'Thick Cloth Pants'),
(2849, 202, 0, 0, 11, 0, 0, 'Thick Cloth Shoes'),
(2849, 3598, 0, 0, 12, 0, 0, 'Thick Cloth Bracers'),
(2849, 203, 0, 0, 13, 0, 0, 'Thick Cloth Gloves'),
(2849, 2160, 0, 0, 14, 0, 0, 'Padded Armor'),
(2849, 3591, 0, 0, 15, 0, 0, 'Padded Belt'),
(2849, 2159, 0, 0, 16, 0, 0, 'Padded Pants'),
(2849, 2156, 0, 0, 17, 0, 0, 'Padded Boots'),
(2849, 3592, 0, 0, 18, 0, 0, 'Padded Bracers'),
(2849, 2158, 0, 0, 19, 0, 0, 'Padded Gloves'),
(2849, 2429, 0, 0, 20, 0, 0, 'Russet Vest'),
(2849, 3593, 0, 0, 21, 0, 0, 'Russet Belt'),
(2849, 2431, 0, 0, 22, 0, 0, 'Russet Pants'),
(2849, 2432, 0, 0, 23, 0, 0, 'Russet Boots'),
(2849, 3594, 0, 0, 24, 0, 0, 'Russet Bracers'),
(2849, 2434, 0, 0, 25, 0, 0, 'Russet Gloves'),
(2849, 3889, 0, 0, 26, 0, 0, 'Russet Hat'),
(2849, 2435, 0, 0, 27, 0, 0, 'Embroidered Armor'),
(2849, 3587, 0, 0, 28, 0, 0, 'Embroidered Belt'),
(2849, 2437, 0, 0, 29, 0, 0, 'Embroidered Pants'),
(2849, 2438, 0, 0, 30, 0, 0, 'Embroidered Boots'),
(2849, 3588, 0, 0, 31, 0, 0, 'Embroidered Bracers'),
(2849, 2440, 0, 0, 32, 0, 0, 'Embroidered Gloves'),
(2849, 3892, 0, 0, 33, 0, 0, 'Embroidered Hat');

UPDATE npc_vendor_template SET Slot = 7 WHERE entry IN (209) AND item = 200; -- Thick Cloth Vest
UPDATE npc_vendor_template SET Slot = 8 WHERE entry IN (209) AND item = 3597; -- Thick Cloth Belt
UPDATE npc_vendor_template SET Slot = 9 WHERE entry IN (209) AND item = 201; -- Thick Cloth Pants
UPDATE npc_vendor_template SET Slot = 10 WHERE entry IN (209) AND item = 202; -- Thick Cloth Shoes
UPDATE npc_vendor_template SET Slot = 11 WHERE entry IN (209) AND item = 3598; -- Thick Cloth Bracers
UPDATE npc_vendor_template SET Slot = 12 WHERE entry IN (209) AND item = 203; -- Thick Cloth Gloves
UPDATE npc_vendor_template SET Slot = 13 WHERE entry IN (209) AND item = 2160; -- Padded Armor
UPDATE npc_vendor_template SET Slot = 14 WHERE entry IN (209) AND item = 3591; -- Padded Belt
UPDATE npc_vendor_template SET Slot = 15 WHERE entry IN (209) AND item = 2159; -- Padded Pants
UPDATE npc_vendor_template SET Slot = 16 WHERE entry IN (209) AND item = 2156; -- Padded Boots
UPDATE npc_vendor_template SET Slot = 17 WHERE entry IN (209) AND item = 3592; -- Padded Bracers
UPDATE npc_vendor_template SET Slot = 18 WHERE entry IN (209) AND item = 2158; -- Padded Gloves

