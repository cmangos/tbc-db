-- Nixxrax Fillamug 2832
-- vendor list corrected
-- special
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` = 2832; -- 415
DELETE FROM `npc_vendor` WHERE `entry` = 2832;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(2832, 4600, 0, 0, 1, 0, 0, 'Cherry Grog'),
(2832, 4595, 0, 0, 2, 0, 0, 'Junglevine Wine'),
(2832, 159, 0, 0, 3, 0, 0, 'Refreshing Spring Water'),
(2832, 1179, 0, 0, 4, 0, 0, 'Ice Cold Milk'),
(2832, 1205, 0, 0, 5, 0, 0, 'Melon Juice'),
(2832, 1708, 0, 0, 6, 0, 0, 'Sweet Nectar'),
(2832, 1645, 0, 0, 7, 0, 0, 'Moonberry Juice'),
(2832, 8766, 0, 0, 8, 0, 0, 'Morning Glory Dew'),
(2832, 2723, 0, 0, 9, 0, 0, 'Bottle of Pinot Noir'),
(2832, 2593, 0, 0, 10, 0, 0, 'Flask of Port'),
(2832, 2596, 0, 0, 11, 0, 0, 'Skin of Dwarven Stout'),
(2832, 2594, 0, 0, 12, 0, 0, 'Flagon of Mead'),
(2832, 2595, 0, 0, 13, 0, 0, 'Jug of Bourbon'),
(2832, 4540, 0, 0, 14, 0, 0, 'Tough Hunk of Bread'),
(2832, 4541, 0, 0, 15, 0, 0, 'Freshly Baked Bread'),
(2832, 4542, 0, 0, 16, 0, 0, 'Moist Cornbread'),
(2832, 4544, 0, 0, 17, 0, 0, 'Mulgore Spice Bread'),
(2832, 4601, 0, 0, 18, 0, 0, 'Soft Banana Bread'),
(2832, 8950, 0, 0, 19, 0, 0, 'Homemade Cherry Pie');

-- Nixxrax Fillamug
UPDATE `npc_vendor_template` SET `slot`=3 WHERE `entry`=415 && `item`=159; -- Refreshing Spring Water
UPDATE `npc_vendor_template` SET `slot`=4 WHERE `entry`=415 && `item`=1179; -- Ice Cold Milk
UPDATE `npc_vendor_template` SET `slot`=5 WHERE `entry`=415 && `item`=1205; -- Melon Juice
UPDATE `npc_vendor_template` SET `slot`=6 WHERE `entry`=415 && `item`=1708; -- Sweet Nectar
UPDATE `npc_vendor_template` SET `slot`=7 WHERE `entry`=415 && `item`=1645; -- Moonberry Juice
UPDATE `npc_vendor_template` SET `slot`=8 WHERE `entry`=415 && `item`=8766; -- Morning Glory Dew
UPDATE `npc_vendor_template` SET `slot`=14 WHERE `entry`=415 && `item`=4540; -- Tough Hunk of Bread
UPDATE `npc_vendor_template` SET `slot`=15 WHERE `entry`=415 && `item`=4541; -- Freshly Baked Bread
UPDATE `npc_vendor_template` SET `slot`=16 WHERE `entry`=415 && `item`=4542; -- Moist Cornbread
UPDATE `npc_vendor_template` SET `slot`=17 WHERE `entry`=415 && `item`=4544; -- Mulgore Spice Bread
UPDATE `npc_vendor_template` SET `slot`=18 WHERE `entry`=415 && `item`=4601; -- Soft Banana Bread
UPDATE `npc_vendor_template` SET `slot`=19 WHERE `entry`=415 && `item`=8950; -- Homemade Cherry Pie

