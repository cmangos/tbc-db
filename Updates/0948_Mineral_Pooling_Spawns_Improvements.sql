-- ================
-- Ore Nodes Rework
-- ================

DELETE FROM `gameobject` WHERE `guid` IN (72984,72985,72986,72987,72988,72989); -- Burning Steps pool - Duplicate pool 3719 (Badlands) o.71195
DELETE FROM `pool_gameobject` WHERE `pool_entry` = 4264;
DELETE FROM `pool_template` WHERE `entry` = 4264;

DELETE FROM `gameobject` WHERE `guid` IN (111831,111832,111833,111834,111835); -- Duplicate pool 8354 (The Barrens (Main Section))
DELETE FROM `pool_gameobject` WHERE `pool_entry` = 8431;
DELETE FROM `pool_template` WHERE `entry` = 8431;

DELETE FROM `gameobject` WHERE `guid` IN (73900,73901,73902,73903,73904); -- Duplicate pool 4494 (Duskwood)
DELETE FROM `pool_gameobject` WHERE `pool_entry` = 4460;
DELETE FROM `pool_template` WHERE `entry` = 4460;

DELETE FROM `gameobject` WHERE `guid` IN (74050,74051,74052,74053,74054); -- Duplicate pool 4459 (Duskwood)
DELETE FROM `pool_gameobject` WHERE `pool_entry` = 4490;
DELETE FROM `pool_template` WHERE `entry` = 4490;

DELETE FROM `gameobject` WHERE `guid` IN (109755,109754,109753,109752,109751,109750); -- Duplicate pool 8611 (Thousand Needles)
DELETE FROM `pool_gameobject` WHERE `pool_entry` = 8698;
DELETE FROM `pool_template` WHERE `entry` = 8698;

DELETE FROM `gameobject` WHERE `guid` IN (112311,112312,112313,112314,112315); -- Duplicate pool 8349 (The Barrens (Main Section))
DELETE FROM `pool_gameobject` WHERE `pool_entry` = 9074;
DELETE FROM `pool_template` WHERE `entry` = 9074;

DELETE FROM `gameobject` WHERE `guid` IN (112256,112257,112258,112259,112260); -- Duplicate pool 8348 (The Barrens (Main Section))
DELETE FROM `pool_gameobject` WHERE `pool_entry` = 8516;
DELETE FROM `pool_template` WHERE `entry` = 8516;

DELETE FROM `gameobject` WHERE `guid` IN (100823,100819,100820,100821,100822); -- Duplicate pool 7146 (Ashenvale (East Section))
DELETE FROM `pool_gameobject` WHERE `pool_entry` = 7190;
DELETE FROM `pool_template` WHERE `entry` = 7190;

DELETE FROM `gameobject` WHERE `guid` IN (100924,100925,100926,100927,100928); -- Duplicate pool 7145 (Ashenvale (East Section))
DELETE FROM `pool_gameobject` WHERE `pool_entry` = 7211;
DELETE FROM `pool_template` WHERE `entry` = 7211;

DELETE FROM `gameobject` WHERE `guid` IN (101997,101998,101999); -- Duplicate pool 7387 (Darkshore)
DELETE FROM `pool_gameobject` WHERE `pool_entry` = 7389;
DELETE FROM `pool_template` WHERE `entry` = 7389;

DELETE FROM `gameobject` WHERE `guid` IN (68828,68829,68830,68831,68832,68833); -- Duplicate pool 3200 (Arathi Highlands)
DELETE FROM `pool_gameobject` WHERE `pool_entry` = 3238;
DELETE FROM `pool_template` WHERE `entry` = 3238;

DELETE FROM `gameobject` WHERE `guid` IN (77504,77505,77506,77507,77508); -- Duplicate pool 6318 (Stranglethorn Vale)
DELETE FROM `pool_gameobject` WHERE `pool_entry` = 6397;
DELETE FROM `pool_template` WHERE `entry` = 6397;

DELETE FROM `gameobject` WHERE `guid` IN (76140,76141,76142,76152,76153,76154,76164,76165,76166); -- Duplicate 6027 (Mineral Spawn Point 28 - Redridge Mountians (Main Section))
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (6067,6071,6075);
DELETE FROM `pool_template` WHERE `entry` IN (6067,6071,6075);

-- 79345 is chopper of Mineral Spawn Point 150 (6850)
UPDATE `pool_gameobject` SET `pool_entry` = 6950 WHERE `guid` = 79815; -- Mineral Spawn Point 86

-- === go move === -

UPDATE `gameobject` SET `position_x` = -5632.9560, `position_y` = -1751.2771, `position_z` = 357.9052 WHERE `guid` = 73532; -- Copper Vein
UPDATE `gameobject` SET `position_x` = -8750.47, `position_y` = -2257.78, `position_z` = 155.2284 WHERE `guid` IN (75945,75946,75947); -- pool 6002
UPDATE `gameobject` SET `position_x` = -8688.65, `position_y` = -2169.98, `position_z` = 156.78 WHERE `guid` IN (75969,75970,75971); -- pool 6010
UPDATE `gameobject` SET `position_x` = -9654.12, `position_y` = -2031.87, `position_z` = 60.49 WHERE `guid` IN (76071,76072,76073); -- pool 6044
UPDATE `gameobject` SET `position_x` = -8810.44, `position_y` = -2136.56, `position_z` = 149.64 WHERE `guid` IN (75951,75952,75953); -- pool 6004
UPDATE `gameobject` SET `position_z` = 161.03 WHERE `guid` = 105284; -- Tin Vein
UPDATE `gameobject` SET `position_x` = 1627.8993, `position_y` = 5159.116, `position_z` = 267.28177, `orientation` = 5.8294005, `rotation2` = -0.22495079, `rotation3` = 0.9743701 WHERE `guid` IN (195747,195748,195749); -- Pool 11506
UPDATE `gameobject` SET `position_x` = -3441.48, `position_y` = 2515.445, `position_z` = 57.70269, `orientation` = -1.396263 WHERE `guid` IN (195484,195485,195486,195487); -- Pool 11573

-- Duplicate 4492 (Mineral Spawn Point 93 - Duskwood)
UPDATE `gameobject` SET `position_x` = -11111.876953125, `position_y` = -103.865997314453125, `position_z` = 12.89178371429443359, `orientation` = -1.67551374435424804, `rotation2` = -0.74314403533935546, `rotation3` = 0.669131457805633544 WHERE `guid` IN (74075,74076,74077,74078,74079);

-- wotlk-db xyz
UPDATE `pool_pool` SET `mother_pool` = 2039, `description` = 'Mineral Spawn Point - Darkshore' WHERE `pool_id` = 7628;
UPDATE `pool_template` SET `description` = 'Darkshore - Mineral Vein' WHERE `entry` = 7628;
UPDATE `gameobject` SET `id` = 1731 WHERE `guid` = 103551;
UPDATE `pool_gameobject` SET `description` = 'Darkshore - Copper Vein' WHERE `guid` = 103551;
UPDATE `gameobject` SET `id` = 1732 WHERE `guid` = 103552;
UPDATE `pool_gameobject` SET `description` = 'Darkshore - Tin Vein' WHERE `guid` = 103552;
UPDATE `gameobject` SET `id` = 1733 WHERE `guid` = 103553;
UPDATE `pool_gameobject` SET `description` = 'Darkshore - Silver Vein' WHERE `guid` = 103553;
UPDATE `gameobject` SET `id` = 1734 WHERE `guid` = 103554;
UPDATE `pool_gameobject` SET `description` = 'Darkshore - Gold Vein' WHERE `guid` = 103554;

-- =======================================================================
-- ==========          Mineral Spawn Pool Improvements          ==========
-- =======================================================================

-- V6: OreTotal / 4, max = 60, Simple Ore Pool (Start Zones) = max / 2
-- Note that all caves or places with a high density in ores should have their own pool, these places are visible now

-- https://tbc.wowhead.com/news/upcoming-hotfixes-to-black-lotus-spawn-rate-and-warsong-gulch-exploits-316244
-- In original WoW, designers planned Black Lotus around a technical limitation – only 10 spawn locations per node type could be active at the same time in the same zone.
-- We no longer have that limitation, but it gives us a design intention that we can work with: Black Lotus was supposed to spawn in the widest variety of locations,
-- while there could only be one up at a time in each zone. As always, our goal is to minimize differences from original World of Warcraft,
-- and we feel this is a case where we can follow that design intention in a way that is warranted by modern conditions as well as beneficial to players.

-- ('2000','17','Master Mineral Pool - Alterac Mountains (Inner Section)') - 96 Total
UPDATE pool_template SET max_limit=24 WHERE entry IN (2000);

-- ('2001','13','Master Mineral Pool - Alterac Mountains (Outer Section)') - 71 Total
UPDATE pool_template SET max_limit=18 WHERE entry IN (2001);

-- ('2002','20','Master Mineral Pool - Arathi Highlands (Main Section)') - 304 Total
UPDATE pool_template SET max_limit=60 WHERE entry IN (2002);

-- ('2003','4','Master Mineral Pool - Arathi Highlands (Drywhisker Gorge)') - 31 Total
UPDATE pool_template SET max_limit=4 WHERE entry IN (2003); -- 4 confirmed retail value
UPDATE gameobject SET spawntimesecsmin=120, spawntimesecsmax=300 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2003)));

-- ('2004','19','Master Mineral Pool - Badlands') - 166 Total
UPDATE pool_template SET max_limit=42 WHERE entry IN (2004);

-- ('2005','18','Master Mineral Pool - Blasted Lands') - 113 Total
UPDATE pool_template SET max_limit=28 WHERE entry IN (2005);

-- ('2006','4','Master Mineral Pool - Blasted Lands (Garrison Armory) - Special Mineral GOs ONLY') - 13 Total
UPDATE pool_template SET max_limit=4 WHERE entry IN (2006);
UPDATE gameobject SET spawntimesecsmin=180, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2006)));

-- ('2007','20','Master Mineral Pool - Burning Steppes') - 244 Total
UPDATE pool_template SET max_limit=61 WHERE entry IN (2007);

-- ('2008','22','Master Mineral Pool - Dun Morogh') - 90 Total (Simple Pool)
UPDATE pool_template SET max_limit=45 WHERE entry IN (2008);

-- ('2009','26','Master Mineral Pool - Duskwood') - 119 Total
UPDATE pool_template SET max_limit=30 WHERE entry IN (2009);

-- ('2010','23','Master Mineral Pool - Eastern Plaguelands') - 90 Total
UPDATE pool_template SET max_limit=23 WHERE entry IN (2010);

-- ('2011','23','Master Mineral Pool - Elwynn Forest') - 109 Total (Simple Pool)
UPDATE pool_template SET max_limit=55 WHERE entry IN (2011);

-- ('2012','16','Master Mineral Pool - Eversong Woods') - 60 Total (Simple Pool) - missing alot of gos (only chopper)
UPDATE pool_template SET max_limit=30 WHERE entry IN (2012);

-- ('2013','19','Master Mineral Pool - Ghostlands') - 35 Total
UPDATE pool_template SET max_limit=9 WHERE entry IN (2013);

-- 2070	3	Master Mineral Pool - Ghostlands (Underlight Mines) - 11 Total

-- ('2014','15','Master Mineral Pool - Hillsbrad Foothills (Main Section)') - 80 Total
UPDATE pool_template SET max_limit=20 WHERE entry IN (2014);

-- ('2015','15','Master Mineral Pool - Hillsbrad Foothills (Higher Level Sections)') - 33 Total
UPDATE pool_template SET max_limit=8 WHERE entry IN (2015);

-- ('2016','4','Master Mineral Pool - Hillsbrad Foothills (Azurelode Mine) - Special Mineral GOs ONLY') - 9 Total
UPDATE pool_template SET max_limit=3 WHERE entry IN (2016);
UPDATE gameobject SET spawntimesecsmin=180, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2016)));

-- ('2017','2','Master Mineral Pool - Isle of Quel\'Danas') - 18 Total
UPDATE pool_template SET max_limit=5 WHERE entry IN (2017);

-- ('2018','19','Master Mineral Pool - Loch Modan') - 119 Total
UPDATE pool_template SET max_limit=30 WHERE entry IN (2018);

-- ('2019','15','Master Mineral Pool - Redridge Mountians (Main Section)') - 89 Total
UPDATE pool_template SET max_limit=22 WHERE entry IN (2019);

-- ('2020','4','Master Mineral Pool - Redridge Mountians (Rethban Caverns)') - 21 Total
UPDATE pool_template SET max_limit=5 WHERE entry IN (2020);
UPDATE gameobject SET spawntimesecsmin=180, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2020)));

-- ('2021','17','Master Mineral Pool - Searing Gorge (West Section)') - 76 Total
UPDATE pool_template SET max_limit=19 WHERE entry IN (2021);

-- ('2022','15','Master Mineral Pool - Searing Gorge (East Section)') - 38 Total
UPDATE pool_template SET max_limit=10 WHERE entry IN (2022);

-- ('2023','17','Master Mineral Pool - Silverpine Forest') - 116 Total
UPDATE pool_template SET max_limit=29 WHERE entry IN (2023);

-- ('2024','23','Master Mineral Pool - Stranglethorn Vale') - 178 Total
UPDATE pool_template SET max_limit=45 WHERE entry IN (2024);

-- ('2025','15','Master Mineral Pool - Swamp of Sorrows') - 77 Total
UPDATE pool_template SET max_limit=19 WHERE entry IN (2025);

-- ('2026','17','Master Mineral Pool - The Hinterlands') - 115 Total
UPDATE pool_template SET max_limit=29 WHERE entry IN (2026);

-- ('2027','17','Master Mineral Pool - Tirisfal Glades') - 63 Total (Simple Pool)
UPDATE pool_template SET max_limit=32 WHERE entry IN (2027);

-- ('2028','15','Master Mineral Pool - Western Plaguelands (South-West Section)') - 42 Total
UPDATE pool_template SET max_limit=11 WHERE entry IN (2028);

-- ('2029','13','Master Mineral Pool - Western Plaguelands (East and North Sections)') - 66 Total
UPDATE pool_template SET max_limit=17 WHERE entry IN (2029);

-- ('2030','18','Master Mineral Pool - Westfall') - 171 Total
UPDATE pool_template SET max_limit=43 WHERE entry IN (2030);

-- ('2031','17','Master Mineral Pool - Wetlands (Main Section)') - 129 Total
UPDATE pool_template SET max_limit=33 WHERE entry IN (2031);

-- ('2032','4','Master Mineral Pool - Wetlands (Thelgen Rock)') - 29 Total
UPDATE pool_template SET max_limit=4 WHERE entry IN (2032);
UPDATE gameobject SET spawntimesecsmin=120, spawntimesecsmax=300 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2032)));

-- ('2033','18','Master Mineral Pool - Ashenvale (West Section)') - 88 Total
UPDATE pool_template SET max_limit=22 WHERE entry IN (2033);

-- ('2034','18','Master Mineral Pool - Ashenvale (East Section)') - 123 Total
UPDATE pool_template SET max_limit=31 WHERE entry IN (2034);

-- ('2035','21','Master Mineral Pool - Azshara') - 86 Total
UPDATE pool_template SET max_limit=22 WHERE entry IN (2035);

-- ('2036','21','Master Mineral Pool - Azuremyst Isle') - 59 Total (Simple Pool)
UPDATE pool_template SET max_limit=15 WHERE entry IN (2036);

-- ('2037','10','Master Mineral Pool - Bloodmyst Isle (Lower Level Section)') - 10 Total (Simple Pool)
UPDATE pool_template SET max_limit=3 WHERE entry IN (2037);
UPDATE gameobject SET spawntimesecsmin=180, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (2037));

-- ('2038','19','Master Mineral Pool - Bloodmyst Isle (Main Section)') - 28 Total
UPDATE pool_template SET max_limit=7 WHERE entry IN (2038);

-- ('2039','22','Master Mineral Pool - Darkshore') - 108 Total
UPDATE pool_template SET max_limit=27 WHERE entry IN (2039);

-- ('2040','19','Master Mineral Pool - Desolace') - 206 Total
UPDATE pool_template SET max_limit=52 WHERE entry IN (2040);

-- ('2041','23','Master Mineral Pool - Durotar') - 174 Total (Simple Pool)
UPDATE pool_template SET max_limit=60 WHERE entry IN (2041);

-- ('2042','19','Master Mineral Pool - Dustwallow Marsh') - 77 Total
UPDATE pool_template SET max_limit=19 WHERE entry IN (2042);

-- ('2043','19','Master Mineral Pool - Felwood') - 85 Total
UPDATE pool_template SET max_limit=21 WHERE entry IN (2043);

-- ('2045','17','Master Mineral Pool - Feralas') - 75 Total
UPDATE pool_template SET max_limit=19 WHERE entry IN (2045);

-- ('2046','4','Master Mineral Pool - Feralas (Ooze Covered Mineral GOs)') - 23 Total
UPDATE pool_template SET max_limit=6 WHERE entry IN (2046);
UPDATE gameobject SET spawntimesecsmin=180, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2046)));

-- ('2057','1','Master Mineral Pool - Thunder Bluff') - 1 Total -> Integrate into Mulgore!
UPDATE `pool_gameobject` SET `pool_entry` = 2047, `chance` = 0, `description` = 'Mineral Spawn Point 65 - Copper' WHERE `guid` = 110221;
DELETE FROM pool_template WHERE entry IN (2057);

-- ('2047','21','Master Mineral Pool - Mulgore') - 65 Total (Simple Pool)
UPDATE pool_template SET max_limit=33 WHERE entry IN (2047);

-- ('2048','17','Master Mineral Pool - Silithus') - 58 Total
UPDATE pool_template SET max_limit=15 WHERE entry IN (2048);

-- ('2049','13','Master Mineral Pool - Silithus (Ooze Covered Mineral GOs)') - 83 Total
UPDATE pool_template SET max_limit=21 WHERE entry IN (2049);
UPDATE gameobject SET spawntimesecsmin=90, spawntimesecsmax=180 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2049)));

-- ('2050','17','Master Mineral Pool - Stonetalon Mountians') - 112 Total
UPDATE pool_template SET max_limit=28 WHERE entry IN (2050);

-- ('2051','19','Master Mineral Pool - Tanaris') - 260 Total
UPDATE pool_template SET max_limit=65 WHERE entry IN (2051);

-- ('2052','26','Master Mineral Pool - The Barrens (Main Section)') - 217 Total
UPDATE pool_template SET max_limit=54 WHERE entry IN (2052);

-- ('2053','3','Master Mineral Pool - The Barrens (Bael Modan)') - 14 Total
UPDATE pool_template SET max_limit=3 WHERE entry IN (2053);
UPDATE gameobject SET spawntimesecsmin=180, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2053)));

-- ('2055','23','Master Mineral Pool - Thousand Needles') - 262 Total
UPDATE pool_template SET max_limit=66 WHERE entry IN (2055);

-- ('2056','3','Master Mineral Pool - Thousand Needles (Ooze Covered Mineral GOs)') - 11 Total
UPDATE pool_template SET max_limit=3 WHERE entry IN (2056);
UPDATE gameobject SET spawntimesecsmin=180, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2056)));

-- ('2058','21','Master Mineral Pool - Un\'Goro Crater') - 155 Total
UPDATE pool_template SET max_limit=39 WHERE entry IN (2058);

-- ('2059','5','Master Mineral Pool - Un\'Goro Crater (Ooze Covered Mineral GOs)') - 24 Total
UPDATE pool_template SET max_limit=6 WHERE entry IN (2059);
UPDATE gameobject SET spawntimesecsmin=180, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2059)));

-- ('2060','17','Master Mineral Pool - Winterspring (Main Section)') - 86 Total
UPDATE pool_template SET max_limit=22 WHERE entry IN (2060);

-- ('2061','15','Master Mineral Pool - Winterspring (West Section)') - 32 Total
UPDATE pool_template SET max_limit=8 WHERE entry IN (2061);

-- ('2062','25','Master Mineral Pool - Hellfire Peninsula') - 229 Total
UPDATE pool_template SET max_limit=57 WHERE entry IN (2062);

-- ('2063','25','Master Mineral Pool - Zangarmarsh') - 129 Total
UPDATE pool_template SET max_limit=32 WHERE entry IN (2063);

-- ('2064','25','Master Mineral Pool - Nagrand') - 218 Total
UPDATE pool_template SET max_limit=55 WHERE entry IN (2064);

-- ('2065','25','Master Mineral Pool - Terokkar Forest') - 161 Total
UPDATE pool_template SET max_limit=40 WHERE entry IN (2065);

-- ('2066','25','Master Mineral Pool - Netherstorm') - 141 Total
UPDATE pool_template SET max_limit=35 WHERE entry IN (2066);

-- ('2067','25','Master Mineral Pool - Blades Edge Mountains') - 189 Total
UPDATE pool_template SET max_limit=47 WHERE entry IN (2067);

-- ('2068','25','Master Mineral Pool - Shadowmoon Valley') - 179 Total
UPDATE pool_template SET max_limit=45 WHERE entry IN (2068);

-- =======================================================================
-- ========         Misc Spawn Pool Improvements          ========
-- =======================================================================

-- 2101 12 Nagrand - Windy Cloud (24222) - 63 Total (pool_creature_template)
UPDATE pool_template SET max_limit=15 WHERE entry IN (2101);

-- 2102 15 Shadowmoon Valley - Felmist (17407) - 98 Total (pool_creature_template)
UPDATE pool_template SET max_limit=18 WHERE entry IN (2102); -- 25

-- 2103 15 Zangarmarsh - Swamp Gas (17378) - 100 + 1 Total (pool_creature_template)
UPDATE pool_template SET max_limit=18 WHERE entry IN (2103);

-- 2104 12 Netherstorm - Arcane Vortex (17408) - 69 Total (pool_creature_template)
UPDATE pool_template SET max_limit=15 WHERE entry IN (2104);

-- ('2069','5','Master Mineral Pool - Shadowmoon Valley (Nethercite Spawns)') - 32 Total (pool_gameobject_template)
UPDATE pool_template SET max_limit=8 WHERE entry IN (2069); -- 17 bushes
UPDATE gameobject SET spawntimesecsmin=180, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (2069));

-- Align Khorium Vein 181557 Chance with other Zone Pools which all have 5%
-- https://www.wowhead.com/object=181557/khorium-vein#comments:id=44022 1 in 40-50 =~ 2-2.5%
UPDATE `pool_gameobject` SET `chance` = 5 WHERE `description` LIKE '%Nagrand 181557%';

-- =======================================================================
-- =======       Experimental Pool Chance Spawn Improvements       =======
-- =======================================================================

-- Improve Chance for Lesser Bloodstone Deposit 2653
UPDATE `pool_gameobject` SET `chance` = 50 WHERE `description` LIKE '%Lesser Bloodstone Deposit%'; -- 25

-- Experimental Tin Vein Spawn Improvements
UPDATE `pool_gameobject` SET `chance` = 11 WHERE `chance` IN (3) AND `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` IN (1732,3764,103711,181249,2054));
UPDATE `pool_gameobject` SET `chance` = 16 WHERE `chance` IN (10) AND `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` IN (1732,3764,103711,181249,2054));
UPDATE `pool_gameobject` SET `chance` = 21 WHERE `chance` IN (13,15) AND `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` IN (1732,3764,103711,181249,2054));
UPDATE `pool_gameobject` SET `chance` = 26 WHERE `chance` IN (20) AND `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` IN (1732,3764,103711,181249,2054));
UPDATE `pool_gameobject` SET `chance` = 35 WHERE `chance` IN (30,33) AND `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` IN (1732,3764,103711,181249,2054));

-- Experimental Truesilver Spawn Improvements
UPDATE `pool_gameobject` SET `chance` = 20 WHERE `chance` IN (10) AND `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` IN (2047));
/*
72071	4111	5	Mineral Spawn Point 12 - Dark Iron
72069	4111	10	Mineral Spawn Point 12 - Gold
72068	4111	25	Mineral Spawn Point 12 - Mithril
72067	4111	25	Mineral Spawn Point 12 - Rich Thorium
72066	4111	0	Mineral Spawn Point 12 - Small Thorium
72070	4111	10	Mineral Spawn Point 12 - Truesilver
*/
UPDATE `pool_gameobject` SET `chance` = 55 WHERE `chance` IN (15) AND `guid` IN (SELECT `guid` FROM `gameobject` WHERE `id` IN (2047));
/*
111164	9013	15	Mineral Spawn Point 1 - Gold
111163	9013	0	Mineral Spawn Point 1 - Mithril
111165	9013	15	Mineral Spawn Point 1 - Truesilver
*/

