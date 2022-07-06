-- vendor slots corrected
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` IN (1198,2046); -- 303,233
DELETE FROM `npc_vendor` WHERE entry IN (1198,2046);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
-- Rallic Finn 1198
('1198','2506','0','0','5','0','0','Hornwood Recurve Bow'),
('1198','2507','0','0','6','0','0','Laminated Recurve Bow'),
('1198','2512','0','0','3','0','0','Rough Arrow'),
('1198','2515','0','0','4','0','0','Sharp Arrow'),
('1198','5439','0','0','1','0','0','Small Quiver'),
('1198','11303','1','9000','7','0','0','Fine Shortbow'),
('1198','11362','0','0','2','0','0','Medium Quiver'),
-- Andrew Krighton 2046
('2046','1201','0','0','8','0','0','Dull Heater Shield'),
('2046','2392','0','0','1','0','0','Light Mail Armor'),
('2046','2393','0','0','2','0','0','Light Mail Belt'),
('2046','2394','0','0','3','0','0','Light Mail Leggings'),
('2046','2395','0','0','4','0','0','Light Mail Boots'),
('2046','2396','0','0','5','0','0','Light Mail Bracers'),
('2046','2397','0','0','6','0','0','Light Mail Gloves'),
('2046','17186','0','0','7','0','0','Small Targe');

-- without unique item would be npc 3589,1198,3165,3610
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 303 AND `item` = 5439; -- Small Quiver
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 303 AND `item` = 11362; -- Medium Quiver
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 303 AND `item` = 2512; -- Rough Arrow;
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 303 AND `item` = 2515; -- Sharp Arrow
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 303 AND `item` = 2506; -- Hornwood Recurve Bow
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 303 AND `item` = 2507; -- Laminated Recurve Bow

-- + shields would be npc 5106,3613,2046,1249
UPDATE `npc_vendor_template` SET `slot` = 1 WHERE `entry` = 233 AND `item` = 2392; -- Light Mail Armor
UPDATE `npc_vendor_template` SET `slot` = 2 WHERE `entry` = 233 AND `item` = 2393; -- Light Mail Belt
UPDATE `npc_vendor_template` SET `slot` = 3 WHERE `entry` = 233 AND `item` = 2394; -- Light Mail Leggings
UPDATE `npc_vendor_template` SET `slot` = 4 WHERE `entry` = 233 AND `item` = 2395; -- Light Mail Boots
UPDATE `npc_vendor_template` SET `slot` = 5 WHERE `entry` = 233 AND `item` = 2396; -- Light Mail Bracers
UPDATE `npc_vendor_template` SET `slot` = 6 WHERE `entry` = 233 AND `item` = 2397; -- Light Mail Gloves

