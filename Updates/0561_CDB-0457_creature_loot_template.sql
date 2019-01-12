-- Updated loot table of bosses in Scholomance. Added missing items, updated drop rate, added reference tables.
-- Thanks scotty0100 for pointing.

-- Lord Alexei Barov (10504): added missing entries, increased chance to drop rare item (blue item) to 100%
-- Source: http://www.wowwiki.com/Lord_Alexei_Barov#Patch_changes
DELETE FROM `creature_loot_template` WHERE `entry` = 10504;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10504, 5759, 0.3419, 0, 1, 1, 0, 'Thorium Lockbox'),
(10504, 8766, 1.9034, 0, 1, 1, 0, 'Morning Glory Dew'),
(10504, 8932, 3.7725, 0, 1, 1, 0, 'Alterac Swiss'),
(10504, 12843, 100, 0, 1, 1, 237, 'Corruptor\'s Scourgestone'),
(10504, 13444, 0.4787, 0, 1, 1, 0, 'Major Mana Potion'),
(10504, 13446, 0.7864, 0, 1, 1, 0, 'Major Healing Potion'),
(10504, 14047, 17, 0, 1, 4, 0, 'Runecloth'),
(10504, 16722, 5, 1, 1, 1, 0, 'Lightforge Bracers'),
(10504, 24024, 10, 0, -24024, 1, 0, ''),
(10504, 35031, 100, 1, -35031, 1, 0, '');

-- Lady Illucia Barov (10502): added missing entries (some generic and some specific like dark rune)
-- Source: http://www.wowwiki.com/Lady_Illucia_Barov#Loot
DELETE FROM `creature_loot_template` WHERE `entry` = 10502;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10502, 5759, 0.3419, 0, 1, 1, 0, 'Thorium Lockbox'),
(10502, 7972, 4.1203, 0, 1, 1, 0, 'Ichor of Undeath'),
(10502, 8766, 1.9034, 0, 1, 1, 0, 'Morning Glory Dew'),
(10502, 8948, 3.7725, 0, 1, 1, 0, 'Dried King Bolete'),
(10502, 12753, 19, 0, 1, 1, 0, 'Skin of Shadow'),
(10502, 12808, 1.9921, 0, 1, 1, 0, 'Essence of Undeath'),
(10502, 12843, 100, 0, 1, 1, 237, 'Corruptor\'s Scourgestone'),
(10502, 13444, 0.4787, 0, 1, 1, 0, 'Major Mana Potion'),
(10502, 13446, 0.7864, 0, 1, 1, 0, 'Major Healing Potion'),
(10502, 14047, 17, 0, 1, 4, 0, 'Runecloth'),
(10502, 18335, 1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(10502, 20520, 51.4353, 0, 1, 1, 0, 'Dark Rune'),
(10502, 24024, 10, 0, -24024, 1, 0, ''),
(10502, 35031, 30, 1, -35031, 1, 0, '');

-- Jandice Barov (10503) : added missing entries, especially item 14543 (Darkshade Gloves)
-- Source: http://www.wowwiki.com/Jandice_Barov#Loot
DELETE FROM `creature_loot_template` WHERE `entry` = 10503;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10503, 7972, 3.5331, 0, 1, 1, 0, 'Ichor of Undeath'),
(10503, 8766, 1.4798, 0, 1, 1, 0, 'Morning Glory Dew'),
(10503, 8948, 2.7747, 0, 1, 1, 0, 'Dried King Bolete'),
(10503, 12808, 2.2383, 0, 1, 1, 0, 'Essence of Undeath'),
(10503, 12843, 100, 0, 1, 1, 237, 'Corruptor\'s Scourgestone'),
(10503, 13444, 0.444, 0, 1, 1, 0, 'Major Mana Potion'),
(10503, 13446, 0.7584, 0, 1, 1, 0, 'Major Healing Potion'),
(10503, 13523, 100, 0, 1, 1, 213, 'Blood of Innocents'),
(10503, 13725, -100, 0, 1, 1, 0, 'Krastinov\'s Bag of Horrors'),
(10503, 14047, 12, 0, 2, 5, 0, 'Runecloth'),
(10503, 14541, 0, 1, 1, 1, 0, 'Barovian Family Sword'),
(10503, 14543, 0, 1, 1, 1, 0, 'Darkshade Gloves'),
(10503, 14545, 0, 1, 1, 1, 0, 'Ghostloom Leggings'),
(10503, 14548, 0, 1, 1, 1, 0, 'Royal Cap Spaulders'),
(10503, 16701, 17, 1, 1, 1, 0, 'Dreadmist Mantle'),
(10503, 18335, 1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(10503, 18689, 0, 1, 1, 1, 0, 'Phantasmal Cloak'),
(10503, 18690, 0, 1, 1, 1, 0, 'Wraithplate Leggings'),
(10503, 22394, 0, 1, 1, 1, 0, 'Staff of Metanoia'),
(10503, 24016, 100, 1, -24016, 1, 0, ''),
(10503, 24024, 10, 0, -24024, 1, 0, '');

-- Ras Frostwhisper (10508): updated reference table as some element in it shouldn't be in (like Alanna's Embrace)
-- added missing entries (mostly generic entries)
-- http://www.wowwiki.com/Ras_Frostwhisper#Loot
DELETE FROM `reference_loot_template` WHERE `item` = 13314; -- Remove Alanna\'s Embrace from 35030
DELETE FROM `creature_loot_template` WHERE `entry` = 10508;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10508, 5760, 0.379, 0, 1, 1, 0, 'Eternium Lockbox'),
(10508, 7972, 3.596, 0, 1, 1, 0, 'Ichor of Undeath'),
(10508, 8766, 1.56, 0, 1, 1, 0, 'Morning Glory Dew'),
(10508, 8948, 3.358, 0, 1, 1, 0, 'Dried King Bolete'),
(10508, 12808, 2.3621, 0, 1, 1, 0, 'Essence of Undeath'),
(10508, 12843, 100, 0, 1, 1, 237, 'Corruptor\'s Scourgestone'),
(10508, 13314, 2, 0, 1, 1, 0, 'Alanna\'s Embrace'),
(10508, 13444, 0.4319, 0, 1, 1, 0, 'Major Mana Potion'),
(10508, 13446, 0.9607, 0, 1, 1, 0, 'Major Healing Potion'),
(10508, 13521, 4, 0, 1, 1, 0, 'Recipe: Flask of Supreme Power'),
(10508, 13626, -100, 0, 1, 1, 0, 'Human Head of Ras Frostwhisper'),
(10508, 14047, 15, 0, 2, 5, 0, 'Runecloth'),
(10508, 18335, 1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(10508, 24024, 10, 0, -24024, 1, 0, ''),
(10508, 35030, 100, 1, -35030, 2, 0, '');

-- Rattlegore (11622) : added missing item and reference table, updated drop chance of scourge stone to 100%
DELETE FROM `creature_loot_template` WHERE `entry` = 11622;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(11622, 5760, 0.2309, 0, 1, 1, 0, 'Eternium Lockbox'),
(11622, 7972, 3.4268, 0, 1, 1, 0, 'Ichor of Undeath'),
(11622, 8766, 1.5729, 0, 1, 1, 0, 'Morning Glory Dew'),
(11622, 8948, 3.0585, 0, 1, 1, 0, 'Dried King Bolete'),
(11622, 12808, 2.1472, 0, 1, 1, 0, 'Essence of Undeath'),
(11622, 12841, 100, 0, 1, 1, 237, 'Invader\'s Scourgestone'),
(11622, 13444, 0.3308, 0, 1, 1, 0, 'Major Mana Potion'),
(11622, 13446, 0.8863, 0, 1, 1, 0, 'Major Healing Potion'),
(11622, 13873, 100, 0, 1, 1, 0, 'Viewing Room Key'),
(11622, 14047, 16, 0, 1, 5, 0, 'Runecloth'),
(11622, 14528, 0, 1, 1, 1, 0, 'Rattlecage Buckler'),
(11622, 14531, 0, 1, 1, 1, 0, 'Frightskull Shaft'),
(11622, 14537, 0, 1, 1, 1, 0, 'Corpselight Greaves'),
(11622, 14538, 0, 1, 1, 1, 0, 'Deadwalker Mantle'),
(11622, 14539, 0, 1, 1, 1, 0, 'Bone Ring Helm'),
(11622, 16711, 16, 1, 1, 1, 0, 'Shadowcraft Boots'),
(11622, 18335, 1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(11622, 18686, 0, 1, 1, 1, 0, 'Bone Golem Shoulders'),
(11622, 18782, 40, 0, 1, 1, 0, 'Top Half of Advanced Armorsmithing: Volume II'),
(11622, 22526, 48, 0, 1, 4, 0, 'Bone Fragments'),
(11622, 24024, 10, 0, -24024, 1, 0, '');

-- Doctor Theolen Krastinov (11261) : added missing items and reference table
DELETE FROM `creature_loot_template` WHERE `entry` = 11261;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(11261, 5759, 0.2865, 0, 1, 1, 0, 'Thorium Lockbox'),
(11261, 8766, 1.687, 0, 1, 1, 0, 'Morning Glory Dew'),
(11261, 8932, 3.0663, 0, 1, 1, 0, 'Alterac Swiss'),
(11261, 12843, 100, 0, 1, 1, 237, 'Corruptor\'s Scourgestone'),
(11261, 13444, 0.4668, 0, 1, 1, 0, 'Major Mana Potion'),
(11261, 13446, 1.008, 0, 1, 1, 0, 'Major Healing Potion'),
(11261, 13523, 100, 0, 1, 1, 213, 'Blood of Innocents'),
(11261, 14047, 14, 0, 1, 4, 0, 'Runecloth'),
(11261, 14617, 2, 0, 1, 1, 0, 'Sawbones Shirt'),
(11261, 16684, 14, 1, 1, 1, 0, 'Magister\'s Gloves'),
(11261, 18335, 1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(11261, 24024, 10, 0, -24024, 1, 0, ''),
(11261, 35031, 30, 1, -35031, 1, 0, '');

-- Darkmaster Gandling (1853) : added/moved missing items and reference table and especially items 13937 (Headmaster's Charge) and 21525 (Winter Veil hat)
DELETE FROM `creature_loot_template` WHERE `entry` = 1853;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1853, 5759, 10, 0, -5759, 1, 0, ''),
(1853, 5760, 0.2309, 0, 1, 1, 0, 'Eternium Lockbox'),
(1853, 12843, 100, 0, 1, 1, 237, 'Corruptor\'s Scourgestone'),
(1853, 13398, 0, 2, 1, 1, 0, 'Boots of the Shrieker'),
(1853, 13501, 10, 0, 1, 1, 209, 'Recipe: Major Mana Potion'),
(1853, 13937, 2, 0, 1, 1, 0, 'Headmaster\'s Charge'),
(1853, 13938, 0, 2, 1, 1, 0, 'Bonecreeper Stylus'),
(1853, 13944, 0, 2, 1, 1, 0, 'Tombstone Breastplate'),
(1853, 13951, 0, 2, 1, 1, 0, 'Vigorsteel Vambraces'),
(1853, 13953, 0, 2, 1, 1, 0, 'Silent Fang'),
(1853, 13964, 0, 2, 1, 1, 0, 'Witchblade'),
(1853, 14514, 7, 0, 1, 1, 0, 'Pattern: Robe of the Void'),
(1853, 16667, 0, 1, 1, 1, 0, 'Coif of Elements'),
(1853, 16677, 0, 1, 1, 1, 0, 'Beaststalker\'s Cap'),
(1853, 16686, 0, 1, 1, 1, 0, 'Magister\'s Crown'),
(1853, 16693, 0, 1, 1, 1, 0, 'Devout Crown'),
(1853, 16698, 0, 1, 1, 1, 0, 'Dreadmist Mask'),
(1853, 16707, 0, 1, 1, 1, 0, 'Shadowcraft Cap'),
(1853, 16720, 0, 1, 1, 1, 0, 'Wildheart Cowl'),
(1853, 16727, 0, 1, 1, 1, 0, 'Lightforge Helm'),
(1853, 16731, 0, 1, 1, 1, 0, 'Helm of Valor'),
(1853, 19276, 3, 0, 1, 1, 0, 'Ace of Portals'),
(1853, 21525, 100, 0, 1, 1, 238, 'Green Winter Hat'),
(1853, 22433, 0, 2, 1, 1, 0, 'Don Mauricio\'s Band of Domination');

-- Blood Stewart of Kirtonos (14861) : added missing items, reference table and increased drop chance of scourge stone to 100%
DELETE FROM `creature_loot_template` WHERE `entry` = 14861;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(14861, 5760, 0.3245, 0, 1, 1, 0, 'Eternium Lockbox'),
(14861, 7972, 6.7938, 0, 1, 1, 0, 'Ichor of Undeath'),
(14861, 8766, 2.7986, 0, 1, 1, 0, 'Morning Glory Dew'),
(14861, 8948, 5.9826, 0, 1, 1, 0, 'Dried King Bolete'),
(14861, 12841, 100, 0, 1, 1, 237, 'Invader\'s Scourgestone'),
(14861, 13523, 100, 0, 1, 1, 213, 'Blood of Innocents'),
(14861, 14047, 29, 0, 1, 4, 0, 'Runecloth'),
(14861, 24024, 10, 0, -24024, 1, 0, '');

-- Kirtonos the Herald (10506) : added missing items
DELETE FROM `creature_loot_template` WHERE `entry` = 10506;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10506, 4552, 14, 0, 1, 1, 0, 'Smooth Stone Chip'),
(10506, 4554, 5, 0, 1, 1, 0, 'Shiny Polished Stone'),
(10506, 5759, 0.2655, 0, 1, 1, 0, 'Thorium Lockbox'),
(10506, 8146, 3.3561, 0, 1, 1, 0, 'Wicked Claw'),
(10506, 12843, 100, 0, 1, 1, 237, 'Corruptor\'s Scourgestone'),
(10506, 13955, 0, 1, 1, 1, 0, 'Stoneform Shoulders'),
(10506, 13956, 0, 1, 1, 1, 0, 'Clutch of Andros'),
(10506, 13957, 0, 1, 1, 1, 0, 'Gargoyle Slashers'),
(10506, 13960, 0, 1, 1, 1, 0, 'Heart of the Fiend'),
(10506, 13967, 0, 1, 1, 1, 0, 'Windreaver Greaves'),
(10506, 13969, 0, 1, 1, 1, 0, 'Loomguard Armbraces'),
(10506, 13983, 0, 1, 1, 1, 0, 'Gravestone War Axe'),
(10506, 14024, 0, 1, 1, 1, 0, 'Frightalon'),
(10506, 16734, 0, 1, 1, 1, 0, 'Boots of Valor'),
(10506, 24024, 10, 0, -24024, 1, 0, '');

-- The Ravenian (10507) : added missing items and reference table
DELETE FROM `creature_loot_template` WHERE `entry` = 10507;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10507, 5759, 0.2865, 0, 1, 1, 0, 'Thorium Lockbox'),
(10507, 6530, 11, 0, 1, 1, 0, 'Nightcrawlers'),
(10507, 7972, 3.4268, 0, 1, 1, 0, 'Ichor of Undeath'),
(10507, 8766, 1.5729, 0, 1, 1, 0, 'Morning Glory Dew'),
(10507, 8948, 3.0585, 0, 1, 1, 0, 'Dried King Bolete'),
(10507, 12753, 17, 0, 1, 1, 0, 'Skin of Shadow'),
(10507, 12808, 2.4319, 0, 1, 1, 0, 'Essence of Undeath'),
(10507, 12843, 100, 0, 1, 1, 237, 'Corruptor\'s Scourgestone'),
(10507, 13444, 0.5404, 0, 1, 1, 0, 'Major Mana Potion'),
(10507, 13446, 1.0245, 0, 1, 1, 0, 'Major Healing Potion'),
(10507, 14047, 16, 0, 1, 4, 0, 'Runecloth'),
(10507, 16716, 4, 1, 1, 1, 0, 'Wildheart Belt'),
(10507, 18335, 1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(10507, 20520, 44, 0, 1, 1, 0, 'Dark Rune'),
(10507, 24024, 10, 0, -24024, 1, 0, ''),
(10507, 35031, 30, 1, -35031, 1, 0, '');

-- Instructor Malicia (10505) : added missing items and reference table
DELETE FROM `creature_loot_template` WHERE `entry` = 10505;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10505, 5759, 0.3389, 0, 1, 1, 0, 'Thorium Lockbox'),
(10505, 8766, 1.8637, 0, 1, 1, 0, 'Morning Glory Dew'),
(10505, 8932, 3.1829, 0, 1, 1, 0, 'Alterac Swiss'),
(10505, 12753, 17, 0, 1, 1, 0, 'Skin of Shadow'),
(10505, 12843, 100, 0, 1, 1, 237, 'Corruptor\'s Scourgestone'),
(10505, 13444, 0.6898, 0, 1, 1, 0, 'Major Mana Potion'),
(10505, 13446, 1.1376, 0, 1, 1, 0, 'Major Healing Potion'),
(10505, 14047, 18, 0, 1, 4, 0, 'Runecloth'),
(10505, 16710, 5, 1, 1, 1, 0, 'Shadowcraft Bracers'),
(10505, 18335, 1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(10505, 20520, 44, 0, 1, 1, 0, 'Dark Rune'),
(10505, 24024, 10, 0, -24024, 1, 0, ''),
(10505, 35031, 30, 1, -35031, 1, 0, '');

-- Lorekeeper Polkelt (10901) : added missing items and reference table and increased drop chance of scourge stone to 100%
DELETE FROM `creature_loot_template` WHERE `entry` = 10901;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(10901, 5759, 0.22, 0, 1, 1, 0, 'Thorium Lockbox'),
(10901, 6530, 11, 0, 1, 1, 0, 'Nightcrawlers'),
(10901, 7972, 3.8907, 0, 1, 1, 0, 'Ichor of Undeath'),
(10901, 8766, 1.8527, 0, 1, 1, 0, 'Morning Glory Dew'),
(10901, 8948, 3.358, 0, 1, 1, 0, 'Dried King Bolete'),
(10901, 12753, 17, 0, 1, 1, 0, 'Skin of Shadow'),
(10901, 12808, 1.7485, 0, 1, 1, 0, 'Essence of Undeath'),
(10901, 12841, 100, 0, 1, 1, 237, 'Invader\'s Scourgestone'),
(10901, 13444, 0.4053, 0, 1, 1, 0, 'Major Mana Potion'),
(10901, 13446, 1.0306, 0, 1, 1, 0, 'Major Healing Potion'),
(10901, 14047, 17, 0, 2, 4, 0, 'Runecloth'),
(10901, 16705, 17, 1, 1, 1, 0, 'Dreadmist Wraps'),
(10901, 18335, 1, 0, 1, 1, 0, 'Pristine Black Diamond'),
(10901, 20520, 44, 0, 1, 1, 0, 'Dark Rune'),
(10901, 24024, 10, 0, -24024, 1, 0, ''),
(10901, 35031, 30, 1, -35031, 1, 0, '');

