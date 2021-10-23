-- ==================
-- Fel Armament 29740
-- Improve Fel Armament Dropchance for Wrathstalker 21249
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `item` = 29740 AND `entry` = 21249; -- 33%
UPDATE `creature_loot_template` SET `maxcount` = 1 WHERE `item` = 29740; -- Fel Armament doesnt multidrop, maybe later expansion data, Arcane Tome does neither

-- Arcane Tome 29739
-- ==================

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -100 WHERE `item` = 30453 AND `entry` = 20427; -- Second Fragment of the Cipher of Damnation

-- Add missing pickpocketing loot template for Debilitated Mag'har Grunt and Update other Mag'har Templates
UPDATE `creature_template` SET `pickpocketlootid` = 16847 WHERE `entry` = 16847;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` IN (16846,16847,16911,16912);
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(16846, 29570, 10, 0, 1, 1, 0, 'A Gnome Effigy'),
(16846, 29569, 8, 0, 1, 1, 0, 'Strong Junkbox'),
(16846, 27855, 5, 1, 1, 1, 0, 'Mag\'har Grainbread'),
(16846, 27854, 3, 1, 1, 1, 0, 'Smoked Talbuk Venison'),
(16846, 22829, 3, 0, 1, 1, 0, 'Super Healing Potion'),

(16847, 5428, 7, 0, 1, 1, 0, 'An Exotic Cookbook'),
(16847, 16885, 5, 0, 1, 1, 0, 'Heavy Junkbox'),
(16847, 8952, 1.7, 1, 1, 1, 0, 'Roasted Quail'),
(16847, 8950, 1.4, 1, 1, 1, 0, 'Homemade Cherry Pie'),
(16847, 3928, 1.3, 0, 1, 1, 0, 'Superior Healing Potion'),

(16911, 29570, 1.5, 0, 1, 1, 0, 'A Gnome Effigy'),
(16911, 29569, 1.3, 0, 1, 1, 0, 'Strong Junkbox'),
(16911, 27855, 0.4, 1, 1, 1, 0, 'Mag\'har Grainbread'),
(16911, 27854, 0.3, 1, 1, 1, 0, 'Smoked Talbuk Venison'),
(16911, 22829, 0.3, 0, 1, 1, 0, 'Super Healing Potion'),

(16912, 29570, 1.5, 0, 1, 1, 0, 'A Gnome Effigy'),
(16912, 29569, 3, 0, 1, 1, 0, 'Strong Junkbox'),
(16912, 27855, 2, 1, 1, 1, 0, 'Mag\'har Grainbread'),
(16912, 27854, 3, 1, 1, 1, 0, 'Smoked Talbuk Venison'),
(16912, 22829, 0.8, 0, 1, 1, 0, 'Super Healing Potion');

-- Remove Corrupted Loot Table for Fel Spirit 22454
UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` = 22454;
DELETE FROM `creature_loot_template` WHERE `entry` = 22454;

-- https://www.wowhead.com/item=22572/mote-of-air
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `item` = 22572 AND `entry` = 17159; -- Storm Rager
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 22 WHERE `item` = 22572 AND `entry` = 17160; -- Living Cyclone
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `item` = 22572 AND `entry` = 17158; -- Dust Howler
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 27 WHERE `item` = 22572 AND `entry` = 21060; -- Enraged Air Spirit
-- UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 33 WHERE `item` = 22572 AND `entry` = XXX; -- Storming Wind-Ripper (34.0121)

-- Correct Dropchance for Magic Dust 2091
-- https://classic.wowhead.com/item=2091/magic-dust
-- https://web.archive.org/web/20080610163527/http://wow.allakhazam.com/db/item.html?witem=2091
-- https://web.archive.org/web/20111107010641/http://www.wowhead.com/item=2091 (maybe relevant for if wotlk wants to keep higher chance 25 out of 87
DELETE FROM `creature_loot_template` WHERE `item` = 2091;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `mincountOrRef`, `maxcount`, `comments`) VALUES
(832, 2091, 20, 1, 1, 'Magic Dust'), -- Dust Devil (47.392)
(1936, 2091, 10, 1, 1, 'Magic Dust'), -- Farmer Solliden
(99, 2091, 5, 1, 1, 'Magic Dust'), -- Morgaine the Sly
(5809, 2091, 5, 1, 1, 'Magic Dust'); -- Watch Commander Zalaphil

-- Correct Loot Condition for Plans: Wicked Mithril Blade [Soulbound] - Not all entrys have the condition set
UPDATE `creature_loot_template` SET `condition_id` = 198 WHERE `item` = 8029 AND `comments` = 'Plans: Wicked Mithril Blade';

-- Improve Dropchance for Recipe: Ironshield Potion 22927
-- https://www.wowhead.com/item=22927/recipe-ironshield-potion#english-comments
-- https://web.archive.org/web/20080922013140/http://wow.allakhazam.com/db/item.html?witem=22927
-- https://web.archive.org/web/20120202060024/http://www.wowhead.com:80/item=22927#comments:id=145167
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` = 17862 AND `item` = 22927;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `entry` = 20521 AND `item` = 22927;

-- Correct Chance for Hyjal Summit (Boss Loot) - Epic Gem Pattern
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 30 WHERE `entry` = 17968 AND `Item` = 36106;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 15 WHERE `entry` IN (17767,17808,17842,17888) AND `Item` = 36106;

-- Most if not all demons dont drop motes of shadows anymore after 2.1
-- https://www.wowhead.com/item=22577/mote-of-shadow#dropped-by
DELETE FROM `creature_loot_template` WHERE `item` = 22577 AND `entry` IN (
19852, -- https://www.wowhead.com/npc=19852/artifact-seeker#comments:id=90133
19853, -- https://www.wowhead.com/npc=19853/felblade-doomguard#drops
21021 -- https://www.wowhead.com/npc=21021/scorch-imp#comments:id=96234
);

-- Correct Dropchance of Mote of Shadow for Void Creatures
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 30 WHERE `item` = 22577 AND `entry` IN (
18869, -- Unstable Voidwraith (1.0615)
18870 -- Voidshrieker (1.0194)
);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `comments`) VALUES
(20870, 22577, 15, 0, 2, 4, 'Mote of Shadow'), -- Zereketh the Unbound
(21626, 22577, 15, 0, 2, 4, 'Mote of Shadow'), -- https://web.archive.org/web/20080621111416/http://wow.allakhazam.com/db/mob.html?wmob=20870

(18341, 22577, 15, 0, 2, 4, 'Mote of Shadow'), -- Pandemonius
(20267, 22577, 15, 0, 2, 4, 'Mote of Shadow'); -- https://web.archive.org/web/20090313104818/http://wow.allakhazam.com/db/mob.html?wmob=18341

UPDATE `creature_loot_template` SET `condition_id` = 497 WHERE `item` = 35516; -- Player Has Less Than 1 of Item ID 35516 in Inventory/Bank

-- Npcs Level 65-66 have both grey refloots -> Reduce Chance for double loot (it seems we should merge both)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `item` IN (61000,61001) AND `entry` IN (
17131,17132,17136,17137,17138,17147,17148,17149,17154,17155,17159,17981,18062,
18064,18202,18220,18500,18501,19943,19944,19945,19948,19952,19957,19991,19992,
19995,19998,20334,20713,20728,20747,20748,21022,21033,21195,21238,21254,21284,
21373,21640,21839,22038,22045,22052);

-- Add missing Badge of Justice Drop for Essence of Anger 23420 (RoS Loot Holder)
DELETE FROM `creature_loot_template` WHERE `item` = 29434 AND `entry` = 23420;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(23420, 29434, 100, 0, 2, 2, 0, 'Badge of Justice');

-- Remove Herbs from "most" creature_loot_template, only Herbalism Loot
DELETE FROM `creature_loot_template` WHERE `item` IN (
22785, -- https://tbc.wowhead.com/item=22785/felweed
22786, -- https://tbc.wowhead.com/item=22786/dreaming-glory - all mobs have Herbalism Loot
22787, -- https://tbc.wowhead.com/item=22787/ragveil
22788, -- https://tbc.wowhead.com/item=22788/flame-cap
22789, -- https://tbc.wowhead.com/item=22789/terocone - https://www.wowhead.com/npc=21040/outraged-ravens-wood-sapling#comments:id=109884:reply=10757
22790, -- https://tbc.wowhead.com/item=22790/ancient-lichen
22791, -- https://tbc.wowhead.com/item=22791/netherbloom
22792, -- https://tbc.wowhead.com/item=22792/nightmare-vine
22793, -- https://tbc.wowhead.com/item=22793/mana-thistle - mobs near nodes or have Herbalism Loot
22794 -- https://tbc.wowhead.com/item=22794/fel-lotus - all mobs have Herbalism Loot
);

-- Table 'creature_loot_template' entry 18201 (creature entry) not exist but used as loot id in DB.
UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` = 18201; -- Tamed Sporebat had Ragveil only (which was corrupted data)

-- Part of Herbalism Loot Template (skinning_loot_template = 80002)
-- Underbog Colossus 21251
-- Talonsworn Forest-Rager 23029
DELETE FROM `creature_loot_template` WHERE `entry` IN (21251,23029) AND `item` IN (
22575, -- Mote of Life
22785, -- Felweed
22786, -- Dreaming Glory
22787, -- Ragveil
22789, -- Terocone
22790, -- Ancient Lichen
22793, -- Mana Thistle
22794, -- Fel Lotus
29453, -- Sporeggar Mushroom (nope)
31501 -- Tome of Conjure Food VIII (Part of 50500)
);

