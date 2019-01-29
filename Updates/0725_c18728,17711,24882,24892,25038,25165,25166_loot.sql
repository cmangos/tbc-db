-- (35033, '(World Boss Loot) - Doomwalker (17711) - Epic Items (Group 1)'),
-- (35034, '(World Boss Loot) - Doomwalker (17711) - Epic Items (Group 2)'),
-- (35035, '(World Boss Loot) - Doom Lord Kazzak (18728) - Epic Items (Group 1)'),
-- (35036, '(World Boss Loot) - Doom Lord Kazzak (18728) - Epic Items (Group 2)'),

DELETE FROM `creature_loot_template` WHERE `entry` IN (17711,18728) AND `item` IN (34080,34081,35033,35034,35035,35036);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(17711, 35033, 100, 1, -35033, 1, 0, '(World Boss Loot) - Doomwalker (17711) - Epic Items (Group 1)'),
(17711, 35034, 100, 1, -35034, 1, 0, '(World Boss Loot) - Doomwalker (17711) - Epic Items (Group 2)'),
(18728, 35035, 100, 1, -35035, 1, 0, 'World Boss Loot) - Doom Lord Kazzak (18728) - Epic Items (Group 1)'),
(18728, 35036, 100, 1, -35036, 1, 0, 'World Boss Loot) - Doom Lord Kazzak (18728) - Epic Items (Group 2)');

-- Reused for classic content
DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN 35033 AND 35036;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(35033, 30729, 0, 1, 1, 1, 0, 'Black-Iron Battlecloak'),
(35033, 30726, 0, 1, 1, 1, 0, 'Archaic Charm of Presence'),
(35033, 30723, 0, 1, 1, 1, 0, 'Talon of the Tempest'),
(35033, 30722, 0, 1, 1, 1, 0, 'Ethereum Nexus-Reaver'),
(35033, 30724, 0, 1, 1, 1, 0, 'Barrel-Blade Longrifle'),

(35034, 30725, 0, 1, 1, 1, 0, 'Anger-Spark Gloves'),
(35034, 30727, 0, 1, 1, 1, 0, 'Gilded Trousers of Benediction'),
(35034, 30728, 0, 1, 1, 1, 0, 'Fathom-Helm of the Deeps'),
(35034, 30730, 0, 1, 1, 1, 0, 'Terrorweave Tunic'),
(35034, 30731, 0, 1, 1, 1, 0, 'Faceguard of the Endless Watch'),

(35035, 30735, 0, 1, 1, 1, 0, 'Ancient Spellcloak of the Highborne'),
(35035, 30736, 0, 1, 1, 1, 0, 'Ring of Flowing Light'),
(35035, 30738, 0, 1, 1, 1, 0, 'Ring of Reciprocity'),
(35035, 30733, 0, 1, 1, 1, 0, 'Hope Ender'),
(35035, 30732, 0, 1, 1, 1, 0, 'Exodar Life-Staff'),

(35036, 30734, 0, 1, 1, 1, 0, 'Leggings of the Seventh Circle'),
(35036, 30737, 0, 1, 1, 1, 0, 'Gold-Leaf Wildboots'),
(35036, 30739, 0, 1, 1, 1, 0, 'Scaled Greaves of the Marksman'),
(35036, 30740, 0, 1, 1, 1, 0, 'Ripfiend Shoulderplates'),
(35036, 30741, 0, 1, 1, 1, 0, 'Topaz-Studded Battlegrips');

DELETE FROM `creature_loot_template` WHERE `entry` IN (24882,24892,25038,25165,25166) AND `item` IN (34082,34083,34084,34085,36171,36173,36175,36176,36178);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES 
(24892, 36171, 100, 1, -36171, 3, 0, 'Sunwell Plateau (Boss Loot) - Sathrovarr the Corruptor (24892) - Epic Items (T6 Bracers)'),
(24882, 36173, 100, 1, -36173, 3, 0, 'Sunwell Plateau (Boss Loot) - Brutallus (24882) - Epic Items (T6 Belt)'),
(25038, 36175, 100, 1, -36175, 3, 0, 'Sunwell Plateau (Boss Loot) - Felmyst (25038) - Epic Items (T6 Boots)'),
(25165, 36176, 100, 1, -36176, 2, 0, 'Sunwell Plateau (Boss Loot) - Lady Sacrolash (25165) - Epic Items (Group 1)'),
(25166, 36178, 100, 1, -36178, 2, 0, 'Sunwell Plateau (Boss Loot) - Grand Warlock Alythess (25166) - Epic Items (Group 1)');

-- Reused for classic content
DELETE FROM `reference_loot_template_names` WHERE `entry` BETWEEN 36170 AND 36187;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
-- (36170, 'Sunwell Plateau (Boss Loot) - Sathrovarr the Corruptor (24892) - Epic Items'),
(36171, 'Sunwell Plateau (Boss Loot) - Sathrovarr the Corruptor (24892) - Tokens (T6 Bracers)'),
-- (36172, 'Sunwell Plateau (Boss Loot) - Brutallus (24882) - Epic Items'),
(36173, 'Sunwell Plateau (Boss Loot) - Brutallus (24882) - Tokens (T6 Belt)'),
-- (36174, 'Sunwell Plateau (Boss Loot) - Felmyst (25038) - Epic Items'),
(36175, 'Sunwell Plateau (Boss Loot) - Felmyst (25038) - Tokens (T6 Boots)'),
(36176, 'Sunwell Plateau (Boss Loot) - Lady Sacrolash (25165) - Epic Items (Group 1)'),
-- (36177, 'Sunwell Plateau (Boss Loot) - Lady Sacrolash (25165) - Epic Items (Group 2)'),
(36178, 'Sunwell Plateau (Boss Loot) - Grand Warlock Alythess (25166) - Epic Items (Group 1)');
-- (36179, 'Sunwell Plateau (Boss Loot) - Grand Warlock Alythess (25166) - Epic Items (Group 2)'),
-- (36180, 'Sunwell Plateau (Boss Loot) - Lady Sacrolash (25165) & Grand Warlock Alythess (25166) - Epic Items (Tokens)'),
-- (36181, 'Sunwell Plateau (Boss Loot) - Lady Sacrolash (25165) & Grand Warlock Alythess (25166) - Epic Items (Sin''dorei Pendant)');

-- 36188
DELETE FROM `reference_loot_template` WHERE `entry` IN (36171, 36173, 36175, 36176, 36178);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(36171, 34848, 0, 1, 1, 1, 0, 'Bracers of the Forgotten Conqueror'),
(36171, 34851, 0, 1, 1, 1, 0, 'Bracers of the Forgotten Protector'),
(36171, 34852, 0, 1, 1, 1, 0, 'Bracers of the Forgotten Vanquisher'),

(36173, 34853, 0, 1, 1, 1, 0, 'Belt of the Forgotten Conqueror'),
(36173, 34854, 0, 1, 1, 1, 0, 'Belt of the Forgotten Protector'),
(36173, 34855, 0, 1, 1, 1, 0, 'Belt of the Forgotten Vanquisher'),

(36175, 34856, 0, 1, 1, 1, 0, 'Boots of the Forgotten Conqueror'),
(36175, 34857, 0, 1, 1, 1, 0, 'Boots of the Forgotten Protector'),
(36175, 34858, 0, 1, 1, 1, 0, 'Boots of the Forgotten Vanquisher'),

(36176, 34189, 0, 1, 1, 1, 0, 'Band of Ruinous Delight'),
(36176, 34190, 0, 1, 1, 1, 0, 'Crimson Paragon\'s Cover'),
(36176, 34192, 0, 1, 1, 1, 0, 'Pauldrons of Perseverance'),
(36176, 34193, 0, 1, 1, 1, 0, 'Spaulders of the Thalassian Savior'),
(36176, 34194, 0, 1, 1, 1, 0, 'Mantle of the Golden Forest'),
(36176, 34195, 0, 1, 1, 1, 0, 'Shoulderpads of Vehemence'),
(36176, 34196, 0, 1, 1, 1, 0, 'Golden Bow of Quel\'Thalas'),
(36176, 34197, 0, 1, 1, 1, 0, 'Shiv of Exsanguination'),
(36176, 34198, 0, 1, 1, 1, 0, 'Stanchion of Primal Instinct'),
(36176, 34199, 0, 1, 1, 1, 0, 'Archon\'s Gavel'),
(36176, 34202, 0, 1, 1, 1, 0, 'Shawl of Wonderment'),
(36176, 34203, 0, 1, 1, 1, 0, 'Grip of Mannoroth'),
(36176, 34204, 0, 1, 1, 1, 0, 'Amulet of Unfettered Magics'),
(36176, 34205, 0, 1, 1, 1, 0, 'Shroud of Redeemed Souls'),
(36176, 34206, 0, 1, 1, 1, 0, 'Book of Highborne Hymns'),
(36176, 34208, 0, 1, 1, 1, 0, 'Equilibrium Epaulets'),
(36176, 34209, 0, 1, 1, 1, 0, 'Spaulders of Reclamation'),
(36176, 34210, 0, 1, 1, 1, 0, 'Amice of the Convoker'),

(36178, 34189, 0, 1, 1, 1, 0, 'Band of Ruinous Delight'),
(36178, 34190, 0, 1, 1, 1, 0, 'Crimson Paragon\'s Cover'),
(36178, 34192, 0, 1, 1, 1, 0, 'Pauldrons of Perseverance'),
(36178, 34193, 0, 1, 1, 1, 0, 'Spaulders of the Thalassian Savior'),
(36178, 34194, 0, 1, 1, 1, 0, 'Mantle of the Golden Forest'),
(36178, 34195, 0, 1, 1, 1, 0, 'Shoulderpads of Vehemence'),
(36178, 34196, 0, 1, 1, 1, 0, 'Golden Bow of Quel\'Thalas'),
(36178, 34197, 0, 1, 1, 1, 0, 'Shiv of Exsanguination'),
(36178, 34198, 0, 1, 1, 1, 0, 'Stanchion of Primal Instinct'),
(36178, 34199, 0, 1, 1, 1, 0, 'Archon\'s Gavel'),
(36178, 34202, 0, 1, 1, 1, 0, 'Shawl of Wonderment'),
(36178, 34203, 0, 1, 1, 1, 0, 'Grip of Mannoroth'),
(36178, 34204, 0, 1, 1, 1, 0, 'Amulet of Unfettered Magics'),
(36178, 34205, 0, 1, 1, 1, 0, 'Shroud of Redeemed Souls'),
(36178, 34206, 0, 1, 1, 1, 0, 'Book of Highborne Hymns'),
(36178, 34208, 0, 1, 1, 1, 0, 'Equilibrium Epaulets'),
(36178, 34209, 0, 1, 1, 1, 0, 'Spaulders of Reclamation'),
(36178, 34210, 0, 1, 1, 1, 0, 'Amice of the Convoker');

