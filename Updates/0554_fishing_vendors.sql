-- Add missing Strong Fishing Pole to General Fishing Vendor Template
-- Based on https://github.com/vmangos/core/commit/78faaabe157a983249a688fbadfce62af515f4b3

-- have 117
-- 117	6256	Fishing Pole
-- 117	6529	Shiny Bauble
-- 117	6530	Nightcrawlers
-- 117	6532	Bright Baubles
DELETE FROM `npc_vendor` WHERE `item` IN (6256,6529,6530,6532,
6533, -- aquadynamic-fish-attractor
6365 -- strong-fishing-pole
) AND `entry` IN ( -- included in their vendor_templates
-- existing 117
2626, -- Old Man Heming https://www.wowhead.com/classic/npc=2626/old-man-heming (also sells 16083)
3029, -- Sewa Mistrunner https://www.wowhead.com/classic/npc=3029/sewa-mistrunner (also sells two patterns)
3333, -- Shankys https://www.wowhead.com/classic/npc=3333/shankys (also sells three patterns)
3550, -- Martine Tramblay https://www.wowhead.com/classic/npc=3550/martine-tramblay (also sells two patterns)
3572, -- Zizzek https://www.wowhead.com/classic/npc=3572/zizzek
4222, -- Voloren https://www.wowhead.com/classic/npc=4222/voloren
5494, -- Catherine Leland https://www.wowhead.com/classic/npc=5494/catherine-leland (also sells three patterns)
5940, -- Harn Longcast https://www.wowhead.com/classic/npc=5940/harn-longcast (also sells two patterns)
5942, -- Zansoa https://www.wowhead.com/classic/npc=5942/zansoa (also sells two patterns)
7945, -- Savanne https://www.wowhead.com/classic/npc=7945/savanne
8508, -- Gretta Ganter https://www.wowhead.com/classic/npc=8508/gretta-ganter
10118, -- Nessa Shadowsong https://www.wowhead.com/classic/npc=10118/nessa-shadowsong (also sells two patterns)
12031, -- Mai'Lahii https://www.wowhead.com/classic/npc=12031/mailahii
12962, -- Wik'Tar https://www.wowhead.com/classic/npc=12962/wiktar (6fish 2 patterns)
14740, -- Katoom the Angler https://www.wowhead.com/classic/npc=14740/katoom-the-angler
16708, -- Dekin https://www.wowhead.com/tbc/npc=16708/dekin
17101, -- Diktynna https://www.wowhead.com/tbc/npc=17101/diktynna#sells
18018, -- Zurjaya https://www.wowhead.com/tbc/npc=18018/zurjaya#sells
18347, -- Olirea https://www.wowhead.com/tbc/npc=18347/olirea
18911, -- Juno Dufrain https://www.wowhead.com/tbc/npc=18911/juno-dufrain (2 additional items)
19472, -- Threlc https://www.wowhead.com/tbc/npc=19472/threlc (3 fish)
-- 118 / 444
5162, -- https://www.wowhead.com/classic/npc=5162/tansy-puddlefizz (4 patterns)
4574, -- https://www.wowhead.com/classic/npc=4574/lizbeth-cromwell (4 patterns)
3497, -- https://www.wowhead.com/classic/npc=3497/kilxx (fish 2 patterns)
2383, -- https://www.wowhead.com/classic/npc=2383/lindea-rabonne (3 patterns)
1684, -- https://www.wowhead.com/classic/npc=1684/khara-deepwater (fish 3 patterns)
3178, -- https://www.wowhead.com/classic/npc=3178/stuart-fleming (fish 3 patterns)
1678 -- https://www.wowhead.com/classic/npc=1678/vernon-hale (fish)
);

-- remove wrong vendor item from 3572
DELETE FROM `npc_vendor` WHERE `entry` = 3572 AND `item` = 6565; -- Shimmering Gloves (typo 6365!?)

UPDATE `creature_template` SET `VendorTemplateId` = 444 WHERE `entry` = 3178; -- use the template that has fish in it
DELETE FROM `npc_vendor` WHERE `entry` = 3178 AND `item` IN (
787, -- Slitherskin Mackerel
4592, -- Longjaw Mud Snapper
4593, -- Bristle Whisker Catfish
4594, -- Rockscale Cod
6887, -- Spotted Yellowtail
8957, -- Spinefin Halibut
21552, -- Striped Yellowtail

6369, -- Recipe: Rockscale Cod
17062 -- Recipe: Mithril Head Trout
);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `comments`) VALUES
(3178, 6369, 0, 0, 'Recipe: Rockscale Cod'),
(3178, 17062, 0, 0, 'Recipe: Mithril Head Trout');

-- these have either 118 or 444 where Strong Fishing Pole is in unlimited supply, which is wrong
UPDATE `npc_vendor_template` SET `maxcount` = 0, `incrtime` = 0 WHERE `entry` = 444 AND `item` = 21552; -- 444	21552	5	43200	0	0	0	Striped Yellowtail
UPDATE `npc_vendor_template` SET `maxcount` = 1, `incrtime` = 7200 WHERE `entry` IN (117,118,444) AND `item` = 6365; -- Strong Fishing Pole

-- Reduce Restocktime for aquadynamic-fish-attractor
UPDATE `npc_vendor_template` SET `incrtime` = 3600 WHERE `entry` IN (117,118,444) AND `item` = 6533; -- 12h makes no sense

DELETE FROM `npc_vendor_template` WHERE `entry` = 117 AND `item` IN (6365,6533); -- missing from general fishing vendors
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `comments`) VALUES
(117, 6365, 1, 7200, 'Strong Fishing Pole'),
(117, 6533, 2, 3600, 'Aquadynamic Fish Attractor');

-- ["Lapu Stormhorn"] = {
UPDATE `npc_vendor_template` SET `slot` = 101 WHERE `entry` IN (117,118,444) AND `item` = 6256; -- Fishing Pole [3] 1 and 2 were special npc items, hence starting at 100+
UPDATE `npc_vendor_template` SET `slot` = 102 WHERE `entry` IN (117,118,444) AND `item` = 6365; -- Aquadynamic Fish Attractor [4]
UPDATE `npc_vendor_template` SET `slot` = 103 WHERE `entry` IN (117,118,444) AND `item` = 6529; -- Shiny Bauble [5]
UPDATE `npc_vendor_template` SET `slot` = 104 WHERE `entry` IN (117,118,444) AND `item` = 6530; -- Nightcrawlers [6]
UPDATE `npc_vendor_template` SET `slot` = 105 WHERE `entry` IN (117,118,444) AND `item` = 6532; -- Bright Baubles [7]
UPDATE `npc_vendor_template` SET `slot` = 106 WHERE `entry` IN (117,118,444) AND `item` = 6533; -- Aquadynamic Fish Attractor [8]