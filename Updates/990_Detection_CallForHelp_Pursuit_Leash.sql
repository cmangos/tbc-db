-- ============================================================================================================================================================
-- creature_template which need adjustments to their Detect, CallForHelp, Pursuit or Leash
-- ============================================================================================================================================================

-- =====================================================================================================
-- Map: 0 Eastern Kingdoms / 1 Kalimdor
-- =====================================================================================================

-- "Starving"
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=213; -- Starving Dire Wolf
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=1133; -- Starving Winter Wolf
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=2384; -- Starving Mountain Lion
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=2829; -- Starving Buzzard
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=4689; -- Starving Bonepaw
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=5425; -- Starving Blisterpaw
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=5984; -- Starving Snickerfang

-- =====================================================================================================
-- Map: 269 The Black Morass
-- =====================================================================================================


-- =====================================================================================================
-- Map: 530 Outland
-- =====================================================================================================

-- "Starving"
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=16347; -- Starving Ghostclaw
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=16879; -- Starving Helboar
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=18125; -- Starving Fungal Giant
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=19519; -- Starving Bog Lord

-- Leash for quest=11079 npcs
UPDATE `creature_template` SET `Detection`=30, `Leash`=80 WHERE `entry`=22281; -- Galvanoth
UPDATE `creature_template` SET `Detection`=30, `Leash`=80 WHERE `entry`=23353; -- Braxxus
UPDATE `creature_template` SET `Detection`=30, `Leash`=80 WHERE `entry`=23355; -- Zarcsin
UPDATE `creature_template` SET `Detection`=30, `Leash`=80 WHERE `entry`=23354; -- Mo'arg Incinerator

-- Throne of Kil'jaeden
UPDATE `creature_template` SET `Detection`=40 WHERE `entry`=22295; -- Deathforge Automaton
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=22297; -- Throne-Guard Highlord
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=22301; -- Throne-Guard Sentinel
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=22302; -- Throne-Guard Champion
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=22303; -- Throne Hound

-- Zuluhed the Whacked - Add
UPDATE `creature_template` SET `Detection`=60 WHERE `entry`=22338; -- Arcubus Destroyer

-- =====================================================================================================
-- Map: 532 Karazhan
-- =====================================================================================================

UPDATE `creature_template` SET `Detection`=25 WHERE `entry`=15687; -- Moroes

-- based on retail test (with level 100 character)
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=15691; -- The Curator
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=15690; -- Prince Malchezaar

UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=16485; -- Arcane Watchman
UPDATE `creature_template` SET `Detection`=30 WHERE `entry`=16504; -- Arcane Protector

UPDATE `creature_template` SET `Detection`=40 WHERE `entry`=15689; -- Netherspite

-- =====================================================================================================
-- Map: 534 Hyjal Summit
-- =====================================================================================================


-- =====================================================================================================
-- Map: 540 The Shattered Halls
-- =====================================================================================================


-- =====================================================================================================
-- Map: 542 The Blood Furnace
-- =====================================================================================================


-- =====================================================================================================
-- Map: 543 Hellfire Ramparts
-- =====================================================================================================
UPDATE `creature_template` SET `Detection`=30 WHERE `entry` IN (17308,18433); -- Omor the Unscarred

-- =====================================================================================================
-- Map: 544 Magtheridon's Lair
-- =====================================================================================================


-- =====================================================================================================
-- Map: 545 The Steamvault
-- =====================================================================================================
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` IN (21694,21914); -- Bog Overlord

-- =====================================================================================================
-- Map: 546 The Underbog
-- =====================================================================================================
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` IN (17723,20164); -- Bog Giant
UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` IN (17734,20187); -- Underbog Lord

-- =====================================================================================================
-- Map: 547 The Slave Pens
-- =====================================================================================================


-- =====================================================================================================
-- Map: 548 Serpentshrine Cavern
-- =====================================================================================================

-- Patch 2.1 notes: "Slight changes on most creatures have been made including: aggro range changed to 30 yards detect, 15 yard call for help and hitpoints reduced. (Boss specific adds are not affected by this hitpoint reduction.)"
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21863; -- Serpentshrine Lurker
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21806; -- Greyheart Spellbinder
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21339; -- Coilfang Hate-Screamer
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21301; -- Coilfang Shatterer
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21299; -- Coilfang Fathom-Witch
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21298; -- Coilfang Serpentguard
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21263; -- Greyheart Technician
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21251; -- Underbog Colossus
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21246; -- Serpentshrine Sporebat
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21232; -- Greyheart Skulker
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21231; -- Greyheart Shield-Bearer
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21230; -- Greyheart Nether-Mage
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21229; -- Greyheart Tidecaller
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21228; -- Tidewalker Hydromancer
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21227; -- Tidewalker Harpooner
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21226; -- Tidewalker Shaman
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21225; -- Tidewalker Warrior
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21224; -- Tidewalker Depth-Seer
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21221; -- Coilfang Beast-Tamer
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21220; -- Coilfang Priestess
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21218; -- Vashj'ir Honor Guard
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21508; -- Coilfang Frenzy
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21216; -- Hydross the Unstable
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21215; -- Leotheras the Blind
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21214; -- Fathom-Lord Karathress
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21966; -- Fathom-Guard Sharkkis
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21965; -- Fathom-Guard Tidalvess
UPDATE `creature_template` SET `Detection`=30, `CallForHelp`=15 WHERE `entry`=21964; -- Fathom-Guard Caribdis
UPDATE `creature_template` SET `Detection`=35, `CallForHelp`=15 WHERE `entry`=21213; -- Morogrim Tidewalker


-- =====================================================================================================
-- Map: 550 The Eye
-- =====================================================================================================
UPDATE `creature_template` SET `Detection`=42 WHERE `entry`=18805; -- High Astromancer Solarian
UPDATE `creature_template` SET `Detection`=50 WHERE `entry`=19516; -- Void Reaver

-- Trash
UPDATE `creature_template` SET `Detection`=28 WHERE `entry` IN (
20040, -- Crystalcore Devastator
20041, -- Crystalcore Sentinel
20042, -- Tempest-Smith
20052 -- Crystalcore Mechanic
);

-- Trash
UPDATE `creature_template` SET `Detection`=30 WHERE `entry` IN (
20031, -- Bloodwarder Legionnaire
20032, -- Bloodwarder Vindicator
20033, -- Astromancer
20034, -- Star Scryer
20035, -- Bloodwarder Marshal
20036, -- Bloodwarder Squire
20037, -- Tempest Falconer
20038, -- Phoenix-Hawk Hatchling
20039, -- Phoenix-Hawk
20043, -- Apprentice Star Scryer
20044, -- Novice Astromancer
20045, -- Nether Scryer
20046, -- Astromancer Lord
20047, -- Crimson Hand Battle Mage
20048, -- Crimson Hand Centurion
20049, -- Crimson Hand Blood Knight
20050 -- Crimson Hand Inquisitor
);

-- =====================================================================================================
-- Map: 552 The Arcatraz
-- =====================================================================================================

UPDATE `creature_template` SET `Detection`=25 WHERE `entry` IN (
20875,21604, -- Negaton Screamer
20873,21605, -- Negaton Warp-Master
20896,21596, -- Ethereum Slayer
20897,21597, -- Ethereum Wave-Caster
21702,22346, -- Ethereum Life-Binder
20901,21610, -- Sargeron Archer
20902,21611 -- Sargeron Hellcaller
);

UPDATE `creature_template` SET `Detection`=28 WHERE `entry` IN (
20879,21595, -- Eredar Soul-Eater
20880,21594, -- Eredar Deathbringer
20900,21621 -- Unchained Doombringer
);

UPDATE `creature_template` SET `Detection` = 30 WHERE `entry` IN (20898,21598); -- Gargantuan Abyssal

-- =====================================================================================================
-- Map: 553 The Botanica
-- =====================================================================================================


-- =====================================================================================================
-- Map: 554 The Mechanar
-- =====================================================================================================


-- =====================================================================================================
-- Map: 555 Shadow Labyrinth
-- =====================================================================================================
UPDATE `creature_template` SET `Detection` = 25 WHERE `entry` IN (18732,20653); -- Grandmaster Vorpil

-- =====================================================================================================
-- Map: 556 Sethekk Halls
-- =====================================================================================================
UPDATE `creature_template` SET `Detection`=35 WHERE `entry` IN (18472,20690); -- Darkweaver Syth (18472,20690)

-- =====================================================================================================
-- Map: 557 Mana-Tombs
-- =====================================================================================================


-- =====================================================================================================
-- Map: 558 Auchenai Crypts
-- =====================================================================================================


-- =====================================================================================================
-- Map: 560 Old Hillsbrad Foothills
-- =====================================================================================================


-- =====================================================================================================
-- Map: 564 Black Temple
-- =====================================================================================================

-- Trash
UPDATE `creature_template` SET `Detection`=30 WHERE `entry` IN (
22844, -- Ashtongue Battlelord
22845, -- Ashtongue Mystic
22846, -- Ashtongue Stormcaller
22847, -- Ashtongue Primalist
22848, -- Storm Fury
22849, -- Ashtongue Feral Spirit
22853, -- Illidari Defiler
22855, -- Illidari Nightlord
22869, -- Illidari Boneslicer
22873, -- Coilskar General
22874, -- Coilskar Harpooner
22875, -- Coilskar Sea-Caller
22876, -- Coilskar Soothsayer
22877, -- Coilskar Wrangler
22878, -- Aqueous Lord
22879, -- Shadowmoon Reaver
22880, -- Shadowmoon Champion
22881, -- Aqueous Surger
22882, -- Shadowmoon Deathshaper
22883, -- Aqueous Spawn
22884, -- Leviathan
22885, -- Dragon Turtle
22939, -- Temple Concubine
22945, -- Shadowmoon Blood Mage
22946, -- Shadowmoon War Hound
22953, -- Wrathbone Flayer
22954, -- Illidari Fearbringer
22955, -- Charming Courtesan
22956, -- Sister of Pain
22957, -- Priestess of Dementia
22959, -- Spellbound Attendant
22960, -- Dragonmaw Wyrmcaller
22962, -- Priestess of Delight
22963, -- Bonechewer Worker
22964, -- Sister of Pleasure
22965, -- Enslaved Servant
23018, -- Shadowmoon Houndmaster
23028, -- Bonechewer Taskmaster
23047, -- Shadowmoon Soldier
23049, -- Shadowmoon Weapon Master
23147, -- Shadowmoon Grunt
23172, -- Hand of Gorefiend
23196, -- Bonechewer Behemoth
23222, -- Bonechewer Brawler
23223, -- Bonechewer Spectator
23232, -- Mutant War Hound
23235, -- Bonechewer Blade Fury
23236, -- Bonechewer Shield Deciple
23237, -- Bonechewer Blood Prophet
23239, -- Bonechewer Combatant
23337, -- Illidari Centurion
23339, -- Illidari Heartseeker
23374, -- Ashtongue Stalker
23394, -- Promenade Sentinel
23397, -- Illidari Blood Lord
23398, -- Angered Soul Fragment
23399, -- Suffering Soul Fragment
23400, -- Illidari Archon
23401, -- Hungering Soul Fragment
23402, -- Illidari Battle-Mage
23403, -- Illidari Assassin
23436 -- Image of Dementia
);

UPDATE `creature_template` SET `Detection`=40 WHERE `entry` IN (
23030, -- Dragonmaw Sky Stalker
23330 -- Dragonmaw Wind Reaver
);


-- =====================================================================================================
-- Map: 565 Gruul's Lair
-- =====================================================================================================
UPDATE `creature_template` SET `Detection`=35 WHERE `entry`=19044; -- Gruul the Dragonkiller

-- =====================================================================================================
-- Map: 568 Zul'Aman
-- =====================================================================================================

UPDATE `creature_template` SET `Detection`=25 WHERE `entry` IN (
23574, -- Akil'zon
23576, -- Nalorakk
23578 -- Jan'alai
);

UPDATE `creature_template` SET `Detection`=30 WHERE `entry` IN (
24239, -- Hex Lord Malacrass
24240, -- Alyson Antille
24241, -- Thurg
24242, -- Slither
24243, -- Lord Raadan
24244, -- Gazakroth
24245, -- Fenstalker
24246, -- Darkheart
24247, -- Koragg
23863 -- Zul'jin
);

UPDATE `creature_template` SET `Detection`=35 WHERE `entry` = 23577; -- Halazzi

-- =====================================================================================================
-- Map: 580 Sunwell Plateau
-- =====================================================================================================

UPDATE `creature_template` SET `Detection`=7 WHERE `entry` = 25507; -- Sunblade Protector (Inactive ~Melee Range, else with Movement/after first Boss 25)
UPDATE `creature_template` SET `Detection`=40 WHERE `entry` = 25508; -- Shadowsword Guardian

UPDATE `creature_template` SET `Detection`=25 WHERE `entry` IN (
25367, -- Sunblade Arch Mage
25368, -- Sunblade Slayer
25369, -- Sunblade Vindicator
25370, -- Sunblade Dusk Priest
25371, -- Sunblade Dawn Priest
25372, -- Sunblade Scout
25867 -- Sunblade Dragonhawk
);

UPDATE `creature_template` SET `Detection`=30 WHERE `entry` IN (
25373, -- Shadowsword Soulbinder
25483, -- Shadowsword Manafiend
25484, -- Shadowsword Assassin
25485, -- Shadowsword Deathbringer
25486, -- Shadowsword Vanquisher
25506, -- Shadowsword Lifeshaper
25509, -- Priestess of Torment
25588, -- Hand of the Deceiver
25591, -- Painbringer
25592, -- Doomfire Destroyer
25593, -- Apocalypse Guard
25595, -- Chaos Gazer
25597, -- Oblivion Mage
25599, -- Cataclysm Hound
25837, -- Shadowsword Commander
25851, -- Volatile Fiend
26101 -- Fire Fiend
);


-- =====================================================================================================
-- Map: 585 Magisters' Terrace
-- =====================================================================================================

