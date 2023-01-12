-- Align Enchanting Supplies Vendors & Add VendorSlots
UPDATE `creature_template` SET `VendorTemplateId` = 131 WHERE `VendorTemplateId` = 132; -- Delete this duplicate (all sell limited supply 10938,10940,6342)
UPDATE `creature_template` SET `VendorTemplateId` = 131 WHERE `entry` IN (3012,3346,4228);
DELETE FROM `npc_vendor` WHERE `entry` IN (1318,4617,5158,5757,5758,15198,15419,16635,16722,18753,18773,18951,19234,19537,19663,3012,3346,4228) AND `item` IN (6217,10940,10938,4470,11291,20758,20752,20753,6342,22307);
DELETE FROM `npc_vendor_template` WHERE `entry` = 132; -- same as 131 but without limited stock items

-- Jessara Cordell
-- Nata Dawnstrider (unique items behind and infront)
-- Kithas (unique items behind and infront)
-- Vaean
-- Thaddeus Webb
-- Tilli Thistlefuzz (unique item behind)
-- Leo Sarn (unique item infront)
-- Kania (unique items infront)
-- Lilly
UPDATE `npc_vendor_template` SET `slot`=101 WHERE `entry`=131 && `item`=6217; -- Copper Rod
UPDATE `npc_vendor_template` SET `slot`=102 WHERE `entry`=131 && `item`=10940; -- Strange Dust
UPDATE `npc_vendor_template` SET `slot`=103 WHERE `entry`=131 && `item`=10938; -- Lesser Magic Essence
UPDATE `npc_vendor_template` SET `slot`=104 WHERE `entry`=131 && `item`=4470; -- Simple Wood
UPDATE `npc_vendor_template` SET `slot`=105 WHERE `entry`=131 && `item`=11291; -- Star Wood
UPDATE `npc_vendor_template` SET `slot`=106 WHERE `entry`=131 && `item`=20758; -- Formula: Minor Wizard Oil
UPDATE `npc_vendor_template` SET `slot`=107 WHERE `entry`=131 && `item`=20752; -- Formula: Minor Mana Oil
UPDATE `npc_vendor_template` SET `slot`=108 WHERE `entry`=131 && `item`=20753; -- Formula: Lesser Wizard Oil
UPDATE `npc_vendor_template` SET `slot`=109 WHERE `entry`=131 && `item`=6342; -- Formula: Enchant Chest - Minor Mana
UPDATE `npc_vendor_template` SET `slot`=110 WHERE `entry`=131 && `item`=22307; -- Pattern: Enchanted Mageweave Pouch

-- UPDATE `npc_vendor` SET `slot`=101 WHERE `entry`=1318 && `item`=6217; -- Copper Rod
-- UPDATE `npc_vendor` SET `slot`=102 WHERE `entry`=1318 && `item`=10940; -- Strange Dust
-- UPDATE `npc_vendor` SET `slot`=103 WHERE `entry`=1318 && `item`=10938; -- Lesser Magic Essence
-- UPDATE `npc_vendor` SET `slot`=104 WHERE `entry`=1318 && `item`=4470; -- Simple Wood
-- UPDATE `npc_vendor` SET `slot`=105 WHERE `entry`=1318 && `item`=11291; -- Star Wood
-- UPDATE `npc_vendor` SET `slot`=106 WHERE `entry`=1318 && `item`=20758; -- Formula: Minor Wizard Oil
-- UPDATE `npc_vendor` SET `slot`=107 WHERE `entry`=1318 && `item`=20752; -- Formula: Minor Mana Oil
-- UPDATE `npc_vendor` SET `slot`=108 WHERE `entry`=1318 && `item`=20753; -- Formula: Lesser Wizard Oil
-- UPDATE `npc_vendor` SET `slot`=109 WHERE `entry`=1318 && `item`=6342; -- Formula: Enchant Chest - Minor Mana
-- UPDATE `npc_vendor` SET `slot`=110 WHERE `entry`=1318 && `item`=22307; -- Pattern: Enchanted Mageweave Pouch

DELETE FROM `npc_vendor` WHERE `entry` = 5758 AND `item` = 6349; -- missing
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(5758, 6349, 1, 7200, 0, 0, 0, 'Formula: Enchant 2H Weapon - Lesser Intellect');
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 7200 WHERE `item` = 6349; -- 5158

-- 15198	Blackwing - wrong vendor (npcflags 128 supposedly) - not found in sniff, removing flag too
-- https://www.wowhead.com/tbc/npc=15198/blackwing
DELETE FROM `npc_vendor` WHERE `entry` = 15198;
UPDATE `creature_template` SET `VendorTemplateId` = 0, `NpcFlags` = 0 WHERE `entry` = 15198;

-- add correct vendor! (also pops dberror)
-- https://www.wowhead.com/tbc/npc=19540/asarnan#sells
DELETE FROM `npc_vendor` WHERE `entry` = 19540;
UPDATE `creature_template` SET `VendorTemplateId` = 131 WHERE `entry` = 19540; -- 10 items

