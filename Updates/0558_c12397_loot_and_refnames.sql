-- Added missing world drops from loot table of creature 12397 (Lord Kazzak)
-- Based on loot table of creature 6109 (Azuregos) and similar raid bosses
-- Source: http://wowd.org/creatures/12397.html
-- https://web.archive.org/web/20070113051839/http://wow.allakhazam.com:80/db/mob.html?wmob=12397
DELETE FROM `reference_loot_template_names` WHERE `entry` IN (35033,35034,35035,35036,35032);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(35033, '(World Boss Loot) - Doomwalker (17711) - Epic Items (Group 1)'),
(35034, '(World Boss Loot) - Doomwalker (17711) - Epic Items (Group 2)'),
(35035, '(World Boss Loot) - Doom Lord Kazzak (18728) - Epic Items (Group 1)'),
(35036, '(World Boss Loot) - Doom Lord Kazzak (18728) - Epic Items (Group 2)'),
(35032, '(World Boss Loot) - Lord Kazzak / Highlord Kruul - Epic Items');

DELETE FROM `reference_loot_template` WHERE `entry` = 35032;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(35032, 18544, 0, 1, 1, 1, 0, 'Doomhide Gauntlets'),
(35032, 18546, 0, 1, 1, 1, 0, 'Infernal Headcage'),
(35032, 19133, 0, 1, 1, 1, 0, 'Fel Infused Leggings'),
(35032, 19134, 0, 1, 1, 1, 0, 'Flayed Doomguard Belt'),
(35032, 19135, 0, 1, 1, 1, 0, 'Blacklight Bracer'),
(35032, 18204, 0, 2, 1, 1, 0, 'Eskhandar\'s Pelt'),
(35032, 18543, 0, 2, 1, 1, 0, 'Ring of Entropy'),
(35032, 17111, 0, 2, 1, 1, 0, 'Blazefury Medallion'),
(35032, 17113, 0, 2, 1, 1, 0, 'Amberseal Keeper'),
(35032, 17112, 0, 2, 1, 1, 0, 'Empyrean Demolisher');

DELETE FROM `creature_loot_template` WHERE `entry` = 12397;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(12397, 12662, 62.6506, 0, 5, 8, 0, 'Demonic Rune'),
(12397, 14256, 34.9398, 0, 5, 8, 0, 'Felcloth'),
(12397, 34002, 100, 1, -34002, 3, 0, ''),
(12397, 34003, 100, 1, -34003, 2, 0, ''),
(12397, 18665, 100, 3, 1, 1, 0, 'The Eye of Shadow'),
(12397, 35032, 100, 1, -35032, 1, 0, '(World Boss Loot) - Lord Kazzak / Highlord Kruul - Epic Items (Group 1)'),
(12397, 2, 100, 2, -35032, 1, 0, '(World Boss Loot) - Lord Kazzak / Highlord Kruul - Epic Items (Group 2)'),
(12397, 190003, 100, 2, -34003, 1, 0, 'Sack of Gems (Blue/Green/Gray/Yellow/Red)'),
-- patterns not included in 34002 or 34003, links to verify these are world loot drops should be added to these at some point
(12397, 12691, 3.06, 8, 1, 1, 0, 'Plans: Wildthorn Mail'), -- https://web.archive.org/web/20050313164315/http://wow.allakhazam.com:80/db/item.html?witem=12691
(12397, 12692, 1.8, 8, 1, 1, 0, 'Plans: Thorium Shield Spike'), -- https://web.archive.org/web/20070104035850/http://wow.allakhazam.com:80/db/item.html?witem=12692
(12397, 12693, 1.2, 8, 1, 1, 0, 'Plans: Thorium Boots'), -- https://web.archive.org/web/20060526120421/http://wow.allakhazam.com:80/db/item.html?witem=12693
(12397, 12694, 0.7, 8, 1, 1, 0, 'Plans: Thorium Helm'), -- https://web.archive.org/web/20050404061106/http://wow.allakhazam.com:80/db/item.html?witem=12694
(12397, 12695, 0.78, 8, 1, 1, 0, 'Plans: Radiant Gloves'), -- https://web.archive.org/web/20050404061521/http://wow.allakhazam.com:80/db/item.html?witem=12695
(12397, 12697, 0.6, 8, 1, 1, 0, 'Plans: Radiant Boots'), -- https://web.archive.org/web/20060307011937/http://wow.allakhazam.com:80/db/item.html?witem=12697
(12397, 12703, 0.14, 8, 1, 1, 0, 'Plans: Storm Gauntlets'), -- https://web.archive.org/web/20050401154511/http://wow.allakhazam.com:80/db/item.html?witem=12703
(12397, 12704, 1.08, 8, 1, 1, 0, 'Plans: Thorium Leggings'), -- https://web.archive.org/web/20050727085505/http://wow.allakhazam.com:80/db/item.html?witem=12704
(12397, 12713, 3.7, 8, 1, 1, 0, 'Plans: Radiant Leggings'), -- https://web.archive.org/web/20050411130401/http://wow.allakhazam.com:80/db/item.html?witem=12713
(12397, 12716, 0.39, 8, 1, 1, 0, 'Plans: Helm of the Great Chief'), -- https://web.archive.org/web/20070110011611/http://wow.allakhazam.com:80/db/item.html?witem=12716
(12397, 13490, 2.86, 8, 1, 1, 0, 'Recipe: Greater Stoneshield Potion'), -- https://web.archive.org/web/20051129103203/http://wow.allakhazam.com:80/db/item.html?witem=13490
(12397, 13492, 1.52, 8, 1, 1, 0, 'Recipe: Purification Potion'), -- https://web.archive.org/web/20050313164344/http://wow.allakhazam.com:80/db/item.html?witem=13492
(12397, 13493, 0.05, 8, 1, 1, 0, 'Recipe: Greater Arcane Elixir'), -- https://web.archive.org/web/20050414041357/http://wow.allakhazam.com:80/db/item.html?witem=13493
(12397, 13518, 0.42, 8, 1, 1, 0, 'Recipe: Flask of Petrification'), -- https://web.archive.org/web/20060107031519/http://wow.allakhazam.com:80/db/item.html?witem=13518
(12397, 14466, 2.32, 8, 1, 1, 0, 'Pattern: Frostweave Tunic'), -- https://web.archive.org/web/20050128044420/http://wow.allakhazam.com:80/db/item.html?witem=14466
(12397, 14467, 3.2, 8, 1, 1, 0, 'Pattern: Frostweave Robe'), -- https://web.archive.org/web/20060525084308/http://wow.allakhazam.com:80/db/item.html?witem=14467
(12397, 14470, 2.12, 8, 1, 1, 0, 'Pattern: Runecloth Tunic'), -- https://web.archive.org/web/20050218154932/http://wow.allakhazam.com:80/db/item.html?witem=14470
(12397, 14474, 3.46, 8, 1, 1, 0, 'Pattern: Frostweave Gloves'), -- https://web.archive.org/web/20050128044428/http://wow.allakhazam.com:80/db/item.html?witem=14474
(12397, 14478, 2.5, 8, 1, 1, 0, 'Pattern: Brightcloth Robe'), -- https://web.archive.org/web/20050128042805/http://wow.allakhazam.com:80/db/item.html?witem=14478
(12397, 14479, 4.02, 8, 1, 1, 0, 'Pattern: Brightcloth Gloves'), -- https://web.archive.org/web/20050411130434/http://wow.allakhazam.com:80/db/item.html?witem=14479
(12397, 14484, 2.92, 8, 1, 1, 0, 'Pattern: Brightcloth Cloak'), -- https://web.archive.org/web/20050404054150/http://wow.allakhazam.com:80/db/item.html?witem=14484
(12397, 14489, 3.28, 8, 1, 1, 0, 'Pattern: Frostweave Pants'), -- https://web.archive.org/web/20051111040323/http://wow.allakhazam.com:80/db/item.html?witem=14489
(12397, 14491, 1.98, 8, 1, 1, 0, 'Pattern: Runecloth Pants'), -- https://web.archive.org/web/20050129044900/http://wow.allakhazam.com:80/db/item.html?witem=14491
(12397, 14492, 0.78, 8, 1, 1, 0, 'Pattern: Felcloth Boots'), -- https://web.archive.org/web/20050515032323/http://wow.allakhazam.com:80/db/item.html?witem=14492
(12397, 14494, 1.66, 8, 1, 1, 0, 'Pattern: Brightcloth Pants'), -- https://web.archive.org/web/20050331165721/http://wow.allakhazam.com:80/db/item.html?witem=14494
(12397, 14496, 1.38, 8, 1, 1, 0, 'Pattern: Felcloth Hood'), -- https://web.archive.org/web/20050401150531/http://wow.allakhazam.com:80/db/item.html?witem=14496
(12397, 14497, 0.23, 8, 1, 1, 0, 'Pattern: Mooncloth Leggings'), -- https://web.archive.org/web/20071029225304/http://wow.allakhazam.com:80/db/item.html?witem=14497
(12397, 14498, 2.58, 8, 1, 1, 0, 'Pattern: Runecloth Headband'), -- https://web.archive.org/web/20060211013322/http://wow.allakhazam.com:80/db/item.html?witem=14498
(12397, 14499, 0.78, 8, 1, 1, 0, 'Pattern: Mooncloth Bag'), -- https://web.archive.org/web/20060107040525/http://wow.allakhazam.com:80/db/item.html?witem=14499
(12397, 14504, 2.4, 8, 1, 1, 0, 'Pattern: Runecloth Shoulders'), -- https://web.archive.org/web/20050129103405/http://wow.allakhazam.com:80/db/item.html?witem=14504
(12397, 14506, 1.72, 8, 1, 1, 0, 'Pattern: Felcloth Robe'), -- https://web.archive.org/web/20050128044505/http://wow.allakhazam.com:80/db/item.html?witem=14506
(12397, 14507, 0.39, 8, 1, 1, 0, 'Pattern: Mooncloth Shoulders'), -- https://web.archive.org/web/20050331165452/http://wow.allakhazam.com:80/db/item.html?witem=14507
(12397, 14508, 3.6, 8, 1, 1, 0, 'Pattern: Felcloth Shoulders'), -- https://web.archive.org/web/20060225231306/http://wow.allakhazam.com:80/db/item.html?witem=14508
(12397, 14510, 0.15, 8, 1, 1, 0, 'Pattern: Bottomless Bag'), -- https://web.archive.org/web/20050817154053/http://wow.allakhazam.com:80/db/item.html?witem=14510
(12397, 15731, 1.2, 8, 1, 1, 0, 'Pattern: Runic Leather Gauntlets'), -- https://web.archive.org/web/20050207022035/http://wow.allakhazam.com:80/db/item.html?witem=15731
(12397, 15737, 1.94, 8, 1, 1, 0, 'Pattern: Chimeric Boots'), -- https://web.archive.org/web/20050207025742/http://wow.allakhazam.com:80/db/item.html?witem=15737
(12397, 15742, 1.62, 8, 1, 1, 0, 'Pattern: Warbear Harness'), -- https://web.archive.org/web/20050418191006/http://wow.allakhazam.com:80/db/item.html?witem=15742		"ok, teaches the same spell"
(12397, 15743, 1.52, 8, 1, 1, 0, 'Pattern: Heavy Scorpid Belt'), -- http://wow.allakhazam.com:80/db/item.html?witem=15743
(12397, 15745, 2.46, 8, 1, 1, 0, 'Pattern: Runic Leather Belt'), -- https://web.archive.org/web/20050207035147/http://wow.allakhazam.com:80/db/item.html?witem=15745
(12397, 15746, 1.38, 8, 1, 1, 0, 'Pattern: Chimeric Leggings'), -- https://web.archive.org/web/20050128044612/http://wow.allakhazam.com:80/db/item.html?witem=15746
(12397, 15754, 0.05, 8, 1, 1, 0, 'Pattern: Warbear Woolies'), -- https://web.archive.org/web/20050207045406/http://wow.allakhazam.com:80/db/item.html?witem=15754		"ok, teaches the same spell"
(12397, 15755, 1.2, 8, 1, 1, 0, 'Pattern: Chimeric Vest'), -- https://web.archive.org/web/20050207050423/http://wow.allakhazam.com:80/db/item.html?witem=15755
(12397, 15757, 1.58, 8, 1, 1, 0, 'Pattern: Wicked Leather Pants'), -- https://web.archive.org/web/20050204054952/http://wow.allakhazam.com:80/db/item.html?witem=15757
(12397, 15765, 1.9, 8, 1, 1, 0, 'Pattern: Runic Leather Pants'), -- https://web.archive.org/web/20050204064403/http://wow.allakhazam.com:80/db/item.html?witem=15765
(12397, 16043, 3.38, 8, 1, 1, 0, 'Schematic: Thorium Rifle'), -- https://web.archive.org/web/20050218161138/http://wow.allakhazam.com:80/db/item.html?witem=16043
(12397, 16051, 2.18, 8, 1, 1, 0, 'Schematic: Thorium Shells'), -- https://web.archive.org/web/20050404063429/http://wow.allakhazam.com:80/db/item.html?witem=16051
(12397, 16215, 1.66, 8, 1, 1, 0, 'Formula: Enchant Boots - Greater Stamina'), -- https://web.archive.org/web/20050206205019/http://wow.allakhazam.com:80/db/item.html?witem=16215
(12397, 16218, 1.52, 8, 1, 1, 0, 'Formula: Enchant Bracer - Superior Spirit'), -- https://web.archive.org/web/20050206212421/http://wow.allakhazam.com:80/db/item.html?witem=16218
(12397, 16220, 1.66, 8, 1, 1, 0, 'Formula: Enchant Boots - Spirit'), -- https://web.archive.org/web/20050206212424/http://wow.allakhazam.com:80/db/item.html?witem=16220
(12397, 16245, 3, 8, 1, 1, 0, 'Formula: Enchant Boots - Greater Agility'), -- https://web.archive.org/web/20050206215740/http://wow.allakhazam.com:80/db/item.html?witem=16245
(12397, 16251, 1.3, 8, 1, 1, 0, 'Formula: Enchant Bracer - Superior Stamina'), -- https://web.archive.org/web/20050206220806/http://wow.allakhazam.com:80/db/item.html?witem=16251
(12397, 21371, 3.95, 8, 1, 1, 0, 'Pattern: Core Felcloth Bag'); -- https://web.archive.org/web/20060415063605/http://wow.allakhazam.com:80/db/item.html?witem=21371

-- template fixes

-- Lord Kazzak 12397
UPDATE `creature_template` SET `ExtraFlags` = 0 WHERE `entry` = 12397;