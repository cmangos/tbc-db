-- Simplify and Improve prospecting_loot_template
-- https://web.archive.org/web/20120517101026/http://www.wowhead.com/item=23424#prospecting
-- https://web.archive.org/web/20111004134327/http://www.wowhead.com/item=23425#prospecting
-- todo: remove 12004,12005 at some point as especially 12004 is confusing due to groupid settings but used all over creature_loot /pickpocketing loot - range is used by classic-db
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 0, `groupid` = 1, `maxcount`  = 1 WHERE `entry` = 13001; -- even chanced and 1 max as we do not want 100% for 50% 2x the same gem
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (13001, 'TBC Uncommon Quality GEM'),(13002, '1 TBC Rare Quality GEM'); -- "12004 Uncommon & Rare Gem - TBC"
DELETE FROM `reference_loot_template` WHERE `entry` = 13000; -- Duplicate Loottemplate that adds additional Moss Agate, Shadowgem, Shadowgem for [Tin Ore]
DELETE FROM `reference_loot_template` WHERE `entry` = 13002; -- Create TBC Rare Quality GEM instead of another TBC Uncommon Quality GEM
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(13002, 23441, 0, 1, 1, 1, 0, 'Nightseye'),
(13002, 23440, 0, 1, 1, 1, 0, 'Dawnstone'),
(13002, 23439, 0, 1, 1, 1, 0, 'Noble Topaz'),
(13002, 23438, 0, 1, 1, 1, 0, 'Star of Elune'),
(13002, 23437, 0, 1, 1, 1, 0, 'Talasite'),
(13002, 23436, 0, 1, 1, 1, 0, 'Living Ruby');

-- https://wowwiki.fandom.com/wiki/Prospecting?oldid=1271229
DELETE FROM `prospecting_loot_template` WHERE `entry` IN (2770,2771,2772,3858,10620,23424,23425);
INSERT INTO `prospecting_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- [Copper Ore] - same as befor
-- https://www.wowhead.com/item=2770/copper-ore#prospecting
(2770, 24186, 100, 0, 1, 1, 0, 'Copper Powder'),
(2770, 774, 0, 1, 1, 1, 0, 'Malachite'),
(2770, 818, 0, 1, 1, 1, 0, 'Tigerseye'),
(2770, 1210, 10, 2, 1, 1, 0, 'Shadowgem'),
-- [Tin Ore] - befor also had -13000 with 100% which was an additonal Moss Agate, Shadowgem, Lesser Moonstone for ~12%
-- https://www.wowhead.com/item=2771/tin-ore#prospecting
(2771, 24188, 100, 0, 1, 1, 0, 'Tin Powder'),
(2771, 1206, 0, 1, 1, 2, 0, 'Moss Agate'),
(2771, 1210, 0, 1, 1, 2, 0, 'Shadowgem'),
(2771, 1705, 0, 1, 1, 2, 0, 'Lesser Moonstone'),
(2771, 1529, 3.33, 2, 1, 1, 0, 'Jade'),
(2771, 3864, 3.33, 2, 1, 1, 0, 'Citrine'),
(2771, 7909, 3.33, 2, 1, 1, 0, 'Aquamarine'),
-- [Iron Ore] - same as befor
-- https://www.wowhead.com/item=2772/iron-ore#prospecting
(2772, 24190, 100, 0, 1, 1, 0, 'Iron Powder'),
(2772, 1529, 0, 1, 1, 2, 0, 'Jade'),
(2772, 1705, 0, 1, 1, 2, 0, 'Lesser Moonstone'),
(2772, 3864, 0, 1, 1, 2, 0, 'Citrine'),
(2772, 7909, 5, 2, 1, 1, 0, 'Aquamarine'),
(2772, 7910, 5, 2, 1, 1, 0, 'Star Ruby'),
-- [Mithril Ore] - same as befor
-- https://www.wowhead.com/item=3858/mithril-ore#prospecting
(3858, 24234, 100, 0, 1, 1, 0, 'Mithril Powder'),
(3858, 3864, 0, 1, 1, 2, 0, 'Citrine'),
(3858, 7909, 0, 1, 1, 2, 0, 'Aquamarine'),
(3858, 7910, 0, 1, 1, 2, 0, 'Star Ruby'),
(3858, 12361, 2.5, 2, 1, 1, 0, 'Blue Sapphire'),
(3858, 12364, 2.5, 2, 1, 1, 0, 'Huge Emerald'),
(3858, 12799, 2.5, 2, 1, 1, 0, 'Large Opal'),
(3858, 12800, 2.5, 2, 1, 1, 0, 'Azerothian Diamond'),
-- [Thorium Ore] - same as befor
-- https://www.wowhead.com/item=10620/thorium-ore#prospecting
(10620, 24235, 100, 0, 1, 1, 0, 'Thorium Powder'),
(10620, 7910, 12, 1, 1, 2, 0, 'Star Ruby'),
(10620, 12361, 0, 1, 1, 2, 0, 'Blue Sapphire'),
(10620, 12364, 0, 1, 1, 2, 0, 'Huge Emerald'),
(10620, 12799, 0, 1, 1, 2, 0, 'Large Opal'),
(10620, 12800, 0, 1, 1, 2, 0, 'Azerothian Diamond'),
-- [Fel Iron Ore]
-- https://www.wowhead.com/item=23424/fel-iron-ore#prospecting
(23424, 24242, 100, 0, 1, 1, 0, 'Fel Iron Powder'),
(23424, 13001, 100, 1, -13001, 1, 0, 'TBC Uncommon Quality GEM'),
(23424, 1, 5, 1, -13001, 1, 0, 'TBC Uncommon Quality GEM'), -- 17*6 = 102 ~5% for additional Uncommon gem, instead of 50% 1-2 gems
(23424, 13002, 7.2, 1, -13002, 1, 0, 'TBC Rare Quality GEM'), -- 6% befor
-- [Adamantite Ore]
-- https://www.wowhead.com/item=23425/adamantite-ore#prospecting
(23425, 24243, 100, 0, 1, 1, 0, 'Adamantite Powder'),
(23425, 13001, 100, 1, -13001, 1, 0, 'TBC Uncommon Quality GEM'),
(23425, 1, 15, 1, -13001, 1, 0, 'TBC Uncommon Quality GEM'), -- 19*6 = 114 ~15% for additional Uncommon gem, instead of 50% 1-2 gems (befor we had an additonal 20% for one extra ontop of 1-2
(23425, 13002, 24, 1, -13002, 1, 0, 'TBC Rare Quality GEM'); -- 22% befor

-- Correct & Improve Outland Ore Deposit / Vein Loottables
-- we might miss a very small chance for double blue gem on hit, but ignoreable for now
-- https://web.archive.org/web/20070327200152/http://wow.allakhazam.com/db/item.html?witem=22573
-- https://web.archive.org/web/20070305160640/http://wow.allakhazam.com/db/item.html?witem=22574
-- https://web.archive.org/web/20080603044104/http://wow.allakhazam.com/db/object.html?wobject=2991
-- https://web.archive.org/web/20080511144504/http://wow.allakhazam.com/db/object.html?wobject=2992
-- https://web.archive.org/web/20080522030133/http://wow.allakhazam.com:80/db/object.html?wobject=2993
-- https://web.archive.org/web/20080421122533/http://wow.allakhazam.com:80/db/object.html?wobject=2994
-- https://web.archive.org/web/20071102140940/http://wow.allakhazam.com/db/object.html?wobject=5663
-- https://www.wowhead.com/object=181555/fel-iron-deposit
-- https://web.archive.org/web/20110613151921/http://www.wowhead.com/object=181555
-- https://www.wowhead.com/object=181556/adamantite-deposit
-- https://web.archive.org/web/20110614053904/http://www.wowhead.com/object=181556
-- https://www.wowhead.com/object=181569/rich-adamantite-deposit
-- https://web.archive.org/web/20110614073213/http://www.wowhead.com/object=181569
-- https://www.wowhead.com/object=181570/rich-adamantite-deposit
-- https://www.wowhead.com/object=181557/khorium-vein
-- https://web.archive.org/web/20110816115639/http://www.wowhead.com/object=181557
-- https://www.wowhead.com/object=185877/nethercite-deposit
-- https://wowwiki.fandom.com/wiki/Fel_Iron_Ore?oldid=1614781
-- https://wowwiki.fandom.com/wiki/Adamantite_Ore?oldid=1585635
-- https://wowwiki.fandom.com/wiki/Khorium_Ore?oldid=1611829
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (18359,18361,18363,22070);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- Fel Iron Deposit 181555
(18359, 22573, 10, 0, 1, 2, 0, 'Mote of Earth'),
(18359, 22574, 10, 0, 1, 2, 0, 'Mote of Fire'),
(18359, 23424, 100, 0, 1, 1, 0, 'Fel Iron Ore'),
(18359, 23427, 2, 0, 1, 1, 0, 'Eternium Ore'),
(18359, 35229, -25, 0, 1, 1, 0, 'Nether Residue'),
(18359, 12004, 0.5, 1, -12004, 1, 0, 'Rare Gem - TBC'), -- 4%, far too high for just mining
(18359, 1, 2, 2, -12004, 1, 0, 'Uncommon Gem - TBC'), -- 4% for 2 befor, so excessive amount of green quality gems
(18359, 2, 2, 2, -12004, 1, 0, 'Uncommon Gem - TBC'),
-- Adamantite Deposit 181556,181569,181570
(18361, 22573, 20, 0, 2, 4, 0, 'Mote of Earth'), -- 19.9
(18361, 23425, 100, 0, 1, 1, 0, 'Adamantite Ore'),
(18361, 23427, 10, 0, 1, 1, 0, 'Eternium Ore'), -- 9.9
(18361, 35229, -25, 0, 1, 1, 0, 'Nether Residue'),
(18361, 12004, 1, 1, -12004, 1, 0, 'Rare Gem - TBC'), -- 1%, lower then fel iron?!
(18361, 1, 2, 2, -12004, 1, 0, 'Uncommon Gem - TBC'), -- 4% for 2 befor, so excessive amount of green quality gems
(18361, 2, 2, 2, -12004, 1, 0, 'Uncommon Gem - TBC'),
-- Khorium Vein 181557
(18363, 22573, 20, 0, 1, 3, 0, 'Mote of Earth'), -- not sure about these min max keeping default for now
(18363, 22574, 1, 0, 2, 4, 0, 'Mote of Fire'), -- 1.2%, not sure about these min max keeping default for now
(18363, 23426, 100, 0, 1, 1, 0, 'Khorium Ore'),
(18363, 23427, 10, 0, 1, 1, 0, 'Eternium Ore'),
(18363, 35229, -25, 0, 1, 1, 0, 'Nether Residue'),
(18363, 12004, 5, 1, -12004, 1, 0, 'Rare Gem - TBC'), -- 0.2% each blue
(18363, 1, 2, 2, -12004, 1, 0, 'Uncommon Gem - TBC'), -- 0.6% each green, wild insert of all green and blue gems befor, making loot unpredictable
(18363, 2, 2, 2, -12004, 1, 0, 'Uncommon Gem - TBC'),
-- Nethercite Deposit 185877
(22070, 22573, 10, 0, 1, 2, 0, 'Mote of Earth'),
(22070, 22574, 10, 0, 1, 2, 0, 'Mote of Fire'), -- 9.8
(22070, 32464, 100, 0, 1, 1, 0, 'Nethercite Ore'),
(22070, 23427, 2, 0, 1, 1, 0, 'Eternium Ore'),
(22070, 32506, 1, 0, 1, 1, 0, 'Netherwing Egg'),
(22070, 12004, 0.5, 1, -12004, 1, 0, 'Rare Gem - TBC'), -- missing
(22070, 1, 2, 2, -12004, 1, 0, 'Uncommon Gem - TBC'), -- 4% for 2 befor, so excessive amount of green quality gems
(22070, 2, 2, 2, -12004, 1, 0, 'Uncommon Gem - TBC');

-- Revamp Ancient Gem Vein Loot Template - 2 to 4 hits per node
-- https://www.wowhead.com/object=185557/ancient-gem-vein#comments:id=261733
-- By Holkin (2,578 – 1·6·17) on 2008/03/28 (Patch 2.4.0)
-- "Mining nodes in MH don't appear to drop green gems anymore, have a higher rate on epic gems and now drop a grey fragment that sells for 30g/stack (20 stack)."
-- https://web.archive.org/web/20100312200911/http://wow.allakhazam.com/db/object.html?wobject=6444 - epic gems at 33% after 2y
-- "They are always in the summit, there are approximately 6 of them, and you usually get 1-2 epic gems off of each node."
-- https://web.archive.org/web/20080515143708/http://wow.allakhazam.com/db/object.html?wobject=6444 - starts dropping Shattered Gem Fragments
-- https://web.archive.org/web/20080314110523/http://wow.allakhazam.com:80/db/object.html?wobject=6444
-- Table 'reference_loot_template' entry 12008 isn't reference id and not referenced from loot, and then useless.
DELETE FROM `reference_loot_template` WHERE `entry` = 12008; -- duplicate 12005
DELETE FROM `gameobject_loot_template` WHERE `entry` = 22046;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- (22046, 1, 50, 2, -12004, 1, 0, 'Uncommon Gem - TBC'), -- Green Gems Removed in 2.4
(22046, 12004, 20, 1, -12004, 1, 0, 'Rare Gem - TBC'),
(22046, 12005, 40, 1, -12005, 1, 0, 'Epic Gem - TBC'),
(22046, 34907, 100, 1, 1, 3, 0, 'Shattered Gem Fragments');

-- Bonus
-- Correct Loot Table for Ancient Lichen 181278
-- Patch 2.4.0 (25-Mar-2008): Ancient Lichen now has a chance to drop a Fel Lotus where it used to drop a piece of random green jewelry.
-- https://web.archive.org/web/20111112145322/http://www.wowhead.com/item=22794#gathered-from-object
DELETE FROM `gameobject_loot_template` WHERE `entry` = 18116 AND `item` IN (
11979, -- Peridot Circle
11980, -- Opal Ring
11992, -- Vermilion Band
12005, -- Granite Ring
12016, -- Jungle Ring
12017, -- Prismatic Band
12036, -- Granite Necklace
12048, -- Prismatic Pendant
12058, -- Demonic Bone Ring
12027, -- Vermilion Necklace

22794 -- Add missing Fel Lotus
);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES (18116, 22794, 5, 0, 1, 1, 0, 'Fel Lotus');

