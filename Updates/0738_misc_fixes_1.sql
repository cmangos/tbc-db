-- Add CREATURE_EXTRA_FLAG_ACTIVE for some far moving/event related npcs due to traveldistance/renderdistance/activity
-- https://www.wowhead.com/tbc/npc=22140/toxic-sporebat
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|4096 WHERE `entry` IN (
-- SHH Gauntlet
17461,20581, -- Shattered Hand Blood Guard
20923,20993, -- Blood Guard Porung
17427,20579, -- Shattered Hand Archer
17462,20595, -- Shattered Hand Zealot
17687, -- Flame Arrow
17693,20592, -- Shattered Hand Scout

-- Murmur RP Event
18708,20657, -- Murmur
18632,20642, -- Cabal Executioner
18634,20648, -- Cabal Summoner
18639,20647, -- Cabal Spellbinder

-- BM Rifts
17838, -- Time Rift
21104,22170,21148,22171, -- Rift Keeper
17839,20744,21140,22172, -- Rift Lord
17879,20738, -- Chrono Lord Deja
21697,21712, -- Infinite Chrono-Lord
17880,20745, -- Temporus
21698,22167, -- Infinite Timereaver
17881,20737, -- Aeonus

-- Distance
15690, -- Prince Malchezaar
17644, -- Infernal Target
17645, -- Infernal Relay
21214, -- Fathom-Lord Karathress
21964, -- Fathom-Guard Caribdis
21965, -- Fathom-Guard Tidalvess
21966, -- Fathom-Guard Sharkkis
22091, -- Spitfire Totem
21213, -- Morogrim Tidewalker
21920, -- Tidewalker Lurker
21212, -- Lady Vashj
22009, -- Tainted Elemental
21958, -- Enchanted Elemental
22055, -- Coilfang Elite
22056, -- Coilfang Strider
22140, -- Toxic Spore Bat
19514, -- Al'ar
19622, -- Kael'thas Sunstrider
20064, -- Thaladred the Darkener
20060, -- Lord Sanguinar
20062, -- Grand Astromancer Capernian
20063, -- Master Engineer Telonicus
21268, -- Netherstrand Longbow
21269, -- Devastation
21270, -- Cosmic Infuser
21271, -- Infinity Blades
21272, -- Warp Slicer
21273, -- Phaseshift Bulwark
21274, -- Staff of Disintegration
-- 17895, -- Ghoul (these were commented for some "good" reason)
-- 17897, -- Crypt Fiend
-- 17898, -- Abomination
-- 17899, -- Shadowy Necromancer
-- 17905, -- Banshee
17906, -- Gargoyle
17907, -- Frost Wyrm
17908, -- Giant Infernal
-- 17916, -- Fel Stalker
17767, -- Rage Winterchill
17808, -- Anetheron
17888, -- Kaz'rogal
17842, -- Azgalor
17852, -- Thrall
17968, -- Archimonde
18242, -- Infernal Relay (Hyjal)
21075, -- Infernal Target (Hyjal)
22418, -- Archimonde Channel Target
22855, -- Illidari Nightlord
22878, -- Aqueous Lord
22939, -- Temple Concubine
22954, -- Illidari Fearbringer
22955, -- Charming Courtesan
22956, -- Sister of Pain
22957, -- Priestess of Dementia
22959, -- Spellbound Attendant
22960, -- Dragonmaw Wyrmcaller
22964, -- Sister of Pleasure
22965, -- Enslaved Servant
23030, -- Dragonmaw Sky Stalker
23047, -- Shadowmoon Soldier
23049, -- Shadowmoon Weapon Master
23196, -- Bonechewer Behemoth
23222, -- Bonechewer Brawler
23239, -- Bonechewer Combatant
23330, -- Dragonmaw Wind Reaver
23374, -- Ashtongue Stalker
23394, -- Promenade Sentinel
23399, -- Suffering Soul Fragment
23401, -- Hungering Soul Fragment
20039 -- Phoenix-Hawk
);

