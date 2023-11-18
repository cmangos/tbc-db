-- <Blacksmithing Supplies>
-- They all have the same vendor list - so can be moved to template (already exist):

-- Thrawn Boltar 1690
-- Hurklor 2844
-- Jansen Underwood 2847
-- Taur Stonehoof 2999
-- Grelkor 3343
-- Hraq 3477
-- Lana Thunderbrew 4257
-- Thurgrum Deepforge 4259
-- Samuel Van Brunt 4597
-- Elisa Steelhand 6300
-- Smith Slagtree 14737
-- Arathel Sunforge 15400
-- Craftsman Wilhelm 16376
-- Humphry 16823
-- Blacksmith Calypso 17245
-- Blacksmith Frances 17655
-- Cecil Meyers 19056
-- Lelagar 19520
-- Darmend 19530
-- Horvon the Armorer 19879
-- Yarley 20082
-- Apprentice Andrethan 20463
-- Ogri'la Steelshaper 22264
-- Aundro 22476
-- Gug 23144
-- Samir 23724
-- Jhet Ironbeard 23908
-- Eldrim Mounder 24052
-- Willis Wobblewheel 26599
-- Siegesmith Gulda 27019
-- Master Smith Devin Brevig 27045
-- Brom Armstrong 27062
-- Smith Prigka 27134
-- Quartermaster Bartlett 27267
-- Blazzle 28344
-- Palja Amboss 28716
-- Arlen Brighthammer 28796
-- Jason Riggins 29252
-- Koloth 29253
-- Dagni Oregleam 29923
-- Dargum Hammerdeep 29964
-- Ontak 29969
-- Lanudal Silverhart 30241
-- Felindel Sunhammer 30253
-- Runesmith Balehammer 30336
-- Halig Fireforge 30436
-- Brock Thriss 31024
-- Calder 32594
-- Brollen Wheatbeard 33599
-- Barien 33631
-- Onodo 33675
DELETE FROM npc_vendor WHERE entry IN (
1690,2844,2847,2999,3343,3477,4257,4259,4597,6300,14737,15400,16376,16823,17245,17655,19056,19520,19530,19879,
20082,20463,22264,22476,23144,23724,23908,24052,26599,27019,27045,27062,27134,27267,28344,28716,28796,29252,
29253,29923,29964,29969,30241,30253,30336,30436,31024,32594,33599,33631,33675); -- only 28344 left in tbc.
UPDATE creature_template SET VendorTemplateId = 116 WHERE entry IN (14624,28344);
-- make it in correct order
UPDATE npc_vendor_template SET Slot = 1 WHERE entry IN (116) AND item = 2901; -- Mining Pick
UPDATE npc_vendor_template SET Slot = 2 WHERE entry IN (116) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor_template SET Slot = 3 WHERE entry IN (116) AND item = 2880; -- Weak Flux
UPDATE npc_vendor_template SET Slot = 4 WHERE entry IN (116) AND item = 3466; -- Strong Flux
UPDATE npc_vendor_template SET Slot = 5 WHERE entry IN (116) AND item = 18567; -- Elemental Flux
UPDATE npc_vendor_template SET Slot = 6 WHERE entry IN (116) AND item = 3857; -- Coal

-- Below - all NPCs that have same base + few addons
UPDATE `creature_template` SET `VendorTemplateId` = 0 WHERE `entry` IN (3356,5512,5411,8161,8176,9179,19012,15176,16583,16670,16713,19011,19012,19342,19662);
DELETE FROM `npc_vendor` WHERE `entry` IN (3356,5512,5411,8161,8176,9179,14624,19012,15176,16583,16670,16713,19011,19012,19342,19662);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
-- Sumi 3356 - 7
(3356, 2901, 0, 0, 1, 0, 0, 'Mining Pick'),
(3356, 5956, 0, 0, 2, 0, 0, 'Blacksmith Hammer'),
(3356, 2880, 0, 0, 3, 0, 0, 'Weak Flux'),
(3356, 3466, 0, 0, 4, 0, 0, 'Strong Flux'),
(3356, 18567, 0, 0, 5, 0, 0, 'Elemental Flux'),
(3356, 3857, 0, 0, 6, 0, 0, 'Coal'),
(3356, 12162, 1, 7200, 7, 0, 0, 'Plans: Hardened Iron Shortsword'),
-- Kaita Deepforge 5512 - 7
(5512, 2901, 0, 0, 1, 0, 0, 'Mining Pick'),
(5512, 5956, 0, 0, 2, 0, 0, 'Blacksmith Hammer'),
(5512, 2880, 0, 0, 3, 0, 0, 'Weak Flux'),
(5512, 3466, 0, 0, 4, 0, 0, 'Strong Flux'),
(5512, 18567, 0, 0, 5, 0, 0, 'Elemental Flux'),
(5512, 3857, 0, 0, 6, 0, 0, 'Coal'),
(5512, 12162, 1, 7200, 7, 0, 0, 'Plans: Hardened Iron Shortsword'),
-- Krinkle Goodsteel 5411 - 7
(5411, 2901, 0, 0, 1, 0, 0, 'Mining Pick'),
(5411, 5956, 0, 0, 2, 0, 0, 'Blacksmith Hammer'),
(5411, 2880, 0, 0, 3, 0, 0, 'Weak Flux'),
(5411, 3466, 0, 0, 4, 0, 0, 'Strong Flux'),
(5411, 18567, 0, 0, 5, 0, 0, 'Elemental Flux'),
(5411, 3857, 0, 0, 6, 0, 0, 'Coal'),
(5411, 6047, 1, 7200, 7, 0, 0, 'Plans: Golden Scale Coif'),
-- Harggan 8161 - 7
(8161, 2901, 0, 0, 1, 0, 0, 'Mining Pick'),
(8161, 5956, 0, 0, 2, 0, 0, 'Blacksmith Hammer'),
(8161, 2880, 0, 0, 3, 0, 0, 'Weak Flux'),
(8161, 3466, 0, 0, 4, 0, 0, 'Strong Flux'),
(8161, 18567, 0, 0, 5, 0, 0, 'Elemental Flux'),
(8161, 3857, 0, 0, 6, 0, 0, 'Coal'),
(8161, 7995, 1, 9000, 7, 0, 0, 'Plans: Mithril Scale Bracers'),
-- Gharash 8176 - 7
(8176, 2901, 0, 0, 1, 0, 0, 'Mining Pick'),
(8176, 5956, 0, 0, 2, 0, 0, 'Blacksmith Hammer'),
(8176, 2880, 0, 0, 3, 0, 0, 'Weak Flux'),
(8176, 3466, 0, 0, 4, 0, 0, 'Strong Flux'),
(8176, 18567, 0, 0, 5, 0, 0, 'Elemental Flux'),
(8176, 3857, 0, 0, 6, 0, 0, 'Coal'),
(8176, 7995, 1, 9000, 7, 0, 0, 'Plans: Mithril Scale Bracers'),
-- Jazzrik 9179 - 7
(9179, 2901, 0, 0, 1, 0, 0, 'Mining Pick'),
(9179, 5956, 0, 0, 2, 0, 0, 'Blacksmith Hammer'),
(9179, 2880, 0, 0, 3, 0, 0, 'Weak Flux'),
(9179, 3466, 0, 0, 4, 0, 0, 'Strong Flux'),
(9179, 18567, 0, 0, 5, 0, 0, 'Elemental Flux'),
(9179, 3857, 0, 0, 6, 0, 0, 'Coal'),
(9179, 10858, 1, 36600, 7, 0, 0, 'Plans: Solid Iron Maul'),
-- Master Smith Burninate 14624 - 34/38
(14624, 159, 0, 0, 1, 0, 0, 'Refreshing Spring Water'),
(14624, 1205, 0, 0, 2, 0, 0, 'Melon Juice'),
(14624, 1708, 0, 0, 3, 0, 0, 'Sweet Nectar'),
(14624, 1645, 0, 0, 4, 0, 0, 'Moonberry Juice'),
(14624, 4498, 0, 0, 5, 0, 0, 'Brown Leather Satchel'),
(14624, 4497, 0, 0, 6, 0, 0, 'Heavy Brown Bag'),
(14624, 2515, 0, 0, 7, 0, 0, 'Sharp Arrow'),
(14624, 3030, 0, 0, 8, 0, 0, 'Razor Arrow'),
(14624, 11285, 0, 0, 9, 0, 0, 'Jagged Arrow'),
(14624, 28053, 0, 0, 10, 0, 0, 'Wicked Arrow'), -- tbc+
(14624, 2519, 0, 0, 11, 0, 0, 'Heavy Shot'),
(14624, 3033, 0, 0, 12, 0, 0, 'Solid Shot'),
(14624, 11284, 0, 0, 13, 0, 0, 'Accurate Slugs'),
(14624, 28060, 0, 0, 14, 0, 0, 'Impact Shot'), -- tbc+
(14624, 25873, 0, 0, 15, 0, 0, 'Keen Throwing Knife'), -- 3107,25873
(14624, 29009, 0, 0, 16, 0, 0, 'Heavy Throwing Dagger'), -- 3108,29009
(14624, 29010, 0, 0, 17, 0, 0, 'Wicked Throwing Dagger'), -- 15327,29010
(14624, 29014, 0, 0, 18, 0, 0, 'Blacksteel Throwing Dagger'), -- tbc+
(14624, 29008, 0, 0, 19, 0, 0, 'Sharp Throwing Axe'), -- 3135,29008
(14624, 25875, 0, 0, 20, 0, 0, 'Deadly Throwing Axe'), -- 3137,25875
(14624, 25876, 0, 0, 21, 0, 0, 'Gleaming Throwing Axe'), -- 15326,25876
(14624, 29013, 0, 0, 22, 0, 0, 'Jagged Throwing Axe'), -- tbc+
(14624, 4470, 0, 0, 23, 0, 0, 'Simple Wood'),
(14624, 4471, 0, 0, 24, 0, 0, 'Flint and Tinder'), -- template 436 Flint and Tinder!
(14624, 117, 0, 0, 25, 0, 0, 'Tough Jerky'),
(14624, 2287, 0, 0, 26, 0, 0, 'Haunch of Meat'),
(14624, 3770, 0, 0, 27, 0, 0, 'Mutton Chop'),
(14624, 3771, 0, 0, 28, 0, 0, 'Wild Hog Shank'),
(14624, 4599, 0, 0, 29, 0, 0, 'Cured Ham Steak'),
(14624, 8952, 0, 0, 30, 0, 0, 'Roasted Quail'),
(14624, 1179, 0, 0, 31, 0, 0, 'Ice Cold Milk'),
(14624, 8766, 0, 0, 32, 0, 0, 'Morning Glory Dew'),
-- (14624, 2901, 0, 0, 33, 0, 0, 'Mining Pick'),
-- (14624, 5956, 0, 0, 34, 0, 0, 'Blacksmith Hammer'),
-- (14624, 2880, 0, 0, 35, 0, 0, 'Weak Flux'),
-- (14624, 3466, 0, 0, 36, 0, 0, 'Strong Flux'),
-- (14624, 18567, 0, 0, 37, 0, 0, 'Elemental Flux'),
-- (14624, 3857, 0, 0, 38, 0, 0, 'Coal'),
-- Vargus 15176 - 11
(15176, 2901, 0, 0, 1, 0, 0, 'Mining Pick'),
(15176, 5956, 0, 0, 2, 0, 0, 'Blacksmith Hammer'),
(15176, 2880, 0, 0, 3, 0, 0, 'Weak Flux'),
(15176, 3466, 0, 0, 4, 0, 0, 'Strong Flux'),
(15176, 18567, 0, 0, 5, 0, 0, 'Elemental Flux'),
(15176, 3857, 0, 0, 6, 0, 0, 'Coal'),
(15176, 22209, 0, 0, 7, 0, 0, 'Plans: Heavy Obsidian Belt'),
(15176, 22214, 0, 0, 8, 0, 0, 'Plans: Light Obsidian Belt'),
(15176, 22766, 0, 0, 9, 0, 0, 'Plans: Ironvine Breastplate'),
(15176, 22767, 0, 0, 10, 0, 0, 'Plans: Ironvine Gloves'),
(15176, 22768, 0, 0, 11, 0, 0, 'Plans: Ironvine Belt'),
-- Rohok 16583 - 8
(16583, 2901, 0, 0, 1, 0, 0, 'Mining Pick'),
(16583, 5956, 0, 0, 2, 0, 0, 'Blacksmith Hammer'),
(16583, 2880, 0, 0, 3, 0, 0, 'Weak Flux'),
(16583, 3466, 0, 0, 4, 0, 0, 'Strong Flux'),
(16583, 18567, 0, 0, 5, 0, 0, 'Elemental Flux'),
(16583, 3857, 0, 0, 6, 0, 0, 'Coal'),
(16583, 23638, 1, 9000, 7, 0, 0, 'Plans: Lesser Ward of Shielding'), -- 19373
(16583, 25847, 1, 9000, 8, 0, 0, 'Plans: Eternium Rod'), -- 19373
-- Eriden 16670 - 10
(16670, 2901, 0, 0, 1, 0, 0, 'Mining Pick'),
(16670, 5956, 0, 0, 2, 0, 0, 'Blacksmith Hammer'),
(16670, 2880, 0, 0, 3, 0, 0, 'Weak Flux'),
(16670, 3466, 0, 0, 4, 0, 0, 'Strong Flux'),
(16670, 18567, 0, 0, 5, 0, 0, 'Elemental Flux'),
(16670, 3857, 0, 0, 6, 0, 0, 'Coal'),
(16670, 23590, 1, 10800, 7, 0, 0, 'Plans: Adamantite Maul'),
(16670, 23591, 1, 10800, 8, 0, 0, 'Plans: Adamantite Cleaver'),
(16670, 23592, 1, 10800, 9, 0, 0, 'Plans: Adamantite Dagger'),
(16670, 23593, 1, 10800, 10, 0, 0, 'Plans: Adamantite Rapier'),
-- Arras 16713 - 10
(16713, 2901, 0, 0, 1, 0, 0, 'Mining Pick'),
(16713, 5956, 0, 0, 2, 0, 0, 'Blacksmith Hammer'),
(16713, 2880, 0, 0, 3, 0, 0, 'Weak Flux'),
(16713, 3466, 0, 0, 4, 0, 0, 'Strong Flux'),
(16713, 18567, 0, 0, 5, 0, 0, 'Elemental Flux'),
(16713, 3857, 0, 0, 6, 0, 0, 'Coal'),
(16713, 23590, 1, 10800, 7, 0, 0, 'Plans: Adamantite Maul'),
(16713, 23591, 1, 10800, 8, 0, 0, 'Plans: Adamantite Cleaver'),
(16713, 23592, 1, 10800, 9, 0, 0, 'Plans: Adamantite Dagger'),
(16713, 23593, 1, 10800, 10, 0, 0, 'Plans: Adamantite Rapier'),
-- Osrok the Immovable 19011 - 12
(19011, 30777, 0, 0, 1, 0, 0, 'Aldor Heavy Belt'),
(19011, 30771, 0, 0, 2, 0, 0, 'Heavy Draenic Bracers'),
(19011, 30765, 0, 0, 3, 0, 0, 'Heavy Draenic Breastplate'),
(19011, 30775, 0, 0, 4, 0, 0, 'Layered Bone Shield'),
(19011, 30781, 0, 0, 5, 0, 0, 'Mag\'hari Chain Vest'),
(19011, 30784, 0, 0, 6, 0, 0, 'Worn Mag\'hari Gauntlets'),
(19011, 2901, 0, 0, 7, 0, 0, 'Mining Pick'),
(19011, 5956, 0, 0, 8, 0, 0, 'Blacksmith Hammer'),
(19011, 2880, 0, 0, 9, 0, 0, 'Weak Flux'),
(19011, 3466, 0, 0, 10, 0, 0, 'Strong Flux'),
(19011, 18567, 0, 0, 11, 0, 0, 'Elemental Flux'),
(19011, 3857, 0, 0, 12, 0, 0, 'Coal'),
-- Sparik 19012 - 12
(19012, 30777, 0, 0, 1, 0, 0, 'Aldor Heavy Belt'),
(19012, 30771, 0, 0, 2, 0, 0, 'Heavy Draenic Bracers'),
(19012, 30765, 0, 0, 3, 0, 0, 'Heavy Draenic Breastplate'),
(19012, 30775, 0, 0, 4, 0, 0, 'Layered Bone Shield'),
(19012, 30781, 0, 0, 5, 0, 0, 'Mag\'hari Chain Vest'),
(19012, 30784, 0, 0, 6, 0, 0, 'Worn Mag\'hari Gauntlets'),
(19012, 2901, 0, 0, 7, 0, 0, 'Mining Pick'),
(19012, 5956, 0, 0, 8, 0, 0, 'Blacksmith Hammer'),
(19012, 2880, 0, 0, 9, 0, 0, 'Weak Flux'),
(19012, 3466, 0, 0, 10, 0, 0, 'Strong Flux'),
(19012, 18567, 0, 0, 11, 0, 0, 'Elemental Flux'),
(19012, 3857, 0, 0, 12, 0, 0, 'Coal'),
-- Krek Cragcrush 19342 - 9
(19342, 2901, 0, 0, 1, 0, 0, 'Mining Pick'),
(19342, 5956, 0, 0, 2, 0, 0, 'Blacksmith Hammer'),
(19342, 2880, 0, 0, 3, 0, 0, 'Weak Flux'),
(19342, 3466, 0, 0, 4, 0, 0, 'Strong Flux'),
(19342, 18567, 0, 0, 5, 0, 0, 'Elemental Flux'),
(19342, 3857, 0, 0, 6, 0, 0, 'Coal'),
(19342, 23594, 1, 10800, 7, 0, 0, 'Plans: Adamantite Plate Bracers'),
(19342, 23595, 1, 10800, 8, 0, 0, 'Plans: Adamantite Plate Gloves'),
(19342, 23596, 1, 10800, 9, 0, 0, 'Plans: Adamantite Breastplate'),
-- Aaron Hollman 19662
(19662, 2901, 0, 0, 1, 0, 0, 'Mining Pick'),
(19662, 5956, 0, 0, 2, 0, 0, 'Blacksmith Hammer'),
(19662, 2880, 0, 0, 3, 0, 0, 'Weak Flux'),
(19662, 3466, 0, 0, 4, 0, 0, 'Strong Flux'),
(19662, 18567, 0, 0, 5, 0, 0, 'Elemental Flux'),
(19662, 3857, 0, 0, 6, 0, 0, 'Coal'),
(19662, 23590, 1, 10800, 7, 0, 0, 'Plans: Adamantite Maul'),
(19662, 23591, 1, 10800, 8, 0, 0, 'Plans: Adamantite Cleaver'),
(19662, 23592, 1, 10800, 9, 0, 0, 'Plans: Adamantite Dagger'),
(19662, 23593, 1, 10800, 10, 0, 0, 'Plans: Adamantite Rapier'),
(19662, 25846, 1, 9000, 11, 0, 0, 'Plans: Adamantite Rod');

-- Mari Stonehand <Armorsmith>
UPDATE `npc_vendor` SET `incrtime` = 9000 WHERE `entry` = 19373 AND `item` IN (25847,23638);
UPDATE `npc_vendor` SET `incrtime` = 10800 WHERE `entry` = 19694 AND `item` IN (23594,23595,23596);

