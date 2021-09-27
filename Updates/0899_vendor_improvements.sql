-- Improve restock time for vendor sold items and fix broken PvP/Arena Vendors and Prices

-- https://de.classic.wowhead.com/item=16243/formel-runenverzierte-arkanitrute#comments:id=3191620
UPDATE `npc_vendor` SET `incrtime` = 900 WHERE `entry` = 12022 AND `item` = 16243; -- Formula: Runed Arcanite Rod

-- 43200 (12h) npc_vendor restock items to 3h
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 10800 WHERE `item` IN (
21900, -- https://www.wowhead.com/item=21900/pattern-imbued-netherweave-robe#comments
21901, -- https://www.wowhead.com/item=21901/pattern-imbued-netherweave-tunic#comments
23574, -- https://www.wowhead.com/item=23574/recipe-transmute-primal-might (16705 had it without restock time)
25720 -- Pattern: Heavy Knothide Leather
);

-- 43200 (12h) npc_vendor restock items to 30min
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 1800 WHERE `item` IN (
22562, -- Formula: Superior Mana Oil
22563, -- Formula: Superior Wizard Oil
22565, -- Formula: Large Prismatic Shard
22907, -- https://www.wowhead.com/item=22907/recipe-super-mana-potion#comments:id=1112399
22909, -- Recipe: Elixir of Major Defense
25848, -- https://www.wowhead.com/item=25848/formula-runed-adamantite-rod#comments:id=31535
25849, -- Formula: Runed Eternium Rod
28282 -- Formula: Enchant Shield - Major Stamina
);

-- Correct Arena Point Cost for Arena Season 1 Items in Season 2
-- https://www.wowhead.com/item=28302/gladiators-bonecracker
-- https://www.wowhead.com/item=28307/gladiators-quickblade#comments:id=106169
-- https://www.wowhead.com/item=28309/gladiators-hacker#comments:id=102979
-- https://www.wowhead.com/item=28310/gladiators-shiv#comments:id=102307
-- https://www.wowhead.com/item=28314/gladiators-fleshslicer#comments:id=102307
-- Unclear if 1k points or 978, but surely wrong atm
-- https://www.wowhead.com/item=28346/gladiators-endgame#comments:id=35078:reply=295002 < something about 1k Arena Points unclear
-- https://www.wowhead.com/item=32452/gladiators-reprieve#comments:id=47155:reply=301697
UPDATE `npc_vendor_template` SET `ExtendedCost` = 21 WHERE `entry` = 551 AND `condition_id` = 505 AND `item` IN (28302,28307,28309,28310,28314,28346,32452);

-- Correct Arena Point Cost for Gladiator's War Edge in Season 2
-- https://www.wowhead.com/item=28319/gladiators-war-edge#comments:id=49767
-- https://www.wowhead.com/item=28320/gladiators-touch-of-defeat#comments:id=39257:reply=4447
-- https://www.wowhead.com/item=28355/gladiators-idol-of-tenacity
-- https://www.wowhead.com/item=28356/gladiators-libram-of-justice#comments:id=47155:reply=301697 or 870
-- https://www.wowhead.com/item=28357/gladiators-totem-of-the-third-wind#comments:id=47155:reply=301697
UPDATE `npc_vendor_template` SET `ExtendedCost` = 146 WHERE `entry` = 551 AND `condition_id` = 505 AND `item` IN (28319,28320,28355,28356,28357);

-- Offhand Weapons cost 1125 AP in S2 - not 2625 like MH
UPDATE `npc_vendor_template` SET `ExtendedCost` = 2286 WHERE `entry` = 560 AND `item` IN (31958,32003,31985,32027,32046);

DELETE FROM `npc_vendor` WHERE `entry` = 25176; -- Grikkin Copperspring (S3 Vendor selling S4)
DELETE FROM `npc_vendor` WHERE `entry` = 25179; -- Frixee Brasstumbler (S3 Vendor selling S4)

-- Correct Caster Weapon Prices, were aligned with Melee Weapons
-- (3150 points instead of 1875) in S1
-- https://www.wowhead.com/item=32450/gladiators-gavel#comments:id=70740
-- https://www.wowhead.com/item=32451/gladiators-salvation
-- https://www.wowhead.com/item=28297/gladiators-spellblade#comments:id=41350
UPDATE `npc_vendor_template` SET `ExtendedCost` = 2284 WHERE `item` IN (32450,32451,28297) AND `condition_id` = 504;

-- (2739 points instead of 1630) in S2
-- https://www.wowhead.com/item=32450/gladiators-gavel#comments:id=70740
-- https://www.wowhead.com/item=32451/gladiators-salvation
-- https://www.wowhead.com/item=28297/gladiators-spellblade#comments:id=41350
UPDATE `npc_vendor_template` SET `ExtendedCost` = 148 WHERE `item` IN (32450,32451,28297) AND `condition_id` = 505;

-- (25200 honor points instead of 18000) in S3
-- https://wowwiki.fandom.com/wiki/Gladiator%27s_Gavel
-- https://wowwiki.fandom.com/wiki/Gladiator%27s_Salvation
-- https://wowwiki.fandom.com/wiki/Gladiator%27s_Spellblade
UPDATE `npc_vendor_template` SET `ExtendedCost` = 2238 WHERE `item` IN (32450,32451,28297) AND `condition_id` = 506;

-- (3150 points instead of 2625) in S2
-- https://www.wowhead.com/item=32964/merciless-gladiators-salvation#comments:id=107469:reply=302606
-- https://www.wowhead.com/item=32053/merciless-gladiators-spellblade#comments:id=107954
UPDATE `npc_vendor_template` SET `ExtendedCost` = 2284 WHERE `item` IN (32053,32963,32964) AND `condition_id` = 505;

-- (3150 points instead of 2625) and 1850 rating in S3
-- https://www.wowhead.com/item=33687/vengeful-gladiators-gavel
-- https://www.wowhead.com/item=33743/vengeful-gladiators-salvation#comments:id=265108
-- https://www.wowhead.com/item=33763/vengeful-gladiators-spellblade
UPDATE `npc_vendor_template` SET `ExtendedCost` = 1757 WHERE `item` IN (33687,33743,33763) AND `condition_id` = 506;

-- S3 Shoulders for reduced cost should be placed in Reduced Cost Template 571 and still require rating not flat for 1500 AP
-- All S3 & S4 Items should be handled with npc_vendor_template (S1 and S2 still needs to be looked into)
-- Some S1 & S2 Items were added later in the game it seems
DELETE FROM `npc_vendor` WHERE `entry` IN (18898,19857,24392,25178) AND `item` IN (33668,33674,33679,33682,33693,33699,33703,33710,33715,33720,33726,33732,33753,33757,33770);

-- Add Reduced Cost 1200 Arena Points & 1950 Rating Shoulders to Reduced Cost Template 571 which is active during S4 (condition 507)
DELETE FROM `npc_vendor_template` WHERE `entry` = 571 AND `item` IN (33668,33674,33679,33682,33693,33699,33703,33710,33715,33720,33726,33732,33753,33757,33770);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(571, 33668, 0, 0, 2392, 507, 'Vengeful Gladiator\'s Chain Spaulders'),
(571, 33674, 0, 0, 2392, 507, 'Vengeful Gladiator\'s Dragonhide Spaulders'),
(571, 33682, 0, 0, 2392, 507, 'Vengeful Gladiator\'s Felweave Amice'),
(571, 33693, 0, 0, 2392, 507, 'Vengeful Gladiator\'s Kodohide Spaulders'),
(571, 33699, 0, 0, 2392, 507, 'Vengeful Gladiator\'s Lamellar Shoulders'),
(571, 33703, 0, 0, 2392, 507, 'Vengeful Gladiator\'s Leather Spaulders'),
(571, 33710, 0, 0, 2392, 507, 'Vengeful Gladiator\'s Linked Spaulders'),
(571, 33715, 0, 0, 2392, 507, 'Vengeful Gladiator\'s Mail Spaulders'),
(571, 33720, 0, 0, 2392, 507, 'Vengeful Gladiator\'s Mooncloth Mantle'),
(571, 33726, 0, 0, 2392, 507, 'Vengeful Gladiator\'s Ornamented Spaulders'),
(571, 33732, 0, 0, 2392, 507, 'Vengeful Gladiator\'s Plate Shoulders'),
(571, 33753, 0, 0, 2392, 507, 'Vengeful Gladiator\'s Scaled Shoulders'),
(571, 33757, 0, 0, 2392, 507, 'Vengeful Gladiator\'s Silk Amice'),
(571, 33770, 0, 0, 2392, 507, 'Vengeful Gladiator\'s Wyrmhide Spaulders'),
(571, 33679, 0, 0, 2392, 507, 'Vengeful Gladiator\'s Dreadweave Mantle');

-- Offhand Weapons cost 1125 AP + 1850 Rating in S3 - not 2625 like MH
UPDATE `npc_vendor_template` SET `ExtendedCost` = 1432 WHERE `entry` = 570 AND `item` IN (33662,34015,34016,33689,33705,33801,33734,33756);

-- https://www.wowhead.com/item=34014/vengeful-gladiators-waraxe#comments:id=205427 (1000 Arena Points S3 -> 800 S4)
UPDATE `npc_vendor_template` SET `ExtendedCost` = 1758 WHERE `entry` = 570 AND `item` = 34014;

-- Add missing https://www.wowhead.com/item=34033/vengeful-gladiators-grimoire#comments:id=200901 to actual Season 3 unreduced cost vendor table (570)
DELETE FROM `npc_vendor_template` WHERE `entry` = 570 AND `item` IN (34033);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(570, 34033, 0, 0, 1432, 506, 'Vengeful Gladiator\'s Grimoire');

-- Add missing https://www.wowhead.com/item=34033/vengeful-gladiators-grimoire#comments:id=200901 to actual Season 3 unreduced cost vendor table (570)
-- Removed by an internal patch update, correct
DELETE FROM `npc_vendor_template` WHERE `entry` = 571 AND `item` IN (34033);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(571, 34033, 0, 0, 2390, 507, 'Vengeful Gladiator\'s Grimoire'); -- 978 in S4

-- https://wowwiki.fandom.com/wiki/Season_3_Arena_rewards?oldid=1011545
-- Season 3 Weapons will require a personal rating of 1850 to purchase -> Weapon Slot
UPDATE `npc_vendor_template` SET `ExtendedCost` = 1432 WHERE `entry` = 570 AND `item` IN (33681,33736,34033); -- S3 Caster Offhand in S3
UPDATE `npc_vendor_template` SET `ExtendedCost` = 2390 WHERE `entry` = 571 AND `item` IN (33681,33736,34033); -- S3 Caster Offhand in S4

-- https://www.wowhead.com/item=35110/brutal-gladiators-waraxe#comments:id=280479 - Hunter only 650 cost 2050 rating
UPDATE `npc_vendor_template` SET `ExtendedCost` = 2375 WHERE `entry` = 580 AND `item` = 35110;

-- Add missing Belt and Pendant S3 Items to S3 Vendor
DELETE FROM `npc_vendor_template` WHERE `entry` = 572 AND `item` IN (33811,33877,33879,33882,33885,33888,33891,33895,33898,33900,33903,33907,33909,33912,33915,33920,33921,33922,33923,35317,35319);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(572, 33811, 0, 0, 1923, 506, 'Vindicator\'s Plate Belt'), -- 17850 + 40 20559
(572, 33877, 0, 0, 1923, 506, 'Vindicator\'s Chain Girdle'),
(572, 33879, 0, 0, 1923, 506, 'Vindicator\'s Dragonhide Belt'),
(572, 33882, 0, 0, 1923, 506, 'Vindicator\'s Dreadweave Belt'),
(572, 33885, 0, 0, 1923, 506, 'Vindicator\'s Kodohide Belt'),
(572, 33888, 0, 0, 1923, 506, 'Vindicator\'s Lamellar Belt'),
(572, 33891, 0, 0, 1923, 506, 'Vindicator\'s Leather Belt'),
(572, 33895, 0, 0, 1923, 506, 'Vindicator\'s Linked Girdle'),
(572, 33898, 0, 0, 1923, 506, 'Vindicator\'s Mail Girdle'),
(572, 33900, 0, 0, 1923, 506, 'Vindicator\'s Mooncloth Belt'),
(572, 33903, 0, 0, 1923, 506, 'Vindicator\'s Ornamented Belt'),
(572, 33907, 0, 0, 1923, 506, 'Vindicator\'s Ringmail Girdle'),
(572, 33909, 0, 0, 1923, 506, 'Vindicator\'s Scaled Belt'),
(572, 33912, 0, 0, 1923, 506, 'Vindicator\'s Silk Belt'),
(572, 33915, 0, 0, 1923, 506, 'Vindicator\'s Wyrmhide Belt'),

(572, 33920, 0, 0, 127, 506, 'Vindicator\'s Pendant of Conquest'), -- 15300 + 10 29024
(572, 33921, 0, 0, 127, 506, 'Vindicator\'s Pendant of Dominance'),
(572, 33922, 0, 0, 127, 506, 'Vindicator\'s Pendant of Salvation'),
(572, 33923, 0, 0, 127, 506, 'Vindicator\'s Pendant of Triumph'),
(572, 35317, 0, 0, 127, 506, 'Vindicator\'s Pendant of Reprieve'),
(572, 35319, 0, 0, 127, 506, 'Vindicator\'s Pendant of Subjugation');

-- Add missing Belt and Pendant S3 Items to S4 Vendor
-- Not sure if S3 offset is still sold in S4
DELETE FROM `npc_vendor_template` WHERE `entry` = 581 AND `item` IN (33811,33877,33879,33882,33885,33888,33891,33895,33898,33900,33903,33907,33909,33912,33915,33920,33921,33922,33923,35317,35319);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) VALUES
-- (581, 33811, 0, 0, 1923, 507, 'Vindicator\'s Plate Belt'), -- 13923? + 40 20559
-- (581, 33877, 0, 0, 1923, 507, 'Vindicator\'s Chain Girdle'),
-- (581, 33879, 0, 0, 1923, 507, 'Vindicator\'s Dragonhide Belt'),
-- (581, 33882, 0, 0, 1923, 507, 'Vindicator\'s Dreadweave Belt'),
-- (581, 33885, 0, 0, 1923, 507, 'Vindicator\'s Kodohide Belt'),
-- (581, 33888, 0, 0, 1923, 507, 'Vindicator\'s Lamellar Belt'),
-- (581, 33891, 0, 0, 1923, 507, 'Vindicator\'s Leather Belt'),
-- (581, 33895, 0, 0, 1923, 507, 'Vindicator\'s Linked Girdle'),
-- (581, 33898, 0, 0, 1923, 507, 'Vindicator\'s Mail Girdle'),
-- (581, 33900, 0, 0, 1923, 507, 'Vindicator\'s Mooncloth Belt'),
-- (581, 33903, 0, 0, 1923, 507, 'Vindicator\'s Ornamented Belt'),
-- (581, 33907, 0, 0, 1923, 507, 'Vindicator\'s Ringmail Girdle'),
-- (581, 33909, 0, 0, 1923, 507, 'Vindicator\'s Scaled Belt'),
-- (581, 33912, 0, 0, 1923, 507, 'Vindicator\'s Silk Belt'),
-- (581, 33915, 0, 0, 1923, 507, 'Vindicator\'s Wyrmhide Belt'),

(581, 33920, 0, 0, 2248, 507, 'Vindicator\'s Pendant of Conquest'), -- 11934 + 10 29024
(581, 33921, 0, 0, 2248, 507, 'Vindicator\'s Pendant of Dominance'),
(581, 33922, 0, 0, 2248, 507, 'Vindicator\'s Pendant of Salvation'),
(581, 33923, 0, 0, 2248, 507, 'Vindicator\'s Pendant of Triumph'),
(581, 35317, 0, 0, 2248, 507, 'Vindicator\'s Pendant of Reprieve'),
(581, 35319, 0, 0, 2248, 507, 'Vindicator\'s Pendant of Subjugation');

-- Correct Cost for Offhand Items Gladiator's Cleaver and Gladiator's Left Ripper in S3
UPDATE `npc_vendor_template` SET `ExtendedCost` = 2240 WHERE `entry` = 553 AND `item` IN (28308,28314);

-- https://www.wowhead.com/item=36737/brutal-gladiators-hatchet#comments:id=312016 - Hunter only 650 cost 2050 rating
DELETE FROM `npc_vendor` WHERE `entry` IN (26352,26378,26383,26384,27668,27721,27722,28225); -- Move Items to s4 template (580) and Add Brutal Gladiator's Hatchet 36737 Hunter Item
DELETE FROM `npc_vendor_template` WHERE `entry` = 580 AND `item` IN (34991,35072,35101,35108,36737,38545,38546,38547,38548,38549,38550);
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(580, 34991, 0, 0, 2342, 507, 'Brutal Gladiator\'s Chain Gauntlets'),
(580, 35072, 0, 0, 2363, 507, 'Brutal Gladiator\'s Quickblade'),
(580, 35101, 0, 0, 2362, 507, 'Brutal Gladiator\'s Slicer'),
(580, 35108, 0, 0, 2339, 507, 'Brutal Gladiator\'s War Edge'),
(580, 36737, 0, 0, 2375, 507, 'Brutal Gladiator\'s Hatchet'),
(580, 38545, 0, 0, 2388, 507, 'Bold Ornate Ruby'),
(580, 38546, 0, 0, 2388, 507, 'Gleaming Ornate Dawnstone'),
(580, 38547, 0, 0, 2388, 507, 'Inscribed Ornate Topaz'),
(580, 38548, 0, 0, 2388, 507, 'Potent Ornate Topaz'),
(580, 38549, 0, 0, 2388, 507, 'Runed Ornate Ruby'),
(580, 38550, 0, 0, 2388, 507, 'Smooth Ornate Dawnstone');

-- https://wowwiki.fandom.com/wiki/Gladiator%27s_Touch_of_Defeat?direction=next&oldid=781608
UPDATE `npc_vendor_template` SET `ExtendedCost` = 2241 WHERE `entry` = 553 AND `item` = 28320; -- (2241 = 8k honor + 10 * i.29024) like the others

