-- ====================================================================
-- ==========          Herb Spawn Pool Improvements          ==========
-- ====================================================================

-- ('13000','22','Master Herb Pool - Alterac Mountains') - 364 Total
UPDATE pool_template SET max_limit=91 WHERE entry IN (13000);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13000));

-- ('13001','22','Master Herb Pool - Arathi Highlands') - 571 Total
UPDATE pool_template SET max_limit=143 WHERE entry IN (13001);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13001));

-- ('13002','21','Master Herb Pool - Badlands') - 169 Total
UPDATE pool_template SET max_limit=43 WHERE entry IN (13002);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13002));

-- ('13003','22','Master Herb Pool - Blasted Lands') - 113 Total
UPDATE pool_template SET max_limit=32 WHERE entry IN (13003);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13003));

-- ('13004','23','Master Herb Pool - Burning Steppes') - 187 Total
UPDATE pool_template SET max_limit=47 WHERE entry IN (13004);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13004));

-- ('13005','23','Master Herb Pool - Dun Morogh') - 153 Total
UPDATE pool_template SET max_limit=39 WHERE entry IN (13005);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13005));

-- ('13006','24','Master Herb Pool - Duskwood') - 287 Total
UPDATE pool_template SET max_limit=72 WHERE entry IN (13006);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13006));

-- ('13007','23','Master Herb Pool - Eastern Plaguelands') - 388 Total
UPDATE pool_template SET max_limit=97 WHERE entry IN (13007);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13007));

-- ('13008','23','Master Herb Pool - Elwynn Forest') - 151 Total
UPDATE pool_template SET max_limit=38 WHERE entry IN (13008);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13008));

-- ('13009','23','Master Herb Pool - Eversong Woods') - 174 Total
UPDATE pool_template SET max_limit=44 WHERE entry IN (13009);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13009));

-- ('13010','21','Master Herb Pool - Ghostlands') - 135 Total
UPDATE pool_template SET max_limit=34 WHERE entry IN (13010);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13010));

-- ('13011','23','Master Herb Pool - Hillsbrad Foothills') - 342 Total
UPDATE pool_template SET max_limit=86 WHERE entry IN (13011);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13011));

-- ('13012','2','Master Herb Pool - Isle of Quel\'Danas') - 9 Total
UPDATE pool_template SET max_limit=2 WHERE entry IN (13012);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13012));

-- ('13013','23','Master Herb Pool - Loch Modan') - 229 Total
UPDATE pool_template SET max_limit=58 WHERE entry IN (13013);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13013));

-- ('13014','23','Master Herb Pool - Redridge Mountains') - 213 Total
UPDATE pool_template SET max_limit=54 WHERE entry IN (13014);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13014));

-- ('13015','19','Master Herb Pool - Searing Gorge') - 71 Total
UPDATE pool_template SET max_limit=29 WHERE entry IN (13015);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13015));

-- ('13016','23','Master Herb Pool - Silverpine Forest') - 251 Total
UPDATE pool_template SET max_limit=63 WHERE entry IN (13016);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13016));

-- ('13017','28','Master Herb Pool - Stranglethorn Vale') - 725 Total
UPDATE pool_template SET max_limit=182 WHERE entry IN (13017);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13017));

-- ('13018','22','Master Herb Pool - Swamp of Sorrows') - 344 Total
UPDATE pool_template SET max_limit=86 WHERE entry IN (13018);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13018));

-- ('13019','22','Master Herb Pool - The Hinterlands') - 354 Total
UPDATE pool_template SET max_limit=89 WHERE entry IN (13019);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13019));

-- ('13020','21','Master Herb Pool - Tirisfal Glades') - 202 Total
UPDATE pool_template SET max_limit=202 WHERE entry IN (13020);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13020));

-- ('13021','23','Master Herb Pool - Western Plaguelands') - 230 Total
UPDATE pool_template SET max_limit=58 WHERE entry IN (13021);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13021));

-- ('13022','23','Master Herb Pool - Westfall') - 316 Total
UPDATE pool_template SET max_limit=79 WHERE entry IN (13022);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13022));

-- ('13023','22','Master Herb Pool - Wetlands') - 370 Total
UPDATE pool_template SET max_limit=93 WHERE entry IN (13023);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13023));

-- ('13024','23','Master Herb Pool - Ashenvale') - 431 Total
UPDATE pool_template SET max_limit=108 WHERE entry IN (13024);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13024));

-- ('13025','22','Master Herb Pool - Azshara') - 490 Total
UPDATE pool_template SET max_limit=123 WHERE entry IN (13025);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13025));

-- ('13026','21','Master Herb Pool - Azuremyst Isle') - 105 Total
UPDATE pool_template SET max_limit=31 WHERE entry IN (13026);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13026));

-- ('13027','20','Master Herb Pool - Bloodmyst Isle') - 0 Total
UPDATE pool_template SET max_limit=30 WHERE entry IN (13027);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13027));

-- ('13028','23','Master Herb Pool - Darkshore') - 394 Total
UPDATE pool_template SET max_limit=99 WHERE entry IN (13028);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13028));

-- ('13029','21','Master Herb Pool - Desolace') - 173 Total
UPDATE pool_template SET max_limit=44 WHERE entry IN (13029);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13029));

-- ('13030','23','Master Herb Pool - Durotar') - 291 Total
UPDATE pool_template SET max_limit=73 WHERE entry IN (13030);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13030));

-- ('13031','21','Master Herb Pool - Dustwallow Marsh') - 114 Total
UPDATE pool_template SET max_limit=31 WHERE entry IN (13031);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13031));

-- ('13032','21','Master Herb Pool - Felwood') - 248 Total
UPDATE pool_template SET max_limit=62 WHERE entry IN (13032);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13032));

-- ('13033','22','Master Herb Pool - Feralas') - 185 Total
UPDATE pool_template SET max_limit=47 WHERE entry IN (13033);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13033));

-- ('13034','23','Master Herb Pool - Mulgore') - 176 Total
UPDATE pool_template SET max_limit=44 WHERE entry IN (13034);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13034));

-- ('13035','21','Master Herb Pool - Silithus') - 75 Total
UPDATE pool_template SET max_limit=31 WHERE entry IN (13035);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13035));

-- ('13036','21','Master Herb Pool - Stonetalon Mountians') - 260 Total
UPDATE pool_template SET max_limit=65 WHERE entry IN (13036);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13036));

-- ('13037','20','Master Herb Pool - Tanaris') - 113 Total
UPDATE pool_template SET max_limit=30 WHERE entry IN (13037);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13037));

-- ('13038','21','Master Herb Pool - Teldrassil') - 159 Total
UPDATE pool_template SET max_limit=40 WHERE entry IN (13038);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13038));

-- ('13039','34','Master Herb Pool - The Barrens') - 979 Total
UPDATE pool_template SET max_limit=245 WHERE entry IN (13039);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13039));

-- ('13040','20','Master Herb Pool - Thousand Needles') - 128 Total
UPDATE pool_template SET max_limit=32 WHERE entry IN (13040);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13040));

-- ('13041','22','Master Herb Pool - Un\'Goro Crater') - 311 Total
UPDATE pool_template SET max_limit=78 WHERE entry IN (13041);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13041));

-- ('13042','20','Master Herb Pool - Winterspring') - 274 Total
UPDATE pool_template SET max_limit=69 WHERE entry IN (13042);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13042));

-- ('13043','23','Master Herb Pool - Blades Edge Mountains') - 114 Total
UPDATE pool_template SET max_limit=33 WHERE entry IN (13043);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13043));

-- ('13044','25','Master Herb Pool - Hellfire Peninsula') - 205 Total
UPDATE pool_template SET max_limit=52 WHERE entry IN (13044);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13044));

-- ('13045','25','Master Herb Pool - Nagrand') - 112 Total
UPDATE pool_template SET max_limit=35 WHERE entry IN (13045);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13045));

-- ('13046','25','Master Herb Pool - Netherstorm') - 132 Total
UPDATE pool_template SET max_limit=35 WHERE entry IN (13046);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13046));

-- ('13047','25','Master Herb Pool - Shadowmoon Valley') - 132 Total
UPDATE pool_template SET max_limit=35 WHERE entry IN (13047);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13047));

-- ('13048','25','Master Herb Pool - Terokkar Forest') - 236 Total
UPDATE pool_template SET max_limit=59 WHERE entry IN (13048);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13048));

-- ('13049','25','Master Herb Pool - Zangarmarsh') - 254 Total
UPDATE pool_template SET max_limit=64 WHERE entry IN (13049);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (13049));

-- 13050	15	Master Herb Pool - Shadowmoon Valley - Netherdust Bush (185881) - 44 Total
UPDATE pool_template SET max_limit=18 WHERE entry IN (13050);

-- 13051	20	Master Herb Pool - Isle of Quel'Danas - Bloodberry Bush (187333) - 40 Total
UPDATE pool_template SET max_limit=24 WHERE entry IN (13051);

-- =======================================================================
-- ==========          Mineral Spawn Pool Improvements          ==========
-- =======================================================================

-- ('2000','17','Master Mineral Pool - Alterac Mountains (Inner Section)') - 96 Total
UPDATE pool_template SET max_limit=24 WHERE entry IN (2000);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2000)));

-- ('2001','13','Master Mineral Pool - Alterac Mountains (Outer Section)') - 71 Total
UPDATE pool_template SET max_limit=18 WHERE entry IN (2001);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2001)));

-- ('2002','20','Master Mineral Pool - Arathi Highlands (Main Section)') - 304 Total
UPDATE pool_template SET max_limit=76 WHERE entry IN (2002);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2002)));

-- ('2003','4','Master Mineral Pool - Arathi Highlands (Drywhisker Gorge)') - 31 Total
UPDATE pool_template SET max_limit=8 WHERE entry IN (2003);
UPDATE gameobject SET spawntimesecsmin=360, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2003)));

-- ('2004','19','Master Mineral Pool - Badlands') - 166 Total
UPDATE pool_template SET max_limit=43 WHERE entry IN (2004);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2004)));

-- ('2005','18','Master Mineral Pool - Blasted Lands') - 113 Total
UPDATE pool_template SET max_limit=29 WHERE entry IN (2005);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2005)));

-- ('2006','4','Master Mineral Pool - Blasted Lands (Garrison Armory) - Special Mineral GOs ONLY') - 13 Total
UPDATE pool_template SET max_limit=4 WHERE entry IN (2006);
UPDATE gameobject SET spawntimesecsmin=360, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2006)));

-- ('2007','20','Master Mineral Pool - Burning Steppes') - 244 Total
UPDATE pool_template SET max_limit=61 WHERE entry IN (2007);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2007)));

-- ('2008','22','Master Mineral Pool - Dun Morogh') - 90 Total (Simple Pool)
UPDATE pool_template SET max_limit=33 WHERE entry IN (2008);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (2008));

-- ('2009','26','Master Mineral Pool - Duskwood') - 119 Total
UPDATE pool_template SET max_limit=30 WHERE entry IN (2009);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2009)));

-- ('2010','23','Master Mineral Pool - Eastern Plaguelands') - 90 Total
UPDATE pool_template SET max_limit=23 WHERE entry IN (2010);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2010)));

-- ('2011','23','Master Mineral Pool - Elwynn Forest') - 107 Total (Simple Pool)
UPDATE pool_template SET max_limit=27 WHERE entry IN (2011);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (2011));

-- ('2012','16','Master Mineral Pool - Eversong Woods') - 60 Total (Simple Pool) - missing alot of gos (only chopper)
UPDATE pool_template SET max_limit=20 WHERE entry IN (2012);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (2012));

-- ('2013','19','Master Mineral Pool - Ghostlands') - 40 Total
UPDATE pool_template SET max_limit=20 WHERE entry IN (2013);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2013)));

-- ('2014','15','Master Mineral Pool - Hillsbrad Foothills (Main Section)') - 82 Total
UPDATE pool_template SET max_limit=21 WHERE entry IN (2014);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2014)));

-- ('2015','15','Master Mineral Pool - Hillsbrad Foothills (Higher Level Sections)') - 33 Total
UPDATE pool_template SET max_limit=16 WHERE entry IN (2015);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2015)));

-- ('2016','4','Master Mineral Pool - Hillsbrad Foothills (Azurelode Mine) - Special Mineral GOs ONLY') - 9 Total
UPDATE pool_template SET max_limit=4 WHERE entry IN (2016);
UPDATE gameobject SET spawntimesecsmin=360, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2016)));

-- ('2017','2','Master Mineral Pool - Isle of Quel\'Danas') - 6 Total
UPDATE pool_template SET max_limit=2 WHERE entry IN (2017);
UPDATE gameobject SET spawntimesecsmin=900, spawntimesecsmax=900 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2017)));

-- ('2018','19','Master Mineral Pool - Loch Modan') - 119 Total
UPDATE pool_template SET max_limit=30 WHERE entry IN (2018);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2018)));

-- ('2019','15','Master Mineral Pool - Redridge Mountians (Main Section)') - 89 Total
UPDATE pool_template SET max_limit=23 WHERE entry IN (2019);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2019)));

-- ('2020','4','Master Mineral Pool - Redridge Mountians (Rethban Caverns)') - 21 Total
UPDATE pool_template SET max_limit=6 WHERE entry IN (2020);
UPDATE gameobject SET spawntimesecsmin=360, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2020)));

-- ('2021','17','Master Mineral Pool - Searing Gorge (West Section)') - 76 Total
UPDATE pool_template SET max_limit=19 WHERE entry IN (2021);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2021)));

-- ('2022','15','Master Mineral Pool - Searing Gorge (East Section)') - 38 Total
UPDATE pool_template SET max_limit=16 WHERE entry IN (2022);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2022)));

-- ('2023','17','Master Mineral Pool - Silverpine Forest') - 116 Total
UPDATE pool_template SET max_limit=38 WHERE entry IN (2023);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2023)));

-- ('2024','23','Master Mineral Pool - Stranglethorn Vale') - 178 Total
UPDATE pool_template SET max_limit=45 WHERE entry IN (2024);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2024)));

-- ('2025','15','Master Mineral Pool - Swamp of Sorrows') - 77 Total
UPDATE pool_template SET max_limit=20 WHERE entry IN (2025);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2025)));

-- ('2026','17','Master Mineral Pool - The Hinterlands') - 115 Total
UPDATE pool_template SET max_limit=29 WHERE entry IN (2026);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2026)));

-- ('2027','17','Master Mineral Pool - Tirisfal Glades') - 63 Total (Simple Pool)
UPDATE pool_template SET max_limit=20 WHERE entry IN (2027);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (2027));

-- ('2028','15','Master Mineral Pool - Western Plaguelands (South-West Section)') - 42 Total
UPDATE pool_template SET max_limit=16 WHERE entry IN (2028);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2028)));

-- ('2029','13','Master Mineral Pool - Western Plaguelands (East and North Sections)') - 66 Total
UPDATE pool_template SET max_limit=15 WHERE entry IN (2029);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2029)));

-- ('2030','18','Master Mineral Pool - Westfall') - 171 Total
UPDATE pool_template SET max_limit=43 WHERE entry IN (2030);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2030)));

-- ('2031','17','Master Mineral Pool - Wetlands (Main Section)') - 129 Total
UPDATE pool_template SET max_limit=33 WHERE entry IN (2031);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2031)));

-- ('2032','4','Master Mineral Pool - Wetlands (Thelgen Rock)') - 29 Total
UPDATE pool_template SET max_limit=8 WHERE entry IN (2032);
UPDATE gameobject SET spawntimesecsmin=360, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2032)));

-- ('2033','18','Master Mineral Pool - Ashenvale (West Section)') - 88 Total
UPDATE pool_template SET max_limit=22 WHERE entry IN (2033);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2033)));

-- ('2034','18','Master Mineral Pool - Ashenvale (East Section)') - 123 Total
UPDATE pool_template SET max_limit=31 WHERE entry IN (2034);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2034)));

-- ('2035','21','Master Mineral Pool - Azshara') - 84 Total
UPDATE pool_template SET max_limit=22 WHERE entry IN (2035);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2035)));

-- ('2036','21','Master Mineral Pool - Azuremyst Isle') - 59 Total (Simple Pool)
UPDATE pool_template SET max_limit=22 WHERE entry IN (2036);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (2036));

-- ('2037','10','Master Mineral Pool - Bloodmyst Isle (Lower Level Section)') - 10 Total (Simple Pool)
UPDATE pool_template SET max_limit=7 WHERE entry IN (2037);
UPDATE gameobject SET spawntimesecsmin=240, spawntimesecsmax=240 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (2037));

-- ('2038','19','Master Mineral Pool - Bloodmyst Isle (Main Section)') - 28 Total
UPDATE pool_template SET max_limit=19 WHERE entry IN (2038);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2038)));

-- ('2039','22','Master Mineral Pool - Darkshore') - 107 Total
UPDATE pool_template SET max_limit=27 WHERE entry IN (2039);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2039)));

-- ('2040','19','Master Mineral Pool - Desolace') - 206 Total
UPDATE pool_template SET max_limit=52 WHERE entry IN (2040);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2040)));

-- ('2041','23','Master Mineral Pool - Durotar') - 174 Total (Simple Pool)
UPDATE pool_template SET max_limit=44 WHERE entry IN (2041);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (2041));

-- ('2042','19','Master Mineral Pool - Dustwallow Marsh') - 77 Total
UPDATE pool_template SET max_limit=20 WHERE entry IN (2042);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2042)));

-- ('2043','19','Master Mineral Pool - Felwood') - 86 Total
UPDATE pool_template SET max_limit=22 WHERE entry IN (2043);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2043)));

-- ('2045','17','Master Mineral Pool - Feralas') - 75 Total
UPDATE pool_template SET max_limit=19 WHERE entry IN (2045);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2045)));

-- ('2046','4','Master Mineral Pool - Feralas (Ooze Covered Mineral GOs)') - 23 Total
UPDATE pool_template SET max_limit=6 WHERE entry IN (2046);
UPDATE gameobject SET spawntimesecsmin=360, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2046)));

-- ('2047','21','Master Mineral Pool - Mulgore') - 64 Total (Simple Pool)
UPDATE pool_template SET max_limit=16 WHERE entry IN (2047);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (2047));

-- ('2048','17','Master Mineral Pool - Silithus') - 58 Total
UPDATE pool_template SET max_limit=18 WHERE entry IN (2048);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2048)));

-- ('2049','13','Master Mineral Pool - Silithus (Ooze Covered Mineral GOs)') - 83 Total
UPDATE pool_template SET max_limit=21 WHERE entry IN (2049);
UPDATE gameobject SET spawntimesecsmin=360, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2049)));

-- ('2050','17','Master Mineral Pool - Stonetalon Mountians') - 112 Total
UPDATE pool_template SET max_limit=28 WHERE entry IN (2050);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2050)));

-- ('2051','19','Master Mineral Pool - Tanaris') - 260 Total
UPDATE pool_template SET max_limit=65 WHERE entry IN (2051);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2051)));

-- ('2052','26','Master Mineral Pool - The Barrens (Main Section)') - 217 Total
UPDATE pool_template SET max_limit=55 WHERE entry IN (2052);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2052)));

-- ('2053','3','Master Mineral Pool - The Barrens (Bael Modan)') - 11 Total
UPDATE pool_template SET max_limit=4 WHERE entry IN (2053);
UPDATE gameobject SET spawntimesecsmin=360, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2053)));

-- ('2055','23','Master Mineral Pool - Thousand Needles') - 260 Total
UPDATE pool_template SET max_limit=65 WHERE entry IN (2055);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2055)));

-- ('2056','3','Master Mineral Pool - Thousand Needles (Ooze Covered Mineral GOs)') - 11 Total
UPDATE pool_template SET max_limit=4 WHERE entry IN (2056);
UPDATE gameobject SET spawntimesecsmin=360, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2056)));

-- ('2057','17','Master Mineral Pool - Thunder Bluff') - 1 Total
UPDATE pool_template SET max_limit=1 WHERE entry IN (2057);
UPDATE gameobject SET spawntimesecsmin=1800, spawntimesecsmax=3600 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (2057));

-- ('2058','21','Master Mineral Pool - Un\'Goro Crater') - 155 Total
UPDATE pool_template SET max_limit=39 WHERE entry IN (2058);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2058)));

-- ('2059','5','Master Mineral Pool - Un\'Goro Crater (Ooze Covered Mineral GOs)') - 24 Total
UPDATE pool_template SET max_limit=6 WHERE entry IN (2059);
UPDATE gameobject SET spawntimesecsmin=360, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2059)));

-- ('2060','17','Master Mineral Pool - Winterspring (Main Section)') - 86 Total
UPDATE pool_template SET max_limit=22 WHERE entry IN (2060);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2060)));

-- ('2061','15','Master Mineral Pool - Winterspring (West Section)') - 32 Total
UPDATE pool_template SET max_limit=16 WHERE entry IN (2061);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2061)));

-- ('2062','25','Master Mineral Pool - Hellfire Peninsula') - 208 Total
UPDATE pool_template SET max_limit=52 WHERE entry IN (2062);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2062)));

-- ('2063','25','Master Mineral Pool - Zangarmarsh') - 108 Total
UPDATE pool_template SET max_limit=28 WHERE entry IN (2063);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2063)));

-- ('2064','25','Master Mineral Pool - Nagrand') - 204 Total
UPDATE pool_template SET max_limit=51 WHERE entry IN (2064);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2064)));

-- ('2065','25','Master Mineral Pool - Terokkar Forest') - 141 Total
UPDATE pool_template SET max_limit=36 WHERE entry IN (2065);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2065)));

-- ('2066','25','Master Mineral Pool - Netherstorm') - 77 Total
UPDATE pool_template SET max_limit=28 WHERE entry IN (2066);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2066)));

-- ('2067','25','Master Mineral Pool - Blades Edge Mountains') - 106 Total
UPDATE pool_template SET max_limit=28 WHERE entry IN (2067);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2067)));

-- ('2068','25','Master Mineral Pool - Shadowmoon Valley') - 128 Total
UPDATE pool_template SET max_limit=32 WHERE entry IN (2068);
UPDATE gameobject SET spawntimesecsmin=45, spawntimesecsmax=90 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (SELECT pool_id FROM pool_pool WHERE mother_pool IN (2068)));

-- ('2069','5','Master Mineral Pool - Shadowmoon Valley (Nethercite Spawns)') - 73 Total
UPDATE pool_template SET max_limit=18 WHERE entry IN (2069);
UPDATE gameobject SET spawntimesecsmin=360, spawntimesecsmax=360 WHERE guid IN (SELECT guid FROM pool_gameobject WHERE pool_entry IN (2069));

-- ======================================================================
-- =======   Zapthrottle Mote Extractor Spawn Pool Improvements   =======
-- ======================================================================

-- 2101	12	Nagrand - Windy Cloud (24222) - 63 Total
UPDATE pool_template SET max_limit=15 WHERE entry IN (2101);

-- 2102	15	Shadowmoon Valley - Felmist (17407) - 98 Total
UPDATE pool_template SET max_limit=18 WHERE entry IN (2102);

-- 2103	15	Zangarmarsh - Swamp Gas (17378) - 100 Total
UPDATE pool_template SET max_limit=18 WHERE entry IN (2103);

-- 2104	12	Netherstorm - Arcane Vortex (17408) - 69 Total
UPDATE pool_template SET max_limit=15 WHERE entry IN (2104);

