-- ==================
-- TIER 5 LOOT
-- PATCH 2.4.3 VALUES
-- ==================

DELETE FROM reference_loot_template WHERE entry BETWEEN 36000 AND 36100;
DELETE FROM reference_loot_template_names WHERE entry BETWEEN 36000 AND 36100;
INSERT INTO reference_loot_template_names VALUES
(36000,'Tempest Keep: The Eye (Boss Loot) - Al''ar - Epic Items (Group 1)'),
(36001,'Tempest Keep: The Eye (Boss Loot) - Al''ar - Epic Items (Group 2)'),
(36002,'Tempest Keep: The Eye (Boss Loot) - Al''ar - Epic Items (Group 3)'),

(36003,'Tempest Keep: The Eye (Boss Loot) - Void Reaver - Epic Items (Non-Tokens Only)'),
(36004,'Tempest Keep: The Eye (Boss Loot) - Void Reaver - Epic Items (Tokens Only)'),

(36005,'Tempest Keep: The Eye (Boss Loot) - High Astromancer Solarian - Epic Items (Group 1)'),
(36006,'Tempest Keep: The Eye (Boss Loot) - High Astromancer Solarian - Epic Items (Group 2)'),
(36007,'Tempest Keep: The Eye (Boss Loot) - High Astromancer Solarian - Epic Items (Group 3)'),

(36008,'Tempest Keep: The Eye (Boss Loot) - Kael''thas Sunstrider - Epic Items (Group 1)'),
(36009,'Tempest Keep: The Eye (Boss Loot) - Kael''thas Sunstrider - Epic Items (Group 2)'),
(36010,'Tempest Keep: The Eye (Boss Loot) - Kael''thas Sunstrider - Epic Items (Tokens Only)'),

(36011,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Hydross the Unstable - Epic Items (Group 1)'),
(36012,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Hydross the Unstable - Epic Items (Group 2)'),
(36013,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Hydross the Unstable - Epic Items (Group 3)'),

(36014,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - The Lurker Below - Epic Items (Group 1)'),
(36015,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - The Lurker Below - Epic Items (Group 2)'),
(36016,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - The Lurker Below - Epic Items (Group 3)'),

(36017,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Morogrim Tidewalker - Epic Items (Group 1)'),
(36018,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Morogrim Tidewalker - Epic Items (Group 2)'),
(36019,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Morogrim Tidewalker - Epic Items (Group 3)'),

(36020,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Leotheras the Blind - Epic Items (Non-Tokens Only)'),
(36021,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Leotheras the Blind - Epic Items (Tokens Only)'),

(36022,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Fathom-Lord Karathress - Epic Items (Non-Tokens Only)'),
(36023,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Fathom-Lord Karathress - Epic Items (Tokens Only)'),

(36024,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Lady Vashj - Epic Items (Group 1)'),
(36025,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Lady Vashj - Epic Items (Group 2)'),
(36026,'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Lady Vashj - Epic Items (Tokens Only)'),

(36098,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(36099,'Tempest Keep: The Eye - Trash loot - Items'),

(36100,'T5 - Recipes');


-- ============
-- TEMPEST KEEP
-- ============

-- -----
-- AL'AR
-- -----
DELETE FROM creature_loot_template WHERE entry = 19514;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('19514', '36100', '10', '1', '-36100', '1', '0', 'T5 - Recipes'),
('19514', '29434', '100', '0', '2', '2', '0', 'Badge of Justice'),
('19514', '61001', '25', '0', '-61001', '1', '0', 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('19514', '61130', '7', '0', '-61130', '1', '0', 'NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('19514', '36000', '100', '1', '-36000', '1', '0', 'Tempest Keep: The Eye (Boss Loot) - Al''ar - Epic Items (Group 1)'),
('19514', '36001', '100', '1', '-36001', '1', '0', 'Tempest Keep: The Eye (Boss Loot) - Al''ar - Epic Items (Group 2)'),
('19514', '36002', '100', '1', '-36002', '1', '0', 'Tempest Keep: The Eye (Boss Loot) - Al''ar - Epic Items (Group 3)');

DELETE FROM reference_loot_template WHERE entry IN (36000,36001,36002);
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('36000', '29923', '0', '1', '1', '1', '0', 'Talisman of the Sun King'),
('36000', '29918', '0', '1', '1', '1', '0', 'Mindstorm Wristbands'),
('36000', '30447', '0', '1', '1', '1', '0', 'Tome of Fiery Redemption'),
('36000', '29921', '0', '1', '1', '1', '0', 'Fire Crest Breastplate'),

('36001', '29948', '0', '1', '1', '1', '0', 'Claw of the Phoenix'),
('36001', '29947', '0', '1', '1', '1', '0', 'Gloves of the Searing Grip'),
('36001', '32944', '0', '1', '1', '1', '0', 'Talon of the Phoenix'),
('36001', '30448', '0', '1', '1', '1', '0', 'Talon of Al\'ar'),
('36001', '29949', '0', '1', '1', '1', '0', 'Arcanite Steam-Pistol'),

('36002', '29920', '0', '1', '1', '1', '0', 'Phoenix-Ring of Rebirth'),
('36002', '29925', '0', '1', '1', '1', '0', 'Phoenix-Wing Cloak'),
('36002', '29922', '0', '1', '1', '1', '0', 'Band of Al\'ar'),
('36002', '29924', '0', '1', '1', '1', '0', 'Netherbane');

-- -----------
-- VOID REAVER
-- -----------
DELETE FROM creature_loot_template WHERE entry = 19516;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('19516', '36100', '10', '1', '-36100', '1', '0', 'T5 - Recipes'),
('19516', '29434', '100', '0', '2', '2', '0', 'Badge of Justice'),
('19516', '61001', '25', '0', '-61001', '1', '0', 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('19516', '61130', '7', '0', '-61130', '1', '0', 'NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('19516', '36003', '100', '1', '-36003', '1', '0', 'Tempest Keep: The Eye (Boss Loot) - Void Reaver - Epic Items (Non-Tokens Only)'),
('19516', '36004', '100', '1', '-36004', '3', '0', 'Tempest Keep: The Eye (Boss Loot) - Void Reaver - Epic Items (Tokens Only)');

DELETE FROM reference_loot_template WHERE entry IN (36003,36004);
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('36003', '29983', '0', '1', '1', '1', '0', 'Fel-Steel Warhelm'),
('36003', '29984', '0', '1', '1', '1', '0', 'Girdle of Zaetar'),
('36003', '29985', '0', '1', '1', '1', '0', 'Void Reaver Greaves'),
('36003', '29986', '0', '1', '1', '1', '0', 'Cowl of the Grand Engineer'),
('36003', '30450', '0', '1', '1', '1', '0', 'Warp-Spring Coil'),
('36003', '30619', '0', '1', '1', '1', '0', 'Fel Reaver\'s Piston'),
('36003', '32515', '0', '1', '1', '1', '0', 'Wristguards of Determination'),

('36004', '30248', '0', '1', '1', '1', '0', 'Pauldrons of the Vanquished Champion'),
('36004', '30249', '0', '1', '1', '1', '0', 'Pauldrons of the Vanquished Defender'),
('36004', '30250', '0', '1', '1', '1', '0', 'Pauldrons of the Vanquished Hero');

-- -------------------------
-- HIGH ASTROMANCER SOLARIAN
-- -------------------------
DELETE FROM creature_loot_template WHERE entry = 18805;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('18805', '36100', '10', '1', '-36100', '1', '0', 'T5 - Recipes'),
('18805', '29434', '100', '0', '2', '2', '0', 'Badge of Justice'),
('18805', '21877', '18', '0', '2', '3', '0', 'Netherweave Cloth'),
('18805', '61001', '25', '0', '-61001', '1', '0', 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('18805', '61130', '7', '0', '-61130', '1', '0', 'NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('18805', '36005', '100', '1', '-36005', '1', '0', 'Tempest Keep: The Eye (Boss Loot) - High Astromancer Solarian - Epic Items (Group 1)'),
('18805', '36006', '100', '1', '-36006', '1', '0', 'Tempest Keep: The Eye (Boss Loot) - High Astromancer Solarian - Epic Items (Group 2)'),
('18805', '36007', '100', '1', '-36007', '1', '0', 'Tempest Keep: The Eye (Boss Loot) - High Astromancer Solarian - Epic Items (Group 3)');

DELETE FROM reference_loot_template WHERE entry IN (36005,36006,36007);
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('36005', '29966', '0', '1', '1', '1', '0', 'Vambraces of Ending'),
('36005', '29950', '0', '1', '1', '1', '0', 'Greaves of the Bloodwarder'),
('36005', '29965', '0', '1', '1', '1', '0', 'Girdle of the Righteous Path'),
('36005', '29951', '0', '1', '1', '1', '0', 'Star-Strider Boots'),

('36006', '29972', '0', '1', '1', '1', '0', 'Trousers of the Astromancer'),
('36006', '29976', '0', '1', '1', '1', '0', 'Worldstorm Gauntlets'),
('36006', '29977', '0', '1', '1', '1', '0', 'Star-Soul Breeches'),
('36006', '29982', '0', '1', '1', '1', '0', 'Wand of the Forgotten Star'),
('36006', '32267', '0', '1', '1', '1', '0', 'Boots of the Resilient'),

('36007', '29962', '0', '1', '1', '1', '0', 'Heartrazor'),
('36007', '29981', '0', '1', '1', '1', '0', 'Ethereum Life-Staff'),
('36007', '30446', '0', '1', '1', '1', '0', 'Solarian\'s Sapphire'),
('36007', '30449', '0', '1', '1', '1', '0', 'Void Star Talisman');

-- --------------------
-- KAEL'THAS SUNSTRIDER
-- --------------------
DELETE FROM creature_loot_template WHERE entry = 19622;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('19622', '29905', '-100', '0', '1', '1', '0', 'Kael\'s Vial Remnant'),
('19622', '30183', '100', '1', '2', '2', '0', 'Nether Vortex'),
('19622', '32405', '100', '0', '1', '1', '0', 'Verdant Sphere'),
('19622', '32458', '0.2', '0', '1', '1', '0', 'Ashes of Al\'ar'),
('19622', '29434', '100', '0', '3', '3', '0', 'Badge of Justice'),
('19622', '36100', '10', '1', '-36100', '1', '0', 'T5 - Recipes'),
('19622', '21877', '18', '0', '2', '3', '0', 'Netherweave Cloth'),
('19622', '61001', '25', '0', '-61001', '1', '0', 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('19622', '61130', '7', '0', '-61130', '1', '0', 'NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('19622', '36008', '100', '1', '-36008', '1', '0', 'Tempest Keep: The Eye (Boss Loot) - Kael''thas Sunstrider - Epic Items (Group 1)'),
('19622', '36009', '100', '1', '-36009', '1', '0', 'Tempest Keep: The Eye (Boss Loot) - Kael''thas Sunstrider - Epic Items (Group 2)'),
('19622', '36010', '100', '1', '-36010', '3', '0', 'Tempest Keep: The Eye (Boss Loot) - Kael''thas Sunstrider - Epic Items (Tokens Only)');

DELETE FROM reference_loot_template WHERE entry IN (36008,36009,36010);
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('36008', '29990', '0', '1', '1', '1', '0', 'Crown of the Sun'),
('36008', '29991', '0', '1', '1', '1', '0', 'Sunhawk Leggings'),
('36008', '29992', '0', '1', '1', '1', '0', 'Royal Cloak of the Sunstriders'),
('36008', '29987', '0', '1', '1', '1', '0', 'Gauntlets of the Sun King'),
('36008', '29989', '0', '1', '1', '1', '0', 'Sunshower Light Cloak'),
('36008', '29988', '0', '1', '1', '1', '0', 'The Nexus Key'),

('36009', '29993', '0', '1', '1', '1', '0', 'Twinblade of the Phoenix'),
('36009', '29994', '0', '1', '1', '1', '0', 'Thalassian Wildercloak'),
('36009', '29995', '0', '1', '1', '1', '0', 'Leggings of Murderous Intent'),
('36009', '29996', '0', '1', '1', '1', '0', 'Rod of the Sun King'),
('36009', '29997', '0', '1', '1', '1', '0', 'Band of the Ranger-General'),
('36009', '29998', '0', '1', '1', '1', '0', 'Royal Gauntlets of Silvermoon'),

('36010', '30236', '0', '1', '1', '1', '0', 'Chestguard of the Vanquished Champion'),
('36010', '30237', '0', '1', '1', '1', '0', 'Chestguard of the Vanquished Defender'),
('36010', '30238', '0', '1', '1', '1', '0', 'Chestguard of the Vanquished Hero');

-- ====================
-- SERPENTSHRINE CAVERN
-- ====================

-- --------------------
-- HYDROSS THE UNSTABLE
-- --------------------
DELETE FROM creature_loot_template WHERE entry = 21216;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('21216', '36100', '10', '1', '-36100', '1', '0', 'T5 - Recipes'),
('21216', '29434', '100', '0', '2', '2', '0', 'Badge of Justice'),
('21216', '61001', '25', '0', '-61001', '1', '0', 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('21216', '61130', '7', '0', '-61130', '1', '0', 'NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('21216', '36011', '100', '1', '-36011', '1', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Hydross the Unstable - Epic Items (Group 1)'),
('21216', '36012', '100', '1', '-36012', '1', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Hydross the Unstable - Epic Items (Group 2)'),
('21216', '36013', '100', '1', '-36013', '1', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Hydross the Unstable - Epic Items (Group 3)');

DELETE FROM reference_loot_template WHERE entry IN (36011,36012,36013);
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('36011', '30047', '0', '1', '1', '1', '0', 'Blackfathom Warbands'),
('36011', '30048', '0', '1', '1', '1', '0', 'Brighthelm of Justice'),
('36011', '30629', '0', '1', '1', '1', '0', 'Scarab of Displacement'),
('36011', '30052', '0', '1', '1', '1', '0', 'Ring of Lethality'),

('36012', '30055', '0', '1', '1', '1', '0', 'Shoulderpads of the Stranger'),
('36012', '33055', '0', '1', '1', '1', '0', 'Band of Vile Aggression'),
('36012', '30054', '0', '1', '1', '1', '0', 'Ranger-General\'s Chestguard'),
('36012', '30056', '0', '1', '1', '1', '0', 'Robe of Hateful Echoes'),

('36013', '30049', '0', '1', '1', '1', '0', 'Fathomstone'),
('36013', '30050', '0', '1', '1', '1', '0', 'Boots of the Shifting Nightmare'),
('36013', '30051', '0', '1', '1', '1', '0', 'Idol of the Crescent Goddess'),
('36013', '30053', '0', '1', '1', '1', '0', 'Pauldrons of the Wardancer'),
('36013', '30664', '0', '1', '1', '1', '0', 'Living Root of the Wildheart'),
('36013', '32516', '0', '1', '1', '1', '0', 'Wraps of Purification');

-- ----------------
-- THE LURKER BELOW
-- ----------------
DELETE FROM creature_loot_template WHERE entry = 21217;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('21217', '36100', '10', '1', '-36100', '1', '0', 'T5 - Recipes'),
('21217', '29434', '100', '0', '2', '2', '0', 'Badge of Justice'),
('21217', '61001', '25', '0', '-61001', '1', '0', 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('21217', '61130', '7', '0', '-61130', '1', '0', 'NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('21217', '36014', '100', '1', '-36014', '1', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - The Lurker Below - Epic Items (Group 1)'),
('21217', '36015', '100', '1', '-36015', '1', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - The Lurker Below - Epic Items (Group 2)'),
('21217', '36016', '100', '1', '-36016', '1', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - The Lurker Below - Epic Items (Group 3)');

DELETE FROM reference_loot_template WHERE entry IN (36014,36015,36016);
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('36014', '30060', '0', '1', '1', '1', '0', 'Boots of Effortless Striking'),
('36014', '30062', '0', '1', '1', '1', '0', 'Grove-Bands of Remulos'),
('36014', '30057', '0', '1', '1', '1', '0', 'Bracers of Eradication'),
('36014', '30061', '0', '1', '1', '1', '0', 'Ancestral Ring of Conquest'),

('36015', '33054', '0', '1', '1', '1', '0', 'The Seal of Danzalar'),
('36015', '30064', '0', '1', '1', '1', '0', 'Cord of Screaming Terrors'),
('36015', '30067', '0', '1', '1', '1', '0', 'Velvet Boots of the Guardian'),
('36015', '30665', '0', '1', '1', '1', '0', 'Earring of Soulful Meditation'),
('36015', '30063', '0', '1', '1', '1', '0', 'Libram of Absolute Truth'),

('36016', '30058', '0', '1', '1', '1', '0', 'Mallet of the Tides'),
('36016', '30059', '0', '1', '1', '1', '0', 'Choker of Animalistic Fury'),
('36016', '30065', '0', '1', '1', '1', '0', 'Glowing Breastplate of Truth'),
('36016', '30066', '0', '1', '1', '1', '0', 'Tempest-Strider Boots');

-- -------------------
-- MOROGRIM TIDEWALKER
-- -------------------
DELETE FROM creature_loot_template WHERE entry = 21213;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('21213', '36100', '10', '1', '-36100', '1', '0', 'T5 - Recipes'),
('21213', '29434', '100', '0', '2', '2', '0', 'Badge of Justice'),
('21213', '21877', '18', '0', '2', '3', '0', 'Netherweave Cloth'),
('21213', '61001', '25', '0', '-61001', '1', '0', 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('21213', '61130', '7', '0', '-61130', '1', '0', 'NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('21213', '36017', '100', '1', '-36017', '1', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Morogrim Tidewalker - Epic Items (Group 1)'),
('21213', '36018', '100', '1', '-36018', '1', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Morogrim Tidewalker - Epic Items (Group 2)'),
('21213', '36019', '100', '1', '-36019', '1', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Morogrim Tidewalker - Epic Items (Group 3)');

DELETE FROM reference_loot_template WHERE entry IN (36017,36018,36019);
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('36017', '30082', '0', '1', '1', '1', '0', 'Talon of Azshara'),
('36017', '33058', '0', '1', '1', '1', '0', 'Band of the Vigilant'),
('36017', '30083', '0', '1', '1', '1', '0', 'Ring of Sundered Souls'),
('36017', '30720', '0', '1', '1', '1', '0', 'Serpent-Coil Braid'),

('36018', '30084', '0', '1', '1', '1', '0', 'Pauldrons of the Argent Sentinel'),
('36018', '30085', '0', '1', '1', '1', '0', 'Mantle of the Tireless Tracker'),
('36018', '30081', '0', '1', '1', '1', '0', 'Warboots of Obliteration'),
('36018', '30098', '0', '1', '1', '1', '0', 'Razor-Scale Battlecloak'),

('36019', '30008', '0', '1', '1', '1', '0', 'Pendant of the Lost Ages'),
('36019', '30068', '0', '1', '1', '1', '0', 'Girdle of the Tidal Call'),
('36019', '30075', '0', '1', '1', '1', '0', 'Gnarled Chestpiece of the Ancients'),
('36019', '30079', '0', '1', '1', '1', '0', 'Illidari Shoulderpads'),
('36019', '30080', '0', '1', '1', '1', '0', 'Luminescent Rod of the Naaru');

-- -------------------
-- LEOTHERAS THE BLIND
-- -------------------
DELETE FROM creature_loot_template WHERE entry = 21215;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('21215', '36100', '10', '1', '-36100', '1', '0', 'T5 - Recipes'),
('21215', '29434', '100', '0', '2', '2', '0', 'Badge of Justice'),
('21215', '21877', '18', '0', '2', '3', '0', 'Netherweave Cloth'),
('21215', '61001', '25', '0', '-61001', '1', '0', 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('21215', '61130', '7', '0', '-61130', '1', '0', 'NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('21215', '36020', '100', '1', '-36020', '1', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Leotheras the Blind - Epic Items (Non-Tokens Only)'),
('21215', '36021', '100', '1', '-36021', '3', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Leotheras the Blind - Epic Items (Tokens Only)');

DELETE FROM reference_loot_template WHERE entry IN (36020,36021);
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('36020', '30091', '0', '1', '1', '1', '0', 'True-Aim Stalker Bands'),
('36020', '30092', '0', '1', '1', '1', '0', 'Orca-Hide Boots'),
('36020', '30095', '0', '1', '1', '1', '0', 'Fang of the Leviathan'),
('36020', '30096', '0', '1', '1', '1', '0', 'Girdle of the Invulnerable'),
('36020', '30097', '0', '1', '1', '1', '0', 'Coral-Barbed Shoulderpads'),
('36020', '30627', '0', '1', '1', '1', '0', 'Tsunami Talisman'),

('36021', '30239', '0', '1', '1', '1', '0', 'Gloves of the Vanquished Champion'),
('36021', '30240', '0', '1', '1', '1', '0', 'Gloves of the Vanquished Defender'),
('36021', '30241', '0', '1', '1', '1', '0', 'Gloves of the Vanquished Hero');

-- ----------------------
-- FATHOM-LORD KARATHRESS
-- ----------------------
DELETE FROM creature_loot_template WHERE entry = 21214;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('21214', '36100', '10', '1', '-36100', '1', '0', 'T5 - Recipes'),
('21214', '29434', '100', '0', '2', '2', '0', 'Badge of Justice'),
('21214', '21877', '18', '0', '2', '3', '0', 'Netherweave Cloth'),
('21214', '61001', '25', '0', '-61001', '1', '0', 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('21214', '61130', '7', '0', '-61130', '1', '0', 'NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('21214', '36022', '100', '1', '-36022', '1', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Fathom-Lord Karathress - Epic Items (Non-Tokens Only)'),
('21214', '36023', '100', '1', '-36023', '3', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Fathom-Lord Karathress - Epic Items (Tokens Only)');

DELETE FROM reference_loot_template WHERE entry IN (36022,36023);
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('36022', '30090', '0', '1', '1', '1', '0', 'World Breaker'),
('36022', '30099', '0', '1', '1', '1', '0', 'Frayed Tether of the Drowned'),
('36022', '30100', '0', '1', '1', '1', '0', 'Soul-Strider Boots'),
('36022', '30101', '0', '1', '1', '1', '0', 'Bloodsea Brigand\'s Vest'),
('36022', '30626', '0', '1', '1', '1', '0', 'Sextant of Unstable Currents'),
('36022', '30663', '0', '1', '1', '1', '0', 'Fathom-Brooch of the Tidewalker'),

('36023', '30245', '0', '1', '1', '1', '0', 'Leggings of the Vanquished Champion'),
('36023', '30246', '0', '1', '1', '1', '0', 'Leggings of the Vanquished Defender'),
('36023', '30247', '0', '1', '1', '1', '0', 'Leggings of the Vanquished Hero');

-- ----------
-- LADY VASHJ
-- ----------
DELETE FROM creature_loot_template WHERE entry = 21212; 
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('21212', '29906', '-100', '0', '1', '1', '0', 'Vashj\'s Vial Remnant'),
('21212', '30183', '100', '1', '2', '2', '0', 'Nether Vortex'),
('21212', '36100', '10', '1', '-36100', '1', '0', 'T5 - Recipes'),
('21212', '29434', '100', '0', '3', '3', '0', 'Badge of Justice'),
('21212', '21877', '18', '0', '2', '3', '0', 'Netherweave Cloth'),
('21212', '61001', '25', '0', '-61001', '1', '0', 'NPC LOOT (Grey World Drop) - (Item Levels: 69-72) - (NPC Levels: 66-72) - TBC NPC ONLY'),
('21212', '61130', '7', '0', '-61130', '1', '0', 'NPC LOOT (Green World Drop) - (Item Levels: 120) - (NPC Levels: 73) - TBC NPC ONLY'),
('21212', '36024', '100', '1', '-36024', '1', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Lady Vashj - Epic Items (Group 1)'),
('21212', '36025', '100', '1', '-36025', '1', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Lady Vashj - Epic Items (Group 2)'),
('21212', '36026', '100', '1', '-36026', '3', '0', 'Coilfang Reservoir: Serpentshrine Cavern (Boss Loot) - Lady Vashj - Epic Items (Tokens Only)');

DELETE FROM reference_loot_template WHERE entry IN (36024,36025,36026);
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
('36024', '30102', '0', '1', '1', '1', '0', 'Krakken-Heart Breastplate'),
('36024', '30103', '0', '1', '1', '1', '0', 'Fang of Vashj'),
('36024', '30104', '0', '1', '1', '1', '0', 'Cobra-Lash Boots'),
('36024', '30105', '0', '1', '1', '1', '0', 'Serpent Spine Longbow'),
('36024', '30106', '0', '1', '1', '1', '0', 'Belt of One-Hundred Deaths'),
('36024', '30621', '0', '1', '1', '1', '0', 'Prism of Inner Calm'),

('36025', '30108', '0', '1', '1', '1', '0', 'Lightfathom Scepter'),
('36025', '30109', '0', '1', '1', '1', '0', 'Ring of Endless Coils'),
('36025', '30110', '0', '1', '1', '1', '0', 'Coral Band of the Revived'),
('36025', '30111', '0', '1', '1', '1', '0', 'Runetotem\'s Mantle'),
('36025', '30107', '0', '1', '1', '1', '0', 'Vestments of the Sea-Witch'),
('36025', '30112', '0', '1', '1', '1', '0', 'Glorious Gauntlets of Crestfall'),

('36026', '30242', '0', '1', '1', '1', '0', 'Helm of the Vanquished Champion'),
('36026', '30243', '0', '1', '1', '1', '0', 'Helm of the Vanquished Defender'),
('36026', '30244', '0', '1', '1', '1', '0', 'Helm of the Vanquished Hero');


-- -----
-- TRASH
-- -----
DELETE FROM reference_loot_template WHERE entry IN (36098,36099,36100);
INSERT INTO reference_loot_template(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(36098,30021,0,1,1,1,0,'Wildfury Greatstaff'),
(36098,30022,0,1,1,1,0,'Pendant of the Perilous'),
(36098,30023,0,1,1,1,0,'Totem of the Maelstrom'),
(36098,30025,0,1,1,1,0,'Serpentshrine Shuriken'),
(36098,30027,0,1,1,1,0,'Boots of Courage Unending'),
(36098,30620,0,1,1,1,0,'Spyglass of the Hidden Fleet'),

(36099,30020,0,1,1,1,0,'Fire-Cord of the Magus'),
(36099,30024,0,1,1,1,0,'Mantle of the Elven Kings'),
(36099,30026,0,1,1,1,0,'Bands of the Celestial Archer'),
(36099,30028,0,1,1,1,0,'Seventh Ring of the Tirisfalen'),
(36099,30029,0,1,1,1,0,'Bark-Gloves of Ancient Wisdom'),
(36099,30030,0,1,1,1,0,'Girdle of Fallen Stars'),

(36100,30280,0,1,1,1,201,'Pattern: Belt of Blasting'),
(36100,30281,0,1,1,1,201,'Pattern: Belt of the Long Road'),
(36100,30282,0,1,1,1,0,'Pattern: Boots of Blasting'),
(36100,30283,0,1,1,1,0,'Pattern: Boots of the Long Road'),
(36100,30301,0,1,1,1,199,'Pattern: Belt of Natural Power'),
(36100,30302,0,1,1,1,199,'Pattern: Belt of Deep Shadow'),
(36100,30303,0,1,1,1,199,'Pattern: Belt of the Black Eagle'),
(36100,30304,0,1,1,1,199,'Pattern: Monsoon Belt'),
(36100,30305,0,1,1,1,0,'Pattern: Boots of Natural Grace'),
(36100,30306,0,1,1,1,0,'Pattern: Boots of Utter Darkness'),
(36100,30307,0,1,1,1,0,'Pattern: Boots of the Crimson Hawk'),
(36100,30308,0,1,1,1,0,'Pattern: Hurricane Boots'),
(36100,30321,0,1,1,1,198,'Plans: Belt of the Guardian'),
(36100,30322,0,1,1,1,198,'Plans: Red Belt of Battle'),
(36100,30323,0,1,1,1,0,'Plans: Boots of the Protector'),
(36100,30324,0,1,1,1,0,'Plans: Red Havoc Boots');

DELETE FROM creature_loot_template WHERE item = 36098 AND mincountorref = -36098;
INSERT INTO creature_loot_template(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(21221,36098,2.483,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21299,36098,2.6,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21339,36098,2.47,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21220,36098,2.205,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21298,36098,2.242,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21301,36098,2.196,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21230,36098,2.889,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21231,36098,2.971,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21232,36098,2.707,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21263,36098,0.212,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21229,36098,2.839,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21863,36098,1.148,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21246,36098,9.105,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21224,36098,1.691,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21227,36098,1.767,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21228,36098,2.178,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21226,36098,2.094,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21225,36098,1.945,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21251,36098,8.705,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items'),
(21218,36098,2.224,1,-36098,1,0,'Coilfang Reservoir: Serpentshrine Cavern - Trash loot - Items');

DELETE FROM creature_loot_template WHERE item = 36099 AND mincountorref = -36099;
INSERT INTO creature_loot_template(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(20043,36099,1.227,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20033,36099,2.767,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20046,36099,2.916,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20031,36099,2.656,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20035,36099,2.901,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20036,36099,2.538,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20032,36099,2.838,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20047,36099,2.756,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20049,36099,2.929,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20048,36099,2.848,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20050,36099,2.801,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20040,36099,4.037,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20052,36099,2.913,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20041,36099,4.11,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20045,36099,2.607,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20044,36099,1.222,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20039,36099,1.793,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20034,36099,2.781,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20037,36099,2.61,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items'),
(20042,36099,2.555,1,-36099,1,0,'Tempest Keep: The Eye - Trash loot - Items');

DELETE FROM creature_loot_template WHERE item = 36100 AND mincountorref = -36100;
INSERT INTO creature_loot_template(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(20043,36100,0.779,1,-36100,1,0,'T5 - Recipes'),
(20033,36100,1.83,1,-36100,1,0,'T5 - Recipes'),
(20046,36100,1.603,1,-36100,1,0,'T5 - Recipes'),
(20031,36100,1.768,1,-36100,1,0,'T5 - Recipes'),
(20035,36100,1.94,1,-36100,1,0,'T5 - Recipes'),
(20036,36100,1.673,1,-36100,1,0,'T5 - Recipes'),
(20032,36100,1.822,1,-36100,1,0,'T5 - Recipes'),
(20047,36100,1.882,1,-36100,1,0,'T5 - Recipes'),
(20049,36100,1.881,1,-36100,1,0,'T5 - Recipes'),
(20048,36100,1.877,1,-36100,1,0,'T5 - Recipes'),
(20050,36100,1.833,1,-36100,1,0,'T5 - Recipes'),
(20040,36100,2.475,1,-36100,1,0,'T5 - Recipes'),
(20052,36100,1.784,1,-36100,1,0,'T5 - Recipes'),
(20041,36100,2.701,1,-36100,1,0,'T5 - Recipes'),
(20045,36100,1.382,1,-36100,1,0,'T5 - Recipes'),
(20044,36100,0.788,1,-36100,1,0,'T5 - Recipes'),
(20039,36100,1.236,1,-36100,1,0,'T5 - Recipes'),
(20034,36100,1.802,1,-36100,1,0,'T5 - Recipes'),
(20037,36100,1.953,1,-36100,1,0,'T5 - Recipes'),
(20042,36100,1.655,1,-36100,1,0,'T5 - Recipes'),

(21221,36100,1.338,1,-36100,1,0,'T5 - Recipes'),
(21299,36100,1.489,1,-36100,1,0,'T5 - Recipes'),
(21339,36100,1.533,1,-36100,1,0,'T5 - Recipes'),
(21220,36100,1.695,1,-36100,1,0,'T5 - Recipes'),
(21298,36100,1.586,1,-36100,1,0,'T5 - Recipes'),
(21301,36100,1.69,1,-36100,1,0,'T5 - Recipes'),
(21230,36100,2.219,1,-36100,1,0,'T5 - Recipes'),
(21231,36100,1.84,1,-36100,1,0,'T5 - Recipes'),
(21232,36100,1.726,1,-36100,1,0,'T5 - Recipes'),
(21263,36100,0.1,1,-36100,1,0,'T5 - Recipes'),
(21229,36100,1.96,1,-36100,1,0,'T5 - Recipes'),
(21863,36100,0.532,1,-36100,1,0,'T5 - Recipes'),
(21246,36100,7.62,1,-36100,1,0,'T5 - Recipes'),
(21224,36100,1.733,1,-36100,1,0,'T5 - Recipes'),
(21227,36100,1.1,1,-36100,1,0,'T5 - Recipes'),
(21228,36100,1.346,1,-36100,1,0,'T5 - Recipes'),
(21226,36100,1.358,1,-36100,1,0,'T5 - Recipes'),
(21225,36100,1.387,1,-36100,1,0,'T5 - Recipes'),
(21251,36100,5.509,1,-36100,1,0,'T5 - Recipes'),
(21218,36100,1.46,1,-36100,1,0,'T5 - Recipes');

DELETE FROM creature_loot_template WHERE item = 30183 AND entry NOT IN (21212,19622);
INSERT INTO creature_loot_template(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(20043,30183,1.172,1,1,1,0,'Nether Vortex'),
(20033,30183,3.012,1,1,1,0,'Nether Vortex'),
(20046,30183,2.962,1,1,1,0,'Nether Vortex'),
(20031,30183,2.803,1,1,1,0,'Nether Vortex'),
(20035,30183,2.877,1,1,1,0,'Nether Vortex'),
(20036,30183,2.83,1,1,1,0,'Nether Vortex'),
(20032,30183,2.799,1,1,1,0,'Nether Vortex'),
(20047,30183,2.911,1,1,1,0,'Nether Vortex'),
(20049,30183,2.86,1,1,1,0,'Nether Vortex'),
(20048,30183,2.952,1,1,1,0,'Nether Vortex'),
(20050,30183,3.028,1,1,1,0,'Nether Vortex'),
(20040,30183,4.233,1,1,1,0,'Nether Vortex'),
(20052,30183,2.621,1,1,1,0,'Nether Vortex'),
(20041,30183,4.209,1,1,1,0,'Nether Vortex'),
(20045,30183,3.729,1,1,1,0,'Nether Vortex'),
(20044,30183,1.156,1,1,1,0,'Nether Vortex'),
(20039,30183,1.706,1,1,1,0,'Nether Vortex'),
(20034,30183,2.771,1,1,1,0,'Nether Vortex'),
(20037,30183,2.919,1,1,1,0,'Nether Vortex'),
(20042,30183,2.671,1,1,1,0,'Nether Vortex'),

(21221,30183,2.403,1,1,1,0,'Nether Vortex'),
(21299,30183,2.349,1,1,1,0,'Nether Vortex'),
(21339,30183,2.217,1,1,1,0,'Nether Vortex'),
(21220,30183,2.473,1,1,1,0,'Nether Vortex'),
(21298,30183,2.468,1,1,1,0,'Nether Vortex'),
(21301,30183,2.54,1,1,1,0,'Nether Vortex'),
(21230,30183,2.756,1,1,1,0,'Nether Vortex'),
(21231,30183,2.936,1,1,1,0,'Nether Vortex'),
(21232,30183,3.001,1,1,1,0,'Nether Vortex'),
(21263,30183,0.184,1,1,1,0,'Nether Vortex'),
(21229,30183,3.072,1,1,1,0,'Nether Vortex'),
(21863,30183,2.052,1,1,1,0,'Nether Vortex'),
(21246,30183,9.478,1,1,1,0,'Nether Vortex'),
(21224,30183,2.2117,1,1,1,0,'Nether Vortex'),
(21227,30183,1.913,1,1,1,0,'Nether Vortex'),
(21228,30183,2.512,1,1,1,0,'Nether Vortex'),
(21226,30183,2.277,1,1,1,0,'Nether Vortex'),
(21225,30183,2.377,1,1,1,0,'Nether Vortex'),
(21251,30183,8.239,1,1,2,0,'Nether Vortex'),
(21218,30183,2.333,1,1,1,0,'Nether Vortex');

UPDATE creature_template SET LootId=20047 WHERE entry IN(20047);
UPDATE item_template SET AllowableClass=32767,AllowableRace=-1 WHERE entry IN(30028);

-- CLEAN UP

-- delete stray items which should only be in reference template 
DELETE FROM creature_loot_template WHERE item IN (30030,30029,30281,30321,30323,30282,30283,30307,30324,30280,30305,30024,30302,30322,30306,30304,30308,30020,30301,30303,30026,30025,30023,30620,30027,30022,30021,30028) AND mincountorref >= 0;

-- delete unused references
DELETE FROM reference_loot_template WHERE entry IN (34052,34053,34054,34055,34056,34057,34058,34059,34060,34061,34062);

