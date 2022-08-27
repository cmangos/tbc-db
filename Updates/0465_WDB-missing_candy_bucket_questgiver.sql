-- add missing questgiver/taker for quests "Candy Bucket"
-- allmost all spawns are missing atm
DELETE FROM `gameobject_questrelation` WHERE `id` IN
(190036, -- Dun Morogh - Kharanos
190064, -- Durotar - Razor Hill
190065, -- Mulgore - Bloodhoof Village
190066, -- Tirisfal Glades - Brill
190067, -- Eversong Woods - Falconwing Square
190068, -- Eversong Woods - Fairbreeze Village
190069, -- Orgrimmar
190070, -- Thunder Bluff
190071, -- Undercity
190072, -- Silvermoon City (1)
190073, -- Silvermoon City (2)
190074, -- Silverpine Forest - The Sepulcher
190075, -- Ghostlands - Tranquillien
190076, -- The Barrens - Crossroads
190077, -- The Barrens - Camp Taurajo
190078, -- Hillsbrad Foothills - Tarren Mill
190079, -- Ashenvale - Splintertree Post
190080, -- Stonetalon Mountains - Sun Rock Retreat
190081, -- Thousand Needles - Freewind Post
190082, -- Arathi Highlands - Hammerfall
190083, -- Desolace - Shadowprey Village
190084, -- Stranglethorn Vale - Grom'gol
190085, -- Dustwallow Marsh - Brackenwall Village
190086, -- Swamp of Sorrows - Stonard
190087, -- Badlands - Kargath
190088, -- Feralas - Camp Mojache
190089, -- The Hinterlands - Revantusk Village
190090, -- Hellfire Peninsula - Thrallmar
190091, -- Hellfire Peninsula - Falcon Watch
190096, -- Zangarmarsh - Zabra'jin
190097, -- Terokkar Forest - Stonebreaker Hold
190098, -- Nagrand - Garadar
190099, -- Blade's Edge Mountains - Thunderlord Stronghold
190100, -- Blade's Edge Mountains - Mok'Nathal Village
190101, -- Shadowmoon Valley - Shadowmoon Village
190103, -- Stranglethorn Vale - Booty Bay
190111, -- Shattrath City - Scryer's Tier
190116); -- Shadowmoon Valley - Sanctum of the Stars

-- Northrend
-- 191878, -- Zul'Drak - Zim'Torga
-- 191879, -- Zul'Drak - The Argent Stand
-- 191880, -- Grizzly Hills - Conquest Hold
-- -- 191881, -- Grizzly Hills - Camp Oneqwah  [MISSING OBJECT ENTRY IN DB]
-- 191882, -- Grizzly Hills - Amberpine Lodge
-- -- 191883, -- Grizzly Hills - Westfall Brigade Encampment  [MISSING OBJECT ENTRY IN DB]
-- 192018, -- Sholazar Basin - Nesingwary Base Camp
-- 194056, -- Howling Fjord - Valgarde
-- 194057, -- Howling Fjord - Westguard Keep
-- -- 194058, -- Howling Fjord - Fort Wildervar  [MISSING OBJECT ENTRY IN DB]
-- -- 194059, -- Borean Tundra - Valiance Keep  [MISSING OBJECT ENTRY IN DB]
-- 194060, -- Borean Tundra - Fizzcrank Airstrip
-- 194061, -- Dragonblight - Stars Rest
-- -- 194062, -- Dragonblight - Wintergarde Keep  [MISSING OBJECT ENTRY IN DB]
-- 194063, -- The Storm Peaks - Frosthold
-- -- 194065, -- Howling Fjord - Kamagua  [MISSING OBJECT ENTRY IN DB]
-- 194066, -- Dragonblight - Wyrmrest Temple
-- 194067, -- Dragonblight - Moa'ki Harbor
-- -- 194068, -- Borean Tundra - Death's Stand  [MISSING OBJECT ENTRY IN DB]
-- 194069, -- The Storm Peaks - K3
-- -- 194070, -- The Storm Peaks - Snowdrift Plains  [MISSING OBJECT ENTRY IN DB]
-- -- 194073, -- Howling Fjord - Camp Winterhoof  [MISSING OBJECT ENTRY IN DB]
-- -- 194074, -- Howling Fjord - New Agamand  [MISSING OBJECT ENTRY IN DB]
-- -- 194075, -- Howling Fjord - Vengeance Landing  [MISSING OBJECT ENTRY IN DB]
-- -- 194076, -- Borean Tundra - Taunka'le Village  [MISSING OBJECT ENTRY IN DB]
-- 194077, -- Borean Tundra - Warsong Hold
-- 194078, -- Dragonblight - Agmar's Hammer
-- 194079, -- Dragonblight - Venomspite
-- -- 194080, -- The Storm Peaks - Camp Tunka'lo  [MISSING OBJECT ENTRY IN DB]
-- 194081); -- Dalaran
-- -- 194084, -- Borean Tundra - Bor'Gorok Outpost  [MISSING OBJECT ENTRY IN DB]
-- -- 194119); -- The Storm Peaks - Grom'arsh Crash Site  [MISSING OBJECT ENTRY IN DB]

DELETE FROM `gameobject_involvedrelation` WHERE `id` IN
(190036,
190064,
190065,
190066,
190067,
190068,
190069,
190070,
190071,
190072,
190073,
190074,
190075,
190076,
190077,
190078,
190079,
190080,
190081,
190082,
190083,
190084,
190085,
190086,
190087,
190088,
190089,
190090,
190091,
190096,
190097,
190098,
190099,
190100,
190101,
190103,
190111,
190116,
-- Northrend
191878,
191879,
191880,
191881,
191882,
191883,
192018,
194056,
194057,
194058,
194059,
194060,
194061,
194062,
194063,
194065,
194066,
194067,
194068,
194069,
194070,
194073,
194074,
194075,
194076,
194077,
194078,
194079,
194080,
194081,
194084,
194119);

-- ------------------------------------------------------------ --

INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES
(190036, 12332), -- Dun Morogh - Kharanos
(190064, 12361), -- Durotar - Razor Hill
(190065, 12362), -- Mulgore - Bloodhoof Village
(190066, 12363), -- Tirisfal Glades - Brill
(190067, 12364), -- Eversong Woods - Falconwing Square
(190068, 12365), -- Eversong Woods - Fairbreeze Village
(190069, 12366), -- Orgrimmar
(190070, 12367), -- Thunder Bluff
(190071, 12368), -- Undercity
(190072, 12369), -- Silvermoon City (1)
(190073, 12370), -- Silvermoon City (2)
(190074, 12371), -- Silverpine Forest - The Sepulcher
(190075, 12373), -- Ghostlands - Tranquillien
(190076, 12374), -- The Barrens - Crossroads
(190077, 12375), -- The Barrens - Camp Taurajo
(190078, 12376), -- Hillsbrad Foothills - Tarren Mill
(190079, 12377), -- Ashenvale - Splintertree Post
(190080, 12378), -- Stonetalon Mountains - Sun Rock Retreat
(190081, 12379), -- Thousand Needles - Freewind Post
(190082, 12380), -- Arathi Highlands - Hammerfall
(190083, 12381), -- Desolace - Shadowprey Village
(190084, 12382), -- Stranglethorn Vale - Grom'gol
(190085, 12383), -- Dustwallow Marsh - Brackenwall Village
(190086, 12384), -- Swamp of Sorrows - Stonard
(190087, 12385), -- Badlands - Kargath
(190088, 12386), -- Feralas - Camp Mojache
(190089, 12387), -- The Hinterlands - Revantusk Village
(190090, 12388), -- Hellfire Peninsula - Thrallmar
(190091, 12389), -- Hellfire Peninsula - Falcon Watch
(190096, 12390), -- Zangarmarsh - Zabra'jin
(190097, 12391), -- Terokkar Forest - Stonebreaker Hold
(190098, 12392), -- Nagrand - Garadar
(190099, 12393), -- Blade's Edge Mountains - Thunderlord Stronghold
(190100, 12394), -- Blade's Edge Mountains - Mok'Nathal Village
(190101, 12395), -- Shadowmoon Valley - Shadowmoon Village
(190103, 12397), -- Stranglethorn Vale - Booty Bay
(190111, 12404), -- Shattrath City - Scryer's Tier
(190116, 12409); -- Shadowmoon Valley - Sanctum of the Stars
-- Northrend
-- (191878, 12940), -- Zul'Drak - Zim'Torga
-- (191879, 12941), -- Zul'Drak - The Argent Stand
-- (191880, 12946), -- Grizzly Hills - Conquest Hold
-- -- (191881, 12947), -- Grizzly Hills - Camp Oneqwah  [MISSING OBJECT ENTRY IN DB]
-- (191882, 12944), -- Grizzly Hills - Amberpine Lodge
-- -- (191883, 12945), -- Grizzly Hills - Westfall Brigade Encampment  [MISSING OBJECT ENTRY IN DB]
-- (192018, 12950), -- Sholazar Basin - Nesingwary Base Camp
-- (194056, 13433), -- Howling Fjord - Valgarde
-- (194057, 13434), -- Howling Fjord - Westguard Keep
-- -- (194058, 13435), -- Howling Fjord - Fort Wildervar  [MISSING OBJECT ENTRY IN DB]
-- -- (194059, 13436), -- Borean Tundra - Valiance Keep  [MISSING OBJECT ENTRY IN DB]
-- (194060, 13437), -- Borean Tundra - Fizzcrank Airstrip
-- (194061, 13438), -- Dragonblight - Stars Rest
-- -- (194062, 13439), -- Dragonblight - Wintergarde Keep  [MISSING OBJECT ENTRY IN DB]
-- (194063, 13448), -- The Storm Peaks - Frosthold
-- -- (194065, 13452), -- Howling Fjord - Kamagua  [MISSING OBJECT ENTRY IN DB]
-- (194066, 13456), -- Dragonblight - Wyrmrest Temple
-- (194067, 13459), -- Dragonblight - Moa'ki Harbor
-- -- (194068, 13460), -- Borean Tundra - Death's Stand  [MISSING OBJECT ENTRY IN DB]
-- (194069, 13461), -- The Storm Peaks - K3
-- -- (194070, 13462), -- The Storm Peaks - Snowdrift Plains  [MISSING OBJECT ENTRY IN DB]
-- -- (194073, 13464), -- Howling Fjord - Camp Winterhoof  [MISSING OBJECT ENTRY IN DB]
-- -- (194074, 13465), -- Howling Fjord - New Agamand  [MISSING OBJECT ENTRY IN DB]
-- -- (194075, 13466), -- Howling Fjord - Vengeance Landing  [MISSING OBJECT ENTRY IN DB]
-- -- (194076, 13467), -- Borean Tundra - Taunka'le Village  [MISSING OBJECT ENTRY IN DB]
-- (194077, 13468), -- Borean Tundra - Warsong Hold
-- (194078, 13469), -- Dragonblight - Agmar's Hammer
-- (194079, 13470), -- Dragonblight - Venomspite
-- -- (194080, 13471), -- The Storm Peaks - Camp Tunka'lo  [MISSING OBJECT ENTRY IN DB]
-- (194081, 13474); -- Dalaran
-- -- (194084, 13501), -- Borean Tundra - Bor'Gorok Outpost  [MISSING OBJECT ENTRY IN DB]
-- -- (194119, 13548); -- The Storm Peaks - Grom'arsh Crash Site  [MISSING OBJECT ENTRY IN DB]
-- unused ones
-- 13463
-- 13472
-- 13473

INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES
(190036, 12332),
(190064, 12361),
(190065, 12362),
(190066, 12363),
(190067, 12364),
(190068, 12365),
(190069, 12366),
(190070, 12367),
(190071, 12368),
(190072, 12369),
(190073, 12370),
(190074, 12371),
(190075, 12373),
(190076, 12374),
(190077, 12375),
(190078, 12376),
(190079, 12377),
(190080, 12378),
(190081, 12379),
(190082, 12380),
(190083, 12381),
(190084, 12382),
(190085, 12383),
(190086, 12384),
(190087, 12385),
(190088, 12386),
(190089, 12387),
(190090, 12388),
(190091, 12389),
(190096, 12390),
(190097, 12391),
(190098, 12392),
(190099, 12393),
(190100, 12394),
(190101, 12395),
(190103, 12397),
(190111, 12404),
(190116, 12409);
-- Northrend
-- (191878, 12940),
-- (191879, 12941),
-- (191880, 12946),
-- -- (191881, 12947),
-- (191882, 12944),
-- -- (191883, 12945),
-- (192018, 12950),
-- (194056, 13433),
-- (194057, 13434),
-- -- (194058, 13435),
-- -- (194059, 13436),
-- (194060, 13437),
-- (194061, 13438),
-- -- (194062, 13439),
-- (194063, 13448),
-- -- (194065, 13452),
-- (194066, 13456),
-- (194067, 13459),
-- -- (194068, 13460),
-- (194069, 13461),
-- -- (194070, 13462),
-- -- (194073, 13464),
-- -- (194074, 13465),
-- -- (194075, 13466),
-- -- (194076, 13467),
-- (194077, 13468),
-- (194078, 13469),
-- (194079, 13470),
-- -- (194080, 13471),
-- (194081, 13474);
-- -- (194084, 13501),
-- -- (194119, 13548);

