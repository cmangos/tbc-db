-- Added missing world drop to creature 7361 (Grubbis) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones
-- having items 15284 (Long Battle Bow), 6590 (Battleforge Boots), 9830 (Scaled Shield)
-- and 1828 (Stone War Axe) as they are in Grubbis loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=7361#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 7361 AND `item` IN (24068, 24050, 24058, 4633, 1705);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(7361, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(7361, 1705, 0.3, 0, 1, 1, 0), -- Lesser Moonstone
(7361, 24050, 1, 0, -24050, 1, 0),
(7361, 24058, 5, 0, -24058, 1, 0),
(7361, 24068, 1, 0, -24068, 1, 0);

-- Added missing world drop to creature 7800 (Mekgineer Thermaplugg) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones
-- having items found in Mekgineer Thermaplugg loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=7800#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 7800 AND `item` IN (11828, 24048, 24068, 4633, 1705);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(7800, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(7800, 1705, 0.3, 0, 1, 1, 0), -- Lesser Moonstone
(7800, 11828, 15, 0, 1, 1, 0),  -- Schematic: Pet Bombling
(7800, 24048, 2, 0, -24048, 1, 0),
(7800, 24068, 5, 0, -24068, 1, 0);

-- Added missing world drop to creature 6228 (Dark Iron Ambassador) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones
-- having items found in Dark Iron Ambassador loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=6228#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 6228 AND `item` IN (24058, 24068, 24050, 4633, 1705);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(6228, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(6228, 1705, 0.3, 0, 1, 1, 0), -- Lesser Moonstone
(6228, 24058, 5, 0, -24058, 1, 0),
(6228, 24050, 1, 0, -24050, 1, 0),
(6228, 24068, 1, 0, -24068, 1, 0);

-- Added missing world drop to creature 6229 (Crowd Pummeler 9-60) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones
-- having items found in Crowd Pummeler 9-60 loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=6229#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 6229 AND `item` IN (11827, 24058, 24048, 24068, 4633, 1705);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(6229, 11827, 2, 0, 1, 1, 0),  -- Schematic: Lil' Smoky
(6229, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(6229, 1705, 0.3, 0, 1, 1, 0), -- Lesser Moonstone
(6229, 24058, 5, 0, -24058, 1, 0),
(6229, 24048, 2, 0, -24048, 1, 0),
(6229, 24068, 1, 0, -24068, 1, 0);

-- Added missing world drop to creature 6235 (Electrocutioner 6000) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones
-- having items found in Electrocutioner 6000 loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=6235#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 6235 AND `item` IN (24058, 4633, 1705);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(6235, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(6235, 1705, 0.3, 0, 1, 1, 0), -- Lesser Moonstone
(6235, 24058, 5, 0, -24058, 1, 0);

-- Added missing world drop to creature 7079 (Viscous Fallout) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones
-- having items found in Viscous Fallout loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=7079#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 7079 AND `item` IN (4633, 1705);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(7079, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(7079, 1705, 0.3, 0, 1, 1, 0); -- Lesser Moonstone

-- Addition
-- Add missing reference_loot_template used, should be named by classic-db and/or unified with existing reference_loot_template_names

-- Add names for 24048,24050,24058,24068
-- INSERT INTO `reference_loot_template_names`

DELETE FROM `reference_loot_template` WHERE `entry` IN (24048,24050,24058,24068);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(24048, 865, 0, 1, 1, 1, 0, 'Leaden Mace'),
(24048, 914, 0, 1, 1, 1, 0, 'Large Ogre Chain Armor'),
(24048, 1297, 0, 1, 1, 1, 0, 'Robes of the Shadowcaster'),
(24048, 2084, 0, 1, 1, 1, 0, 'Darksteel Bastard Sword'),
(24048, 2234, 0, 1, 1, 1, 0, 'Nightwalker Armor'),
(24048, 3041, 0, 1, 1, 1, 0, '"Mage-Eye" Blunderbuss'),
(24048, 3186, 0, 1, 1, 1, 0, 'Viking Sword'),
(24048, 3210, 0, 1, 1, 1, 0, 'Brutal War Axe'),
(24048, 4035, 0, 1, 1, 1, 0, 'Silver-thread Robe'),
(24048, 4037, 0, 1, 1, 1, 0, 'Silver-thread Pants'),
(24048, 4048, 0, 1, 1, 1, 0, 'Emblazoned Hat'),
(24048, 4050, 0, 1, 1, 1, 0, 'Emblazoned Leggings'),
(24048, 4051, 0, 1, 1, 1, 0, 'Emblazoned Boots'),
(24048, 4064, 0, 1, 1, 1, 0, 'Emblazoned Buckler'),
(24048, 4071, 0, 1, 1, 1, 0, 'Glimmering Mail Breastplate'),
(24048, 4072, 0, 1, 1, 1, 0, 'Glimmering Mail Gauntlets'),
(24048, 4073, 0, 1, 1, 1, 0, 'Glimmering Mail Greaves'),
(24048, 4463, 0, 1, 1, 1, 0, 'Beaded Raptor Collar'),
(24048, 4724, 0, 1, 1, 1, 0, 'Humbert\'s Helm'),
(24048, 5002, 0, 1, 1, 1, 0, 'Glowing Green Talisman'),
(24048, 5003, 0, 1, 1, 1, 0, 'Crystal Starfire Medallion'),
(24048, 5007, 0, 1, 1, 1, 0, 'Band of Thorns'),
(24048, 6198, 0, 1, 1, 1, 0, 'Jurassic Wristguards'),
(24048, 6386, 0, 1, 1, 1, 0, 'Glimmering Mail Legguards'),
(24048, 6388, 0, 1, 1, 1, 0, 'Glimmering Mail Pauldrons'),
(24048, 6389, 0, 1, 1, 1, 0, 'Glimmering Mail Coif'),
(24048, 6399, 0, 1, 1, 1, 0, 'Emblazoned Shoulders'),
(24048, 6400, 0, 1, 1, 1, 0, 'Glimmering Shield'),
(24048, 6603, 0, 1, 1, 1, 0, 'Dervish Tunic'),
(24048, 6607, 0, 1, 1, 1, 0, 'Dervish Leggings'),
(24048, 6617, 0, 1, 1, 1, 0, 'Sage\'s Mantle'),
(24048, 7110, 0, 1, 1, 1, 0, 'Silver-thread Armor'),
(24048, 7355, 0, 1, 1, 1, 0, 'Elder\'s Bracers'),
(24048, 7356, 0, 1, 1, 1, 0, 'Elder\'s Cloak'),
(24048, 7370, 0, 1, 1, 1, 0, 'Elder\'s Sash'),
(24048, 7410, 0, 1, 1, 1, 0, 'Infiltrator Bracers'),
(24048, 7411, 0, 1, 1, 1, 0, 'Infiltrator Cloak'),
(24048, 7416, 0, 1, 1, 1, 0, 'Phalanx Bracers'),
(24048, 7419, 0, 1, 1, 1, 0, 'Phalanx Cloak'),
(24048, 9820, 0, 1, 1, 1, 0, 'Durable Boots'),
(24048, 9821, 0, 1, 1, 1, 0, 'Durable Bracers'),
(24048, 9823, 0, 1, 1, 1, 0, 'Durable Gloves'),
(24048, 9827, 0, 1, 1, 1, 0, 'Scaled Leather Belt'),
(24048, 9828, 0, 1, 1, 1, 0, 'Scaled Leather Boots'),
(24048, 9832, 0, 1, 1, 1, 0, 'Scaled Leather Gloves'),
(24048, 9837, 0, 1, 1, 1, 0, 'Banded Bracers'),
(24048, 9839, 0, 1, 1, 1, 0, 'Banded Gauntlets'),
(24048, 9840, 0, 1, 1, 1, 0, 'Banded Girdle'),
(24048, 10288, 0, 1, 1, 1, 0, 'Sage\'s Circlet'),
(24048, 10404, 0, 1, 1, 1, 0, 'Durable Belt'),
(24048, 12047, 0, 1, 1, 1, 0, 'Spectral Necklace'),
(24048, 14178, 0, 1, 1, 1, 0, 'Watcher\'s Cap'),
(24048, 14180, 0, 1, 1, 1, 0, 'Watcher\'s Jerkin'),
(24048, 14183, 0, 1, 1, 1, 0, 'Watcher\'s Leggings'),
(24048, 14184, 0, 1, 1, 1, 0, 'Watcher\'s Robes'),
(24048, 14190, 0, 1, 1, 1, 0, 'Raincaller Vest'),
(24048, 14191, 0, 1, 1, 1, 0, 'Raincaller Mitts'),
(24048, 14192, 0, 1, 1, 1, 0, 'Raincaller Robes'),
(24048, 14193, 0, 1, 1, 1, 0, 'Raincaller Pants'),
(24048, 14197, 0, 1, 1, 1, 0, 'Thistlefur Bands'),
(24048, 14198, 0, 1, 1, 1, 0, 'Thistlefur Cloak'),
(24048, 14399, 0, 1, 1, 1, 0, 'Resilient Boots'),
(24048, 14403, 0, 1, 1, 1, 0, 'Resilient Handgrips'),
(24048, 14406, 0, 1, 1, 1, 0, 'Resilient Cord'),
(24048, 14579, 0, 1, 1, 1, 0, 'Dokebi Boots'),
(24048, 14608, 0, 1, 1, 1, 0, 'Dokebi Buckler'),
(24048, 14758, 0, 1, 1, 1, 0, 'Slayer\'s Shoulder Pads'),
(24048, 15127, 0, 1, 1, 1, 0, 'Robust Shoulders'),
(24048, 15128, 0, 1, 1, 1, 0, 'Robust Tunic'),
(24048, 15129, 0, 1, 1, 1, 0, 'Robust Helm'),
(24048, 15135, 0, 1, 1, 1, 0, 'Cutthroat\'s Cape'),
(24048, 15136, 0, 1, 1, 1, 0, 'Cutthroat\'s Belt'),
(24048, 15231, 0, 1, 1, 1, 0, 'Splitting Hatchet'),
(24048, 15242, 0, 1, 1, 1, 0, 'Honed Stiletto'),
(24048, 15341, 0, 1, 1, 1, 0, 'Pathfinder Footpads'),
(24048, 15342, 0, 1, 1, 1, 0, 'Pathfinder Guard'),
(24048, 15343, 0, 1, 1, 1, 0, 'Pathfinder Gloves'),
(24048, 15344, 0, 1, 1, 1, 0, 'Pathfinder Pants'),
(24048, 15345, 0, 1, 1, 1, 0, 'Pathfinder Shoulder Pads'),
(24048, 15351, 0, 1, 1, 1, 0, 'Headhunter\'s Bands'),
(24048, 15518, 0, 1, 1, 1, 0, 'Spiked Chain Breastplate'),
(24048, 15524, 0, 1, 1, 1, 0, 'Sentry\'s Surcoat'),
(24048, 15530, 0, 1, 1, 1, 0, 'Sentry\'s Shield'),
(24048, 15531, 0, 1, 1, 1, 0, 'Sentry\'s Shoulderguards'),
(24048, 15533, 0, 1, 1, 1, 0, 'Sentry\'s Headdress'),
(24048, 15534, 0, 1, 1, 1, 0, 'Wicked Chain Boots'),
(24048, 15538, 0, 1, 1, 1, 0, 'Wicked Chain Gauntlets'),
(24048, 15539, 0, 1, 1, 1, 0, 'Wicked Chain Waistband'),
(24048, 15545, 0, 1, 1, 1, 0, 'Thick Scale Bracelets'),
(24048, 15549, 0, 1, 1, 1, 0, 'Thick Scale Belt'),
(24048, 15559, 0, 1, 1, 1, 0, 'Pillager\'s Cloak'),
(24048, 15928, 0, 1, 1, 1, 0, 'Silver-thread Rod'),
(24048, 15973, 0, 1, 1, 1, 0, 'Watcher\'s Star'),
(24048, 15975, 0, 1, 1, 1, 0, 'Raincaller Scepter'),

(24050, 1998, 0, 1, 1, 1, 0, 'Bloodscalp Channeling Staff'),
(24050, 3042, 0, 1, 1, 1, 0, 'BKP "Sparrow" Smallbore'),
(24050, 3341, 0, 1, 1, 1, 0, 'Gauntlets of Ogre Strength'),
(24050, 4716, 0, 1, 1, 1, 0, 'Combat Cloak'),
(24050, 4719, 0, 1, 1, 1, 0, 'Nightsky Cloak'),
(24050, 4720, 0, 1, 1, 1, 0, 'Nightsky Sash'),
(24050, 4722, 0, 1, 1, 1, 0, 'Insignia Cloak'),
(24050, 5214, 0, 1, 1, 1, 0, 'Wand of Eventide'),
(24050, 6396, 0, 1, 1, 1, 0, 'Emblazoned Chestpiece'),
(24050, 6403, 0, 1, 1, 1, 0, 'Mail Combat Armguards'),
(24050, 6407, 0, 1, 1, 1, 0, 'Nightsky Wristbands'),
(24050, 6410, 0, 1, 1, 1, 0, 'Insignia Bracers'),
(24050, 6609, 0, 1, 1, 1, 0, 'Sage\'s Cloth'),
(24050, 6610, 0, 1, 1, 1, 0, 'Sage\'s Robe'),
(24050, 6616, 0, 1, 1, 1, 0, 'Sage\'s Pants'),
(24050, 7330, 0, 1, 1, 1, 0, 'Infiltrator Buckler'),
(24050, 7354, 0, 1, 1, 1, 0, 'Elder\'s Boots'),
(24050, 7366, 0, 1, 1, 1, 0, 'Elder\'s Gloves'),
(24050, 7367, 0, 1, 1, 1, 0, 'Elder\'s Mantle'),
(24050, 7406, 0, 1, 1, 1, 0, 'Infiltrator Cord'),
(24050, 7408, 0, 1, 1, 1, 0, 'Infiltrator Shoulders'),
(24050, 7409, 0, 1, 1, 1, 0, 'Infiltrator Boots'),
(24050, 7412, 0, 1, 1, 1, 0, 'Infiltrator Gloves'),
(24050, 7413, 0, 1, 1, 1, 0, 'Infiltrator Cap'),
(24050, 7420, 0, 1, 1, 1, 0, 'Phalanx Headguard'),
(24050, 7421, 0, 1, 1, 1, 0, 'Phalanx Gauntlets'),
(24050, 7422, 0, 1, 1, 1, 0, 'Phalanx Girdle'),
(24050, 7424, 0, 1, 1, 1, 0, 'Phalanx Spaulders'),
(24050, 9824, 0, 1, 1, 1, 0, 'Durable Shoulders'),
(24050, 9825, 0, 1, 1, 1, 0, 'Durable Pants'),
(24050, 9830, 0, 1, 1, 1, 0, 'Scaled Shield'),
(24050, 9833, 0, 1, 1, 1, 0, 'Scaled Leather Leggings'),
(24050, 9834, 0, 1, 1, 1, 0, 'Scaled Leather Shoulders'),
(24050, 9835, 0, 1, 1, 1, 0, 'Scaled Leather Tunic'),
(24050, 9836, 0, 1, 1, 1, 0, 'Banded Armor'),
(24050, 9841, 0, 1, 1, 1, 0, 'Banded Leggings'),
(24050, 9842, 0, 1, 1, 1, 0, 'Banded Pauldrons'),
(24050, 9843, 0, 1, 1, 1, 0, 'Banded Shield'),
(24050, 9847, 0, 1, 1, 1, 0, 'Conjurer\'s Cloak'),
(24050, 9867, 0, 1, 1, 1, 0, 'Renegade Cloak'),
(24050, 10289, 0, 1, 1, 1, 0, 'Durable Hat'),
(24050, 10406, 0, 1, 1, 1, 0, 'Scaled Leather Headband'),
(24050, 10408, 0, 1, 1, 1, 0, 'Banded Helm'),
(24050, 10409, 0, 1, 1, 1, 0, 'Banded Boots'),
(24050, 12009, 0, 1, 1, 1, 0, 'Tundra Ring'),
(24050, 12019, 0, 1, 1, 1, 0, 'Cerulean Talisman'),
(24050, 12028, 0, 1, 1, 1, 0, 'Basalt Necklace'),
(24050, 12039, 0, 1, 1, 1, 0, 'Tundra Necklace'),
(24050, 14189, 0, 1, 1, 1, 0, 'Raincaller Cap'),
(24050, 14196, 0, 1, 1, 1, 0, 'Thistlefur Sandals'),
(24050, 14199, 0, 1, 1, 1, 0, 'Thistlefur Gloves'),
(24050, 14205, 0, 1, 1, 1, 0, 'Thistlefur Belt'),
(24050, 14206, 0, 1, 1, 1, 0, 'Vital Bracelets'),
(24050, 14209, 0, 1, 1, 1, 0, 'Vital Sash'),
(24050, 14210, 0, 1, 1, 1, 0, 'Vital Cape'),
(24050, 14397, 0, 1, 1, 1, 0, 'Resilient Mantle'),
(24050, 14398, 0, 1, 1, 1, 0, 'Resilient Tunic'),
(24050, 14401, 0, 1, 1, 1, 0, 'Resilient Cap'),
(24050, 14404, 0, 1, 1, 1, 0, 'Resilient Leggings'),
(24050, 14405, 0, 1, 1, 1, 0, 'Resilient Robe'),
(24050, 14409, 0, 1, 1, 1, 0, 'Stonecloth Cape'),
(24050, 14581, 0, 1, 1, 1, 0, 'Dokebi Chestguard'),
(24050, 14583, 0, 1, 1, 1, 0, 'Dokebi Gloves'),
(24050, 14585, 0, 1, 1, 1, 0, 'Dokebi Leggings'),
(24050, 14587, 0, 1, 1, 1, 0, 'Dokebi Mantle'),
(24050, 14751, 0, 1, 1, 1, 0, 'Slayer\'s Surcoat'),
(24050, 14753, 0, 1, 1, 1, 0, 'Slayer\'s Skullcap'),
(24050, 14757, 0, 1, 1, 1, 0, 'Slayer\'s Pants'),
(24050, 14763, 0, 1, 1, 1, 0, 'Enduring Cape'),
(24050, 15131, 0, 1, 1, 1, 0, 'Cutthroat\'s Boots'),
(24050, 15133, 0, 1, 1, 1, 0, 'Cutthroat\'s Buckler'),
(24050, 15137, 0, 1, 1, 1, 0, 'Cutthroat\'s Mitts'),
(24050, 15139, 0, 1, 1, 1, 0, 'Cutthroat\'s Pants'),
(24050, 15143, 0, 1, 1, 1, 0, 'Ghostwalker Bindings'),
(24050, 15147, 0, 1, 1, 1, 0, 'Ghostwalker Cloak'),
(24050, 15225, 0, 1, 1, 1, 0, 'Sequoia Hammer'),
(24050, 15232, 0, 1, 1, 1, 0, 'Hacking Cleaver'),
(24050, 15250, 0, 1, 1, 1, 0, 'Glimmering Flamberge'),
(24050, 15285, 0, 1, 1, 1, 0, 'Archer\'s Longbow'),
(24050, 15346, 0, 1, 1, 1, 0, 'Pathfinder Vest'),
(24050, 15349, 0, 1, 1, 1, 0, 'Headhunter\'s Belt'),
(24050, 15354, 0, 1, 1, 1, 0, 'Headhunter\'s Cloak'),
(24050, 15541, 0, 1, 1, 1, 0, 'Wicked Chain Legguards'),
(24050, 15542, 0, 1, 1, 1, 0, 'Wicked Chain Shoulder Pads'),
(24050, 15544, 0, 1, 1, 1, 0, 'Thick Scale Sabatons'),
(24050, 15548, 0, 1, 1, 1, 0, 'Thick Scale Gauntlets'),
(24050, 15554, 0, 1, 1, 1, 0, 'Pillager\'s Girdle'),
(24050, 15555, 0, 1, 1, 1, 0, 'Pillager\'s Boots'),
(24050, 15556, 0, 1, 1, 1, 0, 'Pillager\'s Bracers'),
(24050, 15568, 0, 1, 1, 1, 0, 'Marauder\'s Cloak'),
(24050, 15892, 0, 1, 1, 1, 0, 'Slayer\'s Shield'),
(24050, 15934, 0, 1, 1, 1, 0, 'Sage\'s Stave'),
(24050, 15962, 0, 1, 1, 1, 0, 'Satyr\'s Rod'),

(24058, 1754, 0, 1, 1, 1, 0, 'Reinforced Chain Belt'),
(24058, 1755, 0, 1, 1, 1, 0, 'Reinforced Chain Boots'),
(24058, 1756, 0, 1, 1, 1, 0, 'Reinforced Chain Bracers'),
(24058, 1757, 0, 1, 1, 1, 0, 'Reinforced Chain Cloak'),
(24058, 1758, 0, 1, 1, 1, 0, 'Reinforced Chain Gloves'),
(24058, 1759, 0, 1, 1, 1, 0, 'Reinforced Chain Pants'),
(24058, 1760, 0, 1, 1, 1, 0, 'Reinforced Chain Shoulderpads'),
(24058, 1761, 0, 1, 1, 1, 0, 'Reinforced Chain Vest'),
(24058, 1780, 0, 1, 1, 1, 0, 'Cross-stitched Sandals'),
(24058, 1782, 0, 1, 1, 1, 0, 'Cross-stitched Cloak'),
(24058, 1783, 0, 1, 1, 1, 0, 'Cross-stitched Gloves'),
(24058, 1784, 0, 1, 1, 1, 0, 'Cross-stitched Pants'),
(24058, 1785, 0, 1, 1, 1, 0, 'Cross-stitched Shoulderpads'),
(24058, 1786, 0, 1, 1, 1, 0, 'Cross-stitched Vest'),
(24058, 1803, 0, 1, 1, 1, 0, 'Tough Leather Belt'),
(24058, 1804, 0, 1, 1, 1, 0, 'Tough Leather Boots'),
(24058, 1805, 0, 1, 1, 1, 0, 'Tough Leather Bracers'),
(24058, 1806, 0, 1, 1, 1, 0, 'Tough Cloak'),
(24058, 1807, 0, 1, 1, 1, 0, 'Tough Leather Gloves'),
(24058, 1808, 0, 1, 1, 1, 0, 'Tough Leather Pants'),
(24058, 1809, 0, 1, 1, 1, 0, 'Tough Leather Shoulderpads'),
(24058, 1810, 0, 1, 1, 1, 0, 'Tough Leather Armor'),
(24058, 1825, 0, 1, 1, 1, 0, 'Bulky Bludgeon'),
(24058, 1826, 0, 1, 1, 1, 0, 'Rock Maul'),
(24058, 1827, 0, 1, 1, 1, 0, 'Meat Cleaver'),
(24058, 1828, 0, 1, 1, 1, 0, 'Stone War Axe'),
(24058, 1829, 0, 1, 1, 1, 0, 'Short Cutlass'),
(24058, 1830, 0, 1, 1, 1, 0, 'Long Bastard Sword'),
(24058, 1831, 0, 1, 1, 1, 0, 'Oaken War Staff'),
(24058, 2221, 0, 1, 1, 1, 0, 'Targe Shield'),
(24058, 2222, 0, 1, 1, 1, 0, 'Tower Shield'),
(24058, 2766, 0, 1, 1, 1, 0, 'Deft Stiletto'),
(24058, 2785, 0, 1, 1, 1, 0, 'Stiff Recurve Bow'),
(24058, 2786, 0, 1, 1, 1, 0, 'Oiled Blunderbuss'),
(24058, 3380, 0, 1, 1, 1, 0, 'Cross-stitched Belt'),
(24058, 3381, 0, 1, 1, 1, 0, 'Cross-stitched Bracers'),
(24058, 3778, 0, 1, 1, 1, 0, 'Taut Compound Bow'),
(24058, 8748, 0, 1, 1, 1, 0, 'Double Mail Coif'),
(24058, 11411, 0, 1, 1, 1, 0, 'Large Bear Bone'),

(24068, 753, 0, 1, 1, 1, 0, 'Dragonmaw Shortsword'),
(24068, 756, 0, 1, 1, 1, 0, 'Tunnel Pick'),
(24068, 897, 0, 1, 1, 1, 0, 'Madwolf Bracers'),
(24068, 1351, 0, 1, 1, 1, 0, 'Fingerbone Bracers'),
(24068, 2014, 0, 1, 1, 1, 0, 'Black Metal Greatsword'),
(24068, 2015, 0, 1, 1, 1, 0, 'Black Metal War Axe'),
(24068, 2017, 0, 1, 1, 1, 0, 'Glowing Leather Bracers'),
(24068, 2077, 0, 1, 1, 1, 0, 'Magician Staff'),
(24068, 2819, 0, 1, 1, 1, 0, 'Cross Dagger'),
(24068, 3053, 0, 1, 1, 1, 0, 'Humbert\'s Chestpiece'),
(24068, 3201, 0, 1, 1, 1, 0, 'Barbarian War Axe'),
(24068, 3206, 0, 1, 1, 1, 0, 'Cavalier Two-hander'),
(24068, 3336, 0, 1, 1, 1, 0, 'Flesh Piercer'),
(24068, 4049, 0, 1, 1, 1, 0, 'Emblazoned Bracers'),
(24068, 4711, 0, 1, 1, 1, 0, 'Glimmering Cloak'),
(24068, 4712, 0, 1, 1, 1, 0, 'Glimmering Mail Girdle'),
(24068, 4723, 0, 1, 1, 1, 0, 'Humbert\'s Pants'),
(24068, 6387, 0, 1, 1, 1, 0, 'Glimmering Mail Bracers'),
(24068, 6393, 0, 1, 1, 1, 0, 'Silver-thread Gloves'),
(24068, 6395, 0, 1, 1, 1, 0, 'Silver-thread Amice'),
(24068, 6397, 0, 1, 1, 1, 0, 'Emblazoned Gloves'),
(24068, 6398, 0, 1, 1, 1, 0, 'Emblazoned Belt'),
(24068, 6590, 0, 1, 1, 1, 0, 'Battleforge Boots'),
(24068, 6592, 0, 1, 1, 1, 0, 'Battleforge Armor'),
(24068, 6594, 0, 1, 1, 1, 0, 'Battleforge Girdle'),
(24068, 6595, 0, 1, 1, 1, 0, 'Battleforge Gauntlets'),
(24068, 6596, 0, 1, 1, 1, 0, 'Battleforge Legguards'),
(24068, 6597, 0, 1, 1, 1, 0, 'Battleforge Shoulderguards'),
(24068, 6598, 0, 1, 1, 1, 0, 'Dervish Buckler'),
(24068, 6599, 0, 1, 1, 1, 0, 'Battleforge Shield'),
(24068, 6601, 0, 1, 1, 1, 0, 'Dervish Boots'),
(24068, 6605, 0, 1, 1, 1, 0, 'Dervish Gloves'),
(24068, 6611, 0, 1, 1, 1, 0, 'Sage\'s Sash'),
(24068, 6612, 0, 1, 1, 1, 0, 'Sage\'s Boots'),
(24068, 6613, 0, 1, 1, 1, 0, 'Sage\'s Bracers'),
(24068, 6614, 0, 1, 1, 1, 0, 'Sage\'s Cloak'),
(24068, 6615, 0, 1, 1, 1, 0, 'Sage\'s Gloves'),
(24068, 7415, 0, 1, 1, 1, 0, 'Dervish Spaulders'),
(24068, 8184, 0, 1, 1, 1, 0, 'Firestarter'),
(24068, 9791, 0, 1, 1, 1, 0, 'Ivycloth Tunic'),
(24068, 9797, 0, 1, 1, 1, 0, 'Ivycloth Pants'),
(24068, 9798, 0, 1, 1, 1, 0, 'Ivycloth Robe'),
(24068, 9800, 0, 1, 1, 1, 0, 'Ivy Orb'),
(24068, 9808, 0, 1, 1, 1, 0, 'Superior Leggings'),
(24068, 9809, 0, 1, 1, 1, 0, 'Superior Tunic'),
(24068, 9822, 0, 1, 1, 1, 0, 'Durable Cape'),
(24068, 9829, 0, 1, 1, 1, 0, 'Scaled Leather Bracers'),
(24068, 9831, 0, 1, 1, 1, 0, 'Scaled Cloak'),
(24068, 9838, 0, 1, 1, 1, 0, 'Banded Cloak'),
(24068, 11969, 0, 1, 1, 1, 0, 'Jacinth Circle'),
(24068, 11984, 0, 1, 1, 1, 0, 'Cobalt Ring'),
(24068, 11995, 0, 1, 1, 1, 0, 'Ivory Band'),
(24068, 12008, 0, 1, 1, 1, 0, 'Savannah Ring'),
(24068, 14181, 0, 1, 1, 1, 0, 'Watcher\'s Handwraps'),
(24068, 14182, 0, 1, 1, 1, 0, 'Watcher\'s Mantle'),
(24068, 14186, 0, 1, 1, 1, 0, 'Raincaller Mantle'),
(24068, 14187, 0, 1, 1, 1, 0, 'Raincaller Cuffs'),
(24068, 14194, 0, 1, 1, 1, 0, 'Raincaller Cord'),
(24068, 14195, 0, 1, 1, 1, 0, 'Raincaller Boots'),
(24068, 14372, 0, 1, 1, 1, 0, 'Sanguine Armor'),
(24068, 14379, 0, 1, 1, 1, 0, 'Sanguine Trousers'),
(24068, 14380, 0, 1, 1, 1, 0, 'Sanguine Robe'),
(24068, 14400, 0, 1, 1, 1, 0, 'Resilient Cape'),
(24068, 14402, 0, 1, 1, 1, 0, 'Resilient Bands'),
(24068, 14570, 0, 1, 1, 1, 0, 'Bristlebark Blouse'),
(24068, 14578, 0, 1, 1, 1, 0, 'Dokebi Cord'),
(24068, 14582, 0, 1, 1, 1, 0, 'Dokebi Cape'),
(24068, 14744, 0, 1, 1, 1, 0, 'Hulking Chestguard'),
(24068, 14750, 0, 1, 1, 1, 0, 'Slayer\'s Cuffs'),
(24068, 14754, 0, 1, 1, 1, 0, 'Slayer\'s Gloves'),
(24068, 14755, 0, 1, 1, 1, 0, 'Slayer\'s Sash'),
(24068, 14756, 0, 1, 1, 1, 0, 'Slayer\'s Slippers'),
(24068, 15121, 0, 1, 1, 1, 0, 'Robust Boots'),
(24068, 15123, 0, 1, 1, 1, 0, 'Robust Buckler'),
(24068, 15125, 0, 1, 1, 1, 0, 'Robust Gloves'),
(24068, 15126, 0, 1, 1, 1, 0, 'Robust Leggings'),
(24068, 15132, 0, 1, 1, 1, 0, 'Cutthroat\'s Armguards'),
(24068, 15284, 0, 1, 1, 1, 0, 'Long Battle Bow'),
(24068, 15337, 0, 1, 1, 1, 0, 'Wrangler\'s Wraps'),
(24068, 15338, 0, 1, 1, 1, 0, 'Wrangler\'s Mantle'),
(24068, 15347, 0, 1, 1, 1, 0, 'Pathfinder Belt'),
(24068, 15522, 0, 1, 1, 1, 0, 'Spiked Chain Shield'),
(24068, 15525, 0, 1, 1, 1, 0, 'Sentry\'s Slippers'),
(24068, 15529, 0, 1, 1, 1, 0, 'Sentry\'s Leggings'),
(24068, 15535, 0, 1, 1, 1, 0, 'Wicked Chain Bracers'),
(24068, 15537, 0, 1, 1, 1, 0, 'Wicked Chain Cloak'),
(24068, 15547, 0, 1, 1, 1, 0, 'Thick Scale Cloak'),
(24068, 15947, 0, 1, 1, 1, 0, 'Sanguine Star');

