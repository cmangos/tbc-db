-- Cleanup Cast Aura Events

-- Devotion Aura (Rank 3) 643
DELETE FROM `creature_addon` WHERE `guid` IN (9771,9784,9785);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (1038,1036,2305,2344) AND `guid` NOT IN (15864,15865));
UPDATE `creature_addon` SET `auras` = '643 42648' WHERE `guid` IN (15864,15865);
DELETE FROM `creature_template_addon` WHERE `entry` IN (1038,1036,2305,2344);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(1038, 1, 16, ''), -- Dragonmaw Shadowwarder
(1036, 1, 16, '643'), -- Dragonmaw Centurion
(2305, 1, 0, '643'), -- Foreman Bonds
(2344, 1, 16, '643'); -- Dun Garok Mountaineer

-- 674 Dual Wield (Passive)
-- DELETE FROM `creature_template_addon` WHERE `entry` IN (580,639,1696,1711,1716,4666,9583,11043);
-- INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
-- (580, 1, 16, '674'), -- Redridge Drudger
-- (639, 1, 16, '674'), -- Edwin VanCleef
-- (1696, 1, 16, '674 8876'), -- Targorr the Dread
-- (1711, 1, 16, '674'), -- Defias Convict
-- (1716, 1, 16, '674'), -- Bazil Thredd
-- (4666, 1, 16, '674'), -- Burning Blade Felsworn
-- (9583, 1, 16, '674'), -- Bloodaxe Veteran
-- (11043, 1, 16, '674 8876'); -- Crimson Monk

-- Stealth (Rank 2) 1785
DELETE FROM `creature_template_addon` WHERE `entry` IN (768,11792);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(768, 1, 16, '1785'), -- Shadow Panther
(11792, 1, 16, '1785'); -- Putridus Shadowstalker

-- Stealth (Rank 3) 1786
DELETE FROM `creature_template_addon` WHERE `entry` = 2434;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(2434, 1, 16, '1786'); -- Shadowy Assassin

-- Thrash 3417
DELETE FROM `creature_template_addon` WHERE `entry` IN (2717,6347,8911,9096,9164,9167,10158,10416,11075,11143,11713,11737,11782,11791,12207,12258,16595,18134,18257,22174);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(2717, 1, 16, '3417'), -- Dustbelcher Mauler
(6347, 1, 16, '3417'), -- Young Wavethrasher
(8911, 1, 16, '3417'), -- Fireguard Destroyer
(9096, 1, 16, '3417'), -- Rage Talon Dragonspawn
(9164, 1, 16, '3417'), -- Elder Diemetradon
(9167, 1, 16, '3417'), -- Frenzied Pterrordax
(10158, 1, 16, '3417'), -- Moonkin
(10416, 1, 16, '3417'), -- Bile Spewer
(11075, 1, 16, '3417'), -- Cauldron Lord Bilemaw
(11143, 1, 16, '3417'), -- Postmaster Malown
(11713, 1, 16, '3417'), -- Blackwood Tracker
(11737, 1, 16, '3417'), -- Stonelash Flayer
(11782, 1, 16, '3417'), -- Ambershard Destroyer
(11791, 1, 16, '3417'), -- Putridus Trickster
(12207, 1, 16, '3417'), -- Thessala Hydra
(12258, 1, 16, '3417'), -- Razorlash
(16595, 1, 0, '3417'), -- Fleshbeast
(18134, 1, 16, '3417'), -- Fen Strider
(18257, 1, 16, '3417'), -- Gutripper
(22174, 1, 16, '3417'); -- Trigul

-- Poison Proc 3616
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (1035));
DELETE FROM `creature_template_addon` WHERE `entry` IN (127,434,442,505,572,579,616,769,858,909,920,930,947,1026,1035,1555,1565,1821,2241,2563,2565,2575,3669,3821,4005,4011,4012,4013,4015,4107,4109,4110,4347,4348,
4376,4379,4415,4457,4671,4971,5048,5245,5441,5455,5645,6170,7036,7078,7405,9521,9691,16313,16357,17683);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(127, 1, 16, '3616'), -- Murloc Tidehunter
(434, 1, 16, '3616'), -- Rabid Shadowhide Gnoll
(442, 1, 16, '3616'), -- Tarantula
(505, 1, 16, '3616'), -- Greater Tarantula
(572, 1, 16, '3616'), -- Leprithus
(579, 1, 0, '3616 30831'), -- Shadowhide Assassin
(616, 1, 16, '3616'), -- Chatter
(769, 1, 16, '3616'), -- Deathstrike Tarantula
(858, 1, 16, '3616'), -- Sorrow Spinner
(909, 1, 16, '3616'), -- Defias Night Blade
(920, 1, 16, '3616'), -- Nightbane Tainted One
(930, 1, 16, '3616'), -- Black Widow Hatchling
(947, 1, 0, '3616 30831'), -- Rohh the Silent
(1026, 1, 16, '3616'), -- Bluegill Forager
(1035, 1, 16, '3616'), -- Dragonmaw Swamprunner
(1555, 1, 16, '3616'), -- Vicious Night Web Spider
(1565, 1, 16, '3616'), -- Bloodsail Sea Dog
(1821, 1, 16, '3616'), -- Carrion Lurker
(2241, 1, 16, '3616'), -- Syndicate Thief
(2563, 1, 16, '3616'), -- Plains Creeper
(2565, 1, 16, '3616'), -- Giant Plains Creeper
(2575, 1, 16, '3616'), -- Dark Iron Supplier
(3669, 1, 16, '3616'), -- Lord Cobrahn
(3821, 1, 16, '3616 6920'), -- Wildthorn Lurker
(4005, 1, 16, '3616'), -- Deepmoss Creeper
(4011, 1, 16, '3616'), -- Young Pridewing
(4012, 1, 16, '3616'), -- Pridewing Wyvern
(4013, 1, 16, '3616'), -- Pridewing Skyhunter
(4015, 1, 16, '3616'), -- Pridewing Patriarch
(4107, 1, 16, '3616'), -- Highperch Wyvern
(4109, 1, 16, '3616'), -- Highperch Consort
(4110, 1, 16, '3616'), -- Highperch Patriarch
(4347, 1, 16, '3616'), -- Noxious Reaver
(4348, 1, 16, '3616 8876'), -- Noxious Shredder
(4376, 1, 16, '3616'), -- Darkmist Spider
(4379, 1, 16, '3616'), -- Darkmist Silkspinner
(4415, 1, 16, '3616'), -- Giant Darkfang Spider
(4457, 1, 16, '3616'), -- Murkgill Forager
(4671, 1, 16, '3616'), -- Hatefury Trickster
(4971, 1, 16, '3616'), -- Slim's Friend
(5048, 1, 16, '3616'), -- Deviate Adder
(5245, 1, 16, '3616'), -- Zukk'ash Wasp
(5441, 1, 16, '3616'), -- Hazzali Wasp
(5455, 1, 16, '3616 8876'), -- Centipaar Wasp
(5645, 1, 16, '3616'), -- Sandfury Hideskinner
(6170, 1, 16, '3616'), -- Gutspill
(7036, 1, 16, '3616'), -- Thaurissan Spy
(7078, 1, 16, '3616'), -- Cleft Scorpid
(7405, 1, 16, '3616'), -- Deadly Cleft Scorpid
(9521, 1, 16, '3616'), -- Enraged Felbat
(9691, 1, 16, '3616'), -- Venomtip Scorpid
(16313, 1, 16, '3616'), -- Nerubis Guard
(16357, 1, 16, '3616'), -- Anok'suten
(17683, 1, 16, '3616'); -- Zarakh

-- Self Visual - Sleep Until Cancelled (DND) 6606
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3892));
DELETE FROM `creature_template_addon` WHERE `entry` IN (3892);
INSERT INTO `creature_template_addon` (`entry`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(3892, 3, 1, 16, '6606'); -- Relara Whitemoon

-- Weak Poison Proc 6752
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3281));
DELETE FROM `creature_template_addon` WHERE `entry` IN (1504,1505,3124,3125,3281);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(1504, 1, 16, '6752'), -- Young Night Web Spider
(1505, 1, 16, '6752'), -- Night Web Spider
(3124, 1, 16, '6752'), -- Scorpid Worker
(3125, 1, 16, '6752'), -- Clattering Scorpid
(3281, 1, 0, '6752'); -- Sarkoth

-- Coat of Thistlefur 6813
DELETE FROM `creature_template_addon` WHERE `entry` IN (3921,3922,3923,3924,3925,3926);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(3921, 1, 16, '6813 7165'), -- Thistlefur Ursa
(3922, 1, 16, '6813'), -- Thistlefur Totemic
(3923, 1, 16, '6813'), -- Thistlefur Den Watcher
(3924, 1, 16, '6813'), -- Thistlefur Shaman
(3925, 1, 16, '6813'), -- Thistlefur Avenger
(3926, 1, 16, '6813'); -- Thistlefur Pathfinder

-- Corrupted Agility Passive 6820
-- Corrupted Strength Passive 6821
-- Corrupted Stamina Passive 6822
-- Corrupted Intellect Passive 6823
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3225));
DELETE FROM `creature_template_addon` WHERE `entry` IN (3225,3743,3745,3746,3748,3749,3750,4474,12921);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(3225, 1, 0, '6823'), -- Corrupted Mottled Boar
(3743, 1, 16, '6821'), -- Foulweald Warrior
(3745, 1, 16, '6820'), -- Foulweald Pathfinder
(3746, 1, 16, '6822 8876'), -- Foulweald Den Watcher
(3748, 1, 16, '6823'), -- Foulweald Shaman
(3749, 1, 16, '6821 7165'), -- Foulweald Ursa
(3750, 1, 16, '6823'), -- Foulweald Totemic
(4474, 1, 16, '6822'), -- Rotting Cadaver
(12921, 1, 16, '6821'); -- Enraged Foulweald

-- Moss Covered Hands Proc 6867
-- Moss Covered Feet Proc 6871
DELETE FROM `creature_template_addon` WHERE `entry` IN (1953,1954,1955,1956,3780);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(1953, 1, 16, '6867'), -- Lake Skulker
(1954, 1, 16, '6867'), -- Elder Lake Skulker
(1955, 1, 16, '6871'), -- Lake Creeper
(1956, 1, 16, '6871'), -- Elder Lake Creeper
(3780, 1, 16, '6867 6871'); -- Singed Shambler

-- Hide 6920
DELETE FROM `creature_template_addon` WHERE `entry` = 4670;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(4670, 1, 16, '6920'); -- Hatefury Rogue

-- Knockdown Proc 7095
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (729,4035));
DELETE FROM `creature_template_addon` WHERE `entry` IN (446,506,678,729,1117,1178,1494,2181,4035,18340,26178,26216);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(446, 1, 16, '7095'), -- Redridge Basher
(506, 1, 16, '7095'), -- Sergeant Brashclaw
(678, 1, 16, '7095'), -- Mosh'Ogg Mauler
(729, 1, 0, '7095'), -- Sin'Dall
(1117, 1, 16, '7095'), -- Rockjaw Bonesnapper
(1178, 1, 16, '7095'), -- Mo'grosh Ogre
(1494, 1, 16, '7095'), -- Negolash
(2181, 1, 16, '7095'), -- Stormscale Myrmidon
(4035, 1, 0, '7095'), -- Furious Stone Spirit
(18340, 1, 16, '7095'), -- Steam Pump Overseer
(26178, 1, 16, '7095'), -- Hailstone Lieutenant
(26216, 1, 16, '7095'); -- Glacial Templar

-- Battle Stance (Rank 1) 7165
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (5471));
DELETE FROM `creature_template_addon` WHERE `entry` IN (48,1027,1179,1424,1663,1708,1907,2168,2339,2653,3266,3737,3749,3872,3898,3921,3943,4420,4436,4636,4713,4922,4923,5091,5092,5093,5094,5471,5600,5602,5824,5859,6180,6221,6243,7011,7396,7843,12977);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(48, 1, 16, ''), -- Skeletal Warrior
(1027, 1, 16, '7165'), -- Bluegill Warrior
(1179, 1, 16, '7165'), -- Mo'grosh Enforcer
(1424, 1, 16, '7165'), -- Master Digger
(1663, 1, 16, '7165'), -- Dextren Ward
(1708, 1, 16, '7165'), -- Defias Inmate
(1907, 1, 16, '7165'), -- Naga Explorer
(2168, 1, 16, '7165'), -- Blackwood Warrior
(2339, 1, 16, '7165'), -- Twilight Thug
(2653, 1, 16, '7165'), -- Witherbark Sadist
(3266, 1, 16, '7165'), -- Razormane Defender
(3737, 1, 16, '7165'), -- Saltspittle Puddlejumper
(3749, 1, 16, '7165'), -- Foulweald Ursa
(3872, 1, 16, '7165'), -- Deathsworn Captain
(3898, 1, 16, '7165'), -- Aligar the Tormentor
(3921, 1, 16, '7165'), -- Thistlefur Ursa
(3943, 1, 0, '7165'), -- Ruuzel
(4420, 1, 16, '7165'), -- Overlord Ramtusk
(4436, 1, 16, '7165'), -- Razorfen Quilguard
(4636, 1, 16, '7165'), -- Kolkar Battle Lord
(4713, 1, 16, '7165'), -- Slitherblade Warrior
(4922, 0, 16, '7165'), -- Guard Edward
(4923, 0, 16, '7165'), -- Guard Jarad
(5091, 0, 16, '7165'), -- Guard Kahil
(5092, 0, 16, '7165'), -- Guard Lana
(5093, 0, 16, '7165'), -- Guard Narrisha
(5094, 0, 16, '7165'), -- Guard Tark
(5471, 1, 16, '7165'), -- Dunemaul Ogre
(5600, 1, 16, '7165'), -- Khan Dez'hepah
(5602, 1, 0, '7165'), -- Khan Shaka
(5824, 1, 16, '7165'), -- Captain Flat Tusk
(5859, 1, 16, '7165'), -- Hagg Taurenbane
(6180, 1, 16, '7165'), -- Defias Raider
(6221, 1, 16, '7165'), -- Addled Leper
(6243, 1, 16, '7165'), -- Gelihast
(7011, 1, 16, '7165'), -- Earthen Rocksmasher
(7396, 1, 16, '7165'), -- Earthen Stonebreaker
(7843, 1, 16, '7165'), -- Gnomeregan Evacuee
(12977, 1, 16, '7165'); -- Kolkar Ambusher

-- Poison Proc 7276
DELETE FROM `creature_template_addon` WHERE `entry` IN (217,539,569,1041,1184,1185,1195,1780,1781,2246,3767,7605,9297);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(217, 1, 16, '7276'), -- Venom Web Spider
(539, 1, 16, '7276'), -- Pygmy Venom Web Spider
(569, 1, 16, '7276'), -- Green Recluse
(1041, 1, 16, '7276'), -- Fen Lord
(1184, 1, 16, '7276'), -- Cliff Lurker
(1185, 1, 16, '7276'), -- Wood Lurker
(1195, 1, 16, '7276'), -- Forest Lurker
(1780, 1, 16, '7276'), -- Skitterweb Striker
(1781, 1, 16, '7276'), -- Skitterweb Lurker
(2246, 1, 16, '7276 22766'), -- Syndicate Assassin
(3767, 1, 16, '7276'), -- Bleakheart Trickster
(7605, 1, 16, '7276'), -- Raven
(9297, 1, 16, '7276'); -- Enraged Wyvern

-- Foul Odor 7667
DELETE FROM `creature_template_addon` WHERE `entry` = 1971;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(1971, 1, 0, '7667'); -- Ivar the Foul

-- Sneak 8218
DELETE FROM `creature_template_addon` WHERE `entry` IN (3804,3806,3807,3808);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(3804, 1, 16, '8218'), -- Forsaken Intruder
(3806, 1, 16, '8218'), -- Forsaken Infiltrator
(3807, 1, 16, '8218'), -- Forsaken Assassin
(3808, 1, 16, '8218'); -- Forsaken Dark Stalker

-- Phase Shift 8612
DELETE FROM `creature_template_addon` WHERE `entry` = 3815;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(3815, 1, 16, '8612'); -- Screecher Spirit

-- Overwhelming Musk 8713
DELETE FROM `creature_template_addon` WHERE `entry` = 10580;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(10580, 1, 16, '8713'); -- Fetid Zombie

-- Thrash 8876
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3378,4479,9176,10198));
DELETE FROM `creature_template_addon` WHERE `entry` IN (100,449,478,1202,1353,1696,1783,1791,1843,1847,2186,2236,2560,2728,3256,3378,3456,3636,3722,4023,4374,4389,4479,4540,4634,4645,4652,4656,4855,5234,5267,5363,5456,5457,5458,5459,5460,5709,6005,6140,6210,6348,7039,7101,7268,7320,7369,7446,7665,8138,8205,8208,8299,8718,8961,8981,9176,9267,9777,10182,10198,10220,10407,10414,10488,10639,10836,10946,10991,11043,11357,11372,11442,11465,11486,11677,11714,12099,12201,13088,13285,14446,14821,14882,15101,15114,15207,15335,16593,16596,17397,18105,18135,18214,18281,18631);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(100, 1, 16, '8876'), -- Gruff Swiftbite
(449, 1, 16, '8876'), -- Defias Knuckleduster
(478, 1, 16, '8876'), -- Riverpaw Outrunner
(1202, 1, 16, '8876'), -- Tunnel Rat Kobold
(1353, 1, 16, '8876'), -- Sarltooth
(1696, 1, 16, '8876'), -- Targorr the Dread
(1783, 1, 16, '8876'), -- Skeletal Flayer
(1791, 1, 16, '8876'), -- Slavering Ghoul
(1843, 1, 16, '8876'), -- Foreman Jerris
(1847, 1, 16, '8876'), -- Foulmane
(2186, 1, 16, '8876'), -- Carnivous the Breaker
(2236, 1, 16, '8876'), -- Raging Reef Crawler
(2560, 1, 16, '8876'), -- Highland Thrasher
(2728, 1, 16, '8876'), -- Feral Crag Coyote
(3256, 1, 16, '8876'), -- Sunscale Scytheclaw
(3378, 1, 16, '8876'), -- Bael'dun Officer
(3456, 1, 16, '8876'), -- Razormane Pathfinder
(3636, 1, 16, '8876'), -- Deviate Ravager
(3722, 1, 0, '8876'), -- Mystlash Flayer
(4023, 1, 16, '8876'), -- Bloodfury Roguefeather
(4374, 1, 16, '8876'), -- Strashaz Hydra
(4389, 1, 16, '8876'), -- Murk Thresher
(4479, 1, 0, '8876 10022'), -- Fardel Dabyrie
(4540, 1, 16, '8876'), -- Scarlet Monk
(4634, 1, 16, '8876'), -- Kolkar Mauler
(4645, 1, 16, '8876'), -- Magram Mauler
(4652, 1, 16, '8876'), -- Gelkis Mauler
(4656, 1, 16, '8876'), -- Maraudine Mauler
(4855, 1, 16, '8876'), -- Stonevault Brawler
(5234, 1, 16, '8876'), -- Gordunni Mauler
(5267, 1, 16, '8876'), -- Unliving Atal'ai
(5363, 1, 16, '8876'), -- Northspring Roguefeather
(5456, 1, 16, '8876'), -- Centipaar Stinger
(5457, 1, 16, '8876'), -- Centipaar Swarmer
(5458, 1, 16, '8876'), -- Centipaar Worker
(5459, 1, 16, '8876'), -- Centipaar Tunneler
(5460, 1, 16, '8876'), -- Centipaar Sandreaver
(5709, 1, 16, '8876'), -- Shade of Eranikus
(6005, 1, 16, '8876'), -- Shadowsworn Thug
(6140, 1, 16, '8876'), -- Hetaera
(6210, 1, 16, '8876'), -- Caverndeep Pillager
(6348, 1, 16, '8876'), -- Wavethrasher
(7039, 1, 16, '8876'), -- War Reaver
(7101, 1, 16, '8876'), -- Warpwood Shredder
(7268, 1, 16, '8876'), -- Sandfury Guardian
(7320, 1, 16, '8876'), -- Stonevault Mauler
(7369, 1, 16, '8876'), -- Deadwind Brute
(7446, 1, 16, '8876'), -- Rabid Shardtooth
(7665, 1, 16, '8876'), -- Grol the Destroyer
(8138, 1, 16, '8876'), -- Sul'lithuz Broodling
(8205, 1, 16, '8876'), -- Haarka the Ravenous
(8208, 1, 16, '8876'), -- Murderous Blisterpaw
(8299, 1, 16, '8876'), -- Spiteflayer
(8718, 1, 16, '8876'), -- Manahound
(8961, 1, 16, '8876'), -- Felpaw Ravager
(8981, 1, 16, '8876'), -- Malfunctioning Reaver
(9176, 1, 0, '8876'), -- Gorlop
(9267, 1, 16, '8876'), -- Smolderthorn Axe Thrower
(9777, 1, 16, '8876'), -- Flamekin Sprite
(10182, 1, 16, '8876'), -- Rokaro
(10198, 1, 0, '8876'), -- Kashoch the Reaver
(10220, 1, 16, '8876'), -- Halycon
(10407, 1, 16, '8876 18950'), -- Fleshflayer Ghoul
(10414, 1, 16, '8876 16345'), -- Patchwork Horror
(10488, 1, 16, '8876'), -- Risen Construct
(10639, 1, 16, '8876'), -- Rorgish Jowl
(10836, 1, 16, '8876'), -- Farmer Dalson
(10946, 1, 16, '8876 17467'), -- Horgus the Ravager
(10991, 1, 16, '8876'), -- Wildpaw Gnoll
(11043, 1, 16, '8876'), -- Crimson Monk
(11357, 1, 16, '8876'), -- Son of Hakkar
(11372, 1, 16, '8876'), -- Razzashi Adder
(11442, 1, 16, '8876'), -- Gordok Mauler
(11465, 1, 0, '8876'), -- Warpwood Stomper
(11486, 1, 0, '8876'), -- Prince Tortheldrin
(11677, 1, 16, '8876'), -- Taskmaster Snivvle
(11714, 1, 16, '8876'), -- Marosh the Devious
(12099, 1, 16, '8876 15733'), -- Firesworn
(12201, 1, 16, '8876'), -- Princess Theradras
(13088, 1, 16, '8876'), -- Masha Swiftcut
(13285, 1, 0, '8876 16428 25640'), -- Death Lash
(14446, 1, 16, '8876'), -- Fingat
(14821, 1, 16, '8876'), -- Razzashi Raptor
(15101, 1, 16, '8876'), -- Zulian Prowler
(15114, 1, 16, '8876'), -- Gahz'ranka
(15207, 1, 16, '8876'), -- The Duke of Fathoms
(15335, 1, 16, '8876 18950'), -- Flesh Hunter
(16593, 1, 16, '8876'), -- Shattered Hand Brawler
(16596, 1, 0, '8876 18950'), -- Greater Fleshbeast
(17397, 1, 16, '8876'), -- Shadowmoon Adept
(18105, 1, 16, '8876'), -- Ghaz'an
(18135, 1, 16, '8876'), -- Marsh Walker
(18214, 1, 16, '8876'), -- Fenclaw Thrasher
(18281, 1, 16, '8876 33070'), -- Boglash
(18631, 1, 16, '8876'); -- Cabal Cultist

INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `emote`, `auras`) VALUES
(14882, 1, 16, 10, '8876'); -- Atal'ai Mistress

-- Retribution Aura (Rank 1) 8990
DELETE FROM `creature_template_addon` WHERE `entry` IN (1846,10419,10424,10425,12128);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(1846, 1, 16, '8990'), -- High Protector Lorik
(10419, 1, 16, ''), -- Crimson Conjuror
(10424, 1, 16, '8990'), -- Crimson Gallant
(10425, 1, 16, ''), -- Crimson Battle Mage
(12128, 1, 16, '8990'); -- Crimson Elite

-- Deadly Poison 10022
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (23881));
DELETE FROM `creature_template_addon` WHERE `entry` IN (574,1822,2601,3068,4118,4850,10359,10641,11551,23881);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(574, 1, 16, '10022'), -- Naraxis
(1822, 1, 16, '10022'), -- Venom Mist Lurker
(2601, 1, 16, '10022'), -- Foulbelly -- Serverside for 3106
(3068, 1, 16, '10022'), -- Mazzranache
(4118, 1, 16, '10022'), -- Venomous Cloud Serpent
(4850, 1, 16, '10022 22766'), -- Stonevault Cave Lurker
(10359, 1, 16, '10022'), -- Sri'skulk
(10641, 1, 16, '10022'), -- Branch Snapper
(11551, 1, 16, '10022'), -- Necrofiend
(23881, 1, 0, '10022'); -- Apothecary Cylla

-- Poison Proc 11919
DELETE FROM `creature_template_addon` WHERE `entry` IN (471,846,14266);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(471, 1, 16, '11919'), -- Mother Fang
(846, 1, 16, '11919'), -- Rotten Ghoul
(14266, 1, 16, '11919'); -- Shanda the Spinner

-- Poison Proc 11959
UPDATE `creature_template_addon` SET `auras` = '11959' WHERE `entry` IN (30,43,99,1688,16350,16351,16352);

-- Disease Cloud 12187
DELETE FROM `creature_template_addon` WHERE `entry` IN (15195);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(15195, 1, 16, '12187'); -- Wickerman Guardian

-- Fire Shield 13377 (13376)
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (10119));
UPDATE `creature_template_addon` SET `auras` = '13377' WHERE `entry` IN (10119,11457,11469);

-- Putrid Bile 16574
UPDATE `creature_template_addon` SET `auras` = '16574' WHERE `entry` IN (8534);

-- 16577 Disease Cloud
DELETE FROM `creature_template_addon` WHERE `entry` IN (10821);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(10821, 1, 16, '16577'); -- Hed'mush the Rotting

-- 16592 Shadowform
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (8553));
DELETE FROM `creature_template_addon` WHERE `entry` IN (8550,8553,10471,17147,18331,18391,18637,20451,20619);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(8550, 1, 16, '16592'), -- Shadowmage
(8553, 1, 16, '16592'), -- Necromancer
(10471, 1, 16, '16592'), -- Scholomance Acolyte
(17147, 1, 16, '16592'), -- Kil'sorrow Cultist
(18331, 1, 16, '16592'), -- Ethereal Darkcaster
(18391, 1, 16, '16592'), -- Giselda the Crone
(18637, 1, 16, '16592'), -- Cabal Shadow Priest
(20451, 1, 16, '16592'), -- Subservient Flesh Beast
(20619, 1, 16, '16592'); -- Ethereum Relay

-- Sneak (Rank 1) 22766
DELETE FROM `creature_template_addon` WHERE `entry` IN (215,684,1040,2242,2586,2588,2731,3655,3763,4834,5615,8218,10318,10387,10516,11456,11723,11730,15067,16170,18982,20025,20297,20714,20998);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(215, 1, 0, '22766'), -- Defias Night Runner
(684, 1, 0, '22766'), -- Shadowmaw Panther
(1040, 1, 16, '22766'), -- Fen Creeper
(2242, 1, 16, '22766'), -- Syndicate Spy
(2586, 1, 16, '22766'), -- Syndicate Highwayman
(2588, 1, 16, '22766'), -- Syndicate Prowler
(2731, 1, 16, '22766'), -- Ridge Stalker
(3655, 1, 16, '22766'), -- Mad Magglish
(3763, 1, 16, '22766'), -- Felmusk Shadowstalker
(4834, 1, 16, '22766'), -- Theramore Infiltrator
(5615, 1, 16, '22766'), -- Wastewander Rogue
(8218, 1, 16, '22766'), -- Witherheart the Stalker
(10318, 1, 16, '22766'), -- Blackhand Assassin
(10387, 1, 16, '22766'), -- Vengeful Phantom
(10516, 1, 16, '22766'), -- The Unforgiven
(11456, 1, 16, '22766'), -- Wildspawn Shadowstalker
(11723, 1, 16, '22766'), -- Hive'Ashi Sandstalker
(11730, 1, 16, '22766'), -- Hive'Regal Ambusher
(15067, 1, 16, '22766'), -- Zulian Stalker
(16170, 1, 16, '22766 29291'), -- Coldmist Stalker
(18982, 1, 0, '18950 22766'), -- Sable Jaguar
(20025, 1, 16, '18950 22766 34712'), -- Sable Jaguar Specimen
(20297, 0, 0, '22766'), -- Nova Terra
(20714, 1, 0, '3616 7939 22766'), -- Ridgespine Stalker
(20998, 1, 16, '7939 22766'); -- Ridgespine Horror

-- Sneak (Rank 1) 7939
DELETE FROM `creature_template_addon` WHERE `entry` IN (16928,18116);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(16928, 1, 16, '7939 32732'), -- Stonescythe Ambusher
(18116, 1, 16, '7939'); -- Daggerfen Assassin

-- Stealth 30831
DELETE FROM `creature_template_addon` WHERE `entry` IN (938,1713,2522,3279,3457,3634,3770,4126,4789,8538,8539,17885,19843);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(938, 1, 16, '30831'), -- Kurzen Commando
(1713, 1, 16, '30831'), -- Elder Shadowmaw Panther
(2522, 1, 16, '12787 30831'), -- Jaguero Stalker
(3279, 1, 16, '30831'), -- Witchwing Ambusher
(3457, 1, 16, '30831'), -- Razormane Stalker
(3634, 1, 16, '30831'), -- Deviate Stalker
(3770, 1, 16, '30831'), -- Bleakheart Shadowstalker
(4126, 1, 16, '30831'), -- Crag Stalker
(4789, 1, 16, '30831'), -- Fallenroot Rogue
(8538, 1, 16, '8279 30831'), -- Unseen Servant
(8539, 1, 16, '8279 30831'), -- Eyeless Watcher
(17885, 1, 16, '30831'), -- Earthbinder Rayge
(19843, 1, 16, '30831'); -- Nethervine Trickster

-- Stealth 34189
DELETE FROM `creature_template_addon` WHERE `entry` IN (2175,23191,23374);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(2175, 1, 16, '30831'), -- Shadowclaw
(23191, 1, 16, '30831'), -- Akama
(23374, 1, 16, '30831'); -- Ashtongue Stalker

-- 32900 Bone Shards Proc
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 10816);
DELETE FROM `creature_template_addon` WHERE `entry` IN (10816,16805,18480);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(10816, 1, 16, '32900'), -- Wandering Skeleton
(16805, 1, 16, '32900'), -- Broken Skeleton
(18480, 1, 0, '32423 29266 32900'); -- Broken Corpse

-- Remove Stilled Aura 14775 from Stitched Horror 8543 - just breaks movement animation
UPDATE `creature_template_addon` SET `auras` = '' WHERE `entry` = 8543;

-- Thrash 12787
DELETE FROM `creature_template_addon` WHERE `entry` IN (519,639,2681,4390,4493,5434,5435,5977,6349,7234,8216,10808,10925,12100,12123,12124,12138,12940,14282,14283,15305,17475,19299,21271);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(519, 1, 16, '12787'), -- Slark
(639, 1, 16, '12787'), -- Edwin VanCleef
(2681, 1, 16, '12787'), -- Vilebranch Raiding Wolf
(4390, 1, 16, '12787'), -- Elder Murk Thresher
(4493, 1, 16, '12787'), -- Scarlet Avenger
(5434, 1, 16, '12787'), -- Coral Shark
(5435, 1, 16, '12787'), -- Sand Shark
(5977, 1, 16, '12787'), -- Dreadmaul Mauler
(6349, 1, 16, '12787'), -- Great Wavethrasher
(7234, 1, 16, '12787'), -- Ferocitas the Dream Eater
(8216, 1, 16, '12787'), -- Retherokk the Berserker
(10808, 1, 0, '12787'), -- Timmy the Cruel
(10925, 1, 16, '12787'), -- Rotting Worm
(12100, 1, 16, '12787'), -- Lava Reaver
(12123, 1, 16, '12787'), -- Reef Shark
(12124, 1, 16, '12787'), -- Great Shark
(12138, 1, 16, '12787'), -- Lunaclaw
(12940, 1, 16, '12787'), -- Vorsha the Lasher
(14282, 1, 16, '12787 18950'), -- Frostwolf Bloodhound
(14283, 1, 16, '12787 18950'), -- Stormpike Owl
(15305, 1, 16, '12787'), -- Lord Skwol
(17475, 1, 16, '12787'), -- Murgurgula
(19299, 1, 16, '12787 15088'), -- Deathwhisperer
(21271, 1, 16, '12787'); -- Infinity Blades

-- Stealth 32199
DELETE FROM `creature_template_addon` WHERE `entry` IN (16179,18297,23090);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(16179, 1, 16, '32199'), -- Hyakiss the Lurker
(18297, 1, 16, '32199 18950'), -- Gankly Rottenfist
(23090, 0, 0, '32199 18950'); -- Troll Roof Stalker

-- 30991 Stealth
DELETE FROM `creature_template_addon` WHERE `entry` IN (9040,17491,17695,18636);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(9040, 1, 16, '32199'), -- Dope'rel
(17491, 1, 16, '32199'), -- Laughing Skull Rogue
(17695, 1, 16, '32199'), -- Shattered Hand Assassin
(18636, 1, 16, '32199'); -- Cabal Assassin

-- Devotion Aura 1032
UPDATE `creature_template_addon` SET `auras` = '1032' WHERE `entry` = 8382; -- Patrick Mills

-- Sunwell Radiance 45769
DELETE FROM `creature_template_addon` WHERE `entry` IN (25363,25367,25368,25369,25370,25371,25372,25373,25483,25484,25485,25486,25506,25507,25508,25509,25591,25592,25593,25595,25597,25598,25599,25744,25772,25798,25799,25824,25837,25851,25867,25948,26101);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(25363, 1, 16, '45769'), -- Sunblade Cabalist
(25367, 1, 16, '45769'), -- Sunblade Arch Mage
(25368, 1, 16, '45769'), -- Sunblade Slayer
(25369, 1, 16, '45769'), -- Sunblade Vindicator
(25370, 1, 16, '45769'), -- Sunblade Dusk Priest
(25371, 1, 16, '45769'), -- Sunblade Dawn Priest
(25372, 0, 0, '45769 18950'), -- Sunblade Scout
(25373, 1, 16, '45769'), -- Shadowsword Soulbinder
(25483, 1, 16, '45769'), -- Shadowsword Manafiend
(25484, 1, 16, '45769 16380'), -- Shadowsword Assassin
(25485, 1, 16, '45769'), -- Shadowsword Deathbringer
(25486, 1, 16, '45769 18950'), -- Shadowsword Vanquisher
(25506, 1, 16, '45769'), -- Shadowsword Lifeshaper
(25507, 0, 0, '45769 18950'), -- Sunblade Protector
(25508, 1, 16, '45769'), -- Shadowsword Guardian
(25509, 1, 16, '45769'), -- Priestess of Torment
(25591, 1, 16, '45769'), -- Painbringer
(25592, 1, 16, '45769'), -- Doomfire Destroyer
(25593, 1, 16, '45769'), -- Apocalypse Guard
(25595, 1, 16, '45769'), -- Chaos Gazer
(25597, 1, 16, '45769'), -- Oblivion Mage
(25598, 1, 16, '45769'), -- Volatile Felfire Fiend
(25599, 1, 16, '45769'), -- Cataclysm Hound
(25744, 0, 0, '45769 45934'), -- Dark Fiend
(25772, 1, 16, '45769'), -- Void Sentinal
(25798, 1, 16, '45769'), -- Shadowsword Berserker
(25799, 1, 16, '45769'), -- Shadowsword Fury Mage
(25824, 1, 16, '45769'), -- Void Spawn
(25837, 1, 16, '45769'), -- Shadowsword Commander
(25851, 1, 16, '45769'), -- Volatile Fiend
(25867, 1, 16, '45769'), -- Sunblade Dragonhawk
(25948, 1, 16, '45769'), -- Doomfire Shard
(26101, 1, 16, '45769'); -- Fire Fiend

-- Immolate 8981
DELETE FROM `creature_template_addon` WHERE `entry` IN (3983,5430);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(3983, 1, 16, '8981'), -- Interrogator Vishas
(5430, 1, 16, '8981'); -- Searing Roc

-- Sand Storm 10092
DELETE FROM `creature_template_addon` WHERE `entry` = 7226;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(7226, 1, 16, '10092'); -- Sand Storm

-- Stoned 10255
DELETE FROM `creature_template_addon` WHERE `entry` IN (4857,7076,7077,7309,10120);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(4857, 1, 16, '10255'), -- Stone Keeper
(7076, 1, 16, '10255'), -- Earthen Guardian
(7077, 1, 16, '10255'), -- Earthen Hallshaper
(7309, 1, 16, '10255'), -- Earthen Custodian
(10120, 1, 16, '10255'); -- Vault Warder

-- Virulent Poison Proc 12254
DELETE FROM `creature_template_addon` WHERE `entry` = 10081;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(10081, 1, 16, '12254'); -- Dustwraith

-- Wracking Pains Proc 13616
UPDATE `creature_template_addon` SET `auras` = '13616' WHERE `entry` = 8912; -- Twilight's Hammer Torturer

-- Blazerunner's Aura 13913
UPDATE `creature_template_addon` SET `auras` = '13913' WHERE `entry` = 9376; -- Blazerunner

-- Spikes 14104
UPDATE `creature_template_addon` SET `auras` = '14104' WHERE `entry` = 13599; -- Stolid Snapjaw

-- Venomhide Poison 14108
UPDATE `creature_template_addon` SET `auras` = '14108' WHERE `entry` = 6508; -- Venomhide Ravasaur

-- Bloodpetal Poison Proc 14111
UPDATE `creature_template_addon` SET `auras` = '14111' WHERE `entry` IN (
6509, -- Bloodpetal Lasher
6510, -- Bloodpetal Flayer
6511, -- Bloodpetal Thresher
6512); -- Bloodpetal Trapper

-- Sticky Tar 14178
UPDATE `creature_template_addon` SET `auras` = '14178' WHERE `entry` IN (
6517, -- Tar Beast
6518, -- Tar Lurker
6519, -- Tar Lord
6527); -- Tar Creeper

-- Drunken Stupor 14869
UPDATE `creature_addon` SET `auras` = '14869' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 9554);
UPDATE `creature_template_addon` SET `auras` = '14869' WHERE `entry` = 9554; -- Hammered Patron

-- Blackout (Rank 1) 15268
UPDATE `creature_template_addon` SET `auras` = '15268' WHERE `entry` = 15215; -- Mistress Natalia Mar'alith

-- Immolate 15506
UPDATE `creature_template_addon` SET `auras` = '15506' WHERE `entry` = 10430; -- The Beast

-- Immolate 15733
UPDATE `creature_template_addon` SET `auras` = '15733' WHERE `entry` = 15201; -- Twilight Flamereaver

-- Ice Blast 15876
UPDATE `creature_template_addon` SET `auras` = '15876' WHERE `entry` IN (
7458, -- Ice Thistle Yeti
7459, -- Ice Thistle Matriarch
7460); -- Ice Thistle Patriarch

-- Cadaver Worms 16142
UPDATE `creature_template_addon` SET `auras` = '16142 18950' WHERE `entry` IN (
10381, -- Ravaged Cadaver
10382); -- Mangled Cadaver

-- Greater Invisibility 16380
DELETE FROM `creature_template_addon` WHERE `entry` IN (10411,13437,20882);
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(10411, 1, 16, '16380'), -- Eye of Naxxramas
(13437, 1, 16, '16380'), -- Wing Commander Ichman
(20882, 1, 16, '16380'); -- Skulking Witch

-- Double Attack 18943
UPDATE `creature_template_addon` SET `auras` = '18943' WHERE `entry` IN (11658,11659); -- Molten Giant/Destroyer

-- Invisibility and Stealth Detection 18950
UPDATE `creature_addon` SET `auras` = '18950' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (14378,16842,17280,19355,19444));
DELETE FROM `creature_addon` WHERE `guid` IN (46216,68026,69058); -- now identical with creature_template_addon

-- Deadly Poison 21788
UPDATE `creature_template_addon` SET `auras` = '21788' WHERE `entry` = 14472; -- Gretheer

-- Radiation 21862
UPDATE `creature_template_addon` SET `auras` = '21862' WHERE `entry` IN (6218,6220,6329); -- Irradiated Slime/Horror/Pillager
DELETE FROM `creature_template_addon` WHERE `entry` = 6213;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(6213, 1, 16, '21862'); -- Irradiated Invader

-- Toxic Gas 28370
UPDATE `creature_template_addon` SET `auras` = '28370' WHERE `entry` = 16400; -- Toxic Tunnel

-- Damage Immunity: Arcane 34304
UPDATE `creature_template_addon` SET `auras` = '34304' WHERE `entry` IN (10662,10663); -- Spellmaw/Manaclaw
UPDATE `creature_template_addon` SET `auras` = '8279 34304' WHERE `entry` = 10664; -- Scryer
DELETE FROM `creature_template_addon` WHERE `entry` = 10202;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(10202, 1, 16, '34304'); -- Azurous

-- Cyrukh Fire Kit 36329
DELETE FROM `creature_template_addon` WHERE `entry` = 21181;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(21181, 1, 16, '36329'); -- Cyrukh the Firelord

-- Aura of Fear 40453
DELETE FROM `creature_template_addon` WHERE `entry` = 22304;
INSERT INTO `creature_template_addon` (`entry`, `b2_0_sheath`, `b2_1_flags`, `auras`) VALUES
(22304, 1, 16, '40453'); -- Mo'arg Extractor

-- Double Attack 19194
-- Double Attack 19817
-- Double Attack 19818

