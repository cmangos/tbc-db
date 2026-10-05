-- Port per-zone area fishing requirements to skill_fishing_base_level
-- Part of https://github.com/cmangos/mangos-tbc/pull/873
-- https://github.com/cmangos/mangos-tbc/commit/9b835597000ed49db3c4f4542c0a7d4ca87fcca7

-- https://wowpedia.fandom.com/wiki/Patch_3.1.0 - You can now fish anywhere, regardless of skill. Every catch has the potential for fishing skill gains, but you are likely to catch worthless junk in areas that are too difficult for your skill.

-- https://www.curseforge.com/wow/addons/angler-atlas - Data.lua
-- https://www.curseforge.com/wow/addons/anglers-atlas - DataOutland.lua
-- https://www.warcrafttavern.com/wow-classic/guides/fishing-1-300/ - confirms the dungeons
-- Trinitycore uses "WoWWiki's table once its 95-point grace band comes off" so their values are +95, can be used for junk filtering implementation
-- Some ø values were saved by zone fallback from area value
DELETE FROM `skill_fishing_base_level` WHERE `entry` IN (19,25,718,719,1497,796,16,1477,1583,1584,2717,2557,2279,3487,3557,3479,2366,2367,3606,3521,3655,3659,3607,3715,3716,3717,3905,3518,3805,4075,4131,3703,3653,3656,3720,3519,3679,3621,3680,3690,3691,3692,3693,3975);
INSERT INTO `skill_fishing_base_level` (`entry`, `skill`) VALUES
-- vanilla brackets - 0, 55, 130, 205, 330
(19, 330), -- ZG (Outside)(TC)
(25, 330), -- Blackrock Mountain (Outside)(TC)
(718, -20), -- Wailing Caverns (-20)
(719, -20), -- Blackfathom Deeps (-20)
(1497, -20), -- Undercity (missing in vmangos, fallback 85)
(796, 130), -- Scarlet Monastery (130)(205 too high take guide value)
(16, 205), -- Azshara (old 205)(new 330) - coast is 330 so i think the base level of 205 is correct see wpl 205 too
(1477, 205), -- The Temple of Atal’Hakkar (ø)(TC)
(1583, 330), -- Blackrock Spire (ø)(TC)
(1584, 330), -- Blackrock Depths (ø)(TC)
(2717, 330), -- Molten Core (ø)(TC)
-- confirmed by https://www.reddit.com/r/classicwow/comments/cx6mv6/is_there_a_list_of_the_minimum_fishing_skill/
(2557, 330), -- Dire Maul (ø)(330)
(2279, 330), -- Stratholme (ø)
-- TBC+ - tbc brackets - 305, 355, 380, 430
(3487, -20), -- Silvermoon City (ø)
(3557, -20), -- The Exodar (ø)
(3479, -70), -- The Veiled Sea (ø)(TC)
(2366, 205), -- The Black Morass (ø)(fallback value was 430)
(2367, 205), -- Old Hillsbrad Foothills (ø)(fallback value was 430)
(3606, 330), -- Hyjal Summit (ø)(fallback value was 430)
(3521, 305), -- Zangarmarsh (305)
(3655, 305), -- Umbrafen Lake (ø, fallback was zangarmarsh see above)
(3659, 305), -- The Lagoon (ø, fallback was zangarmarsh see above)
(3607, 305), -- Serpentshrine Cavern (300)(fallback value was 430 - needed to fish lurker, but that is probably set in the fish go)
(3715, 305), -- Steamvault (ø)(fallback value was 430)
(3716, 305), -- The Underbog (ø)(fallback value was 430)
(3717, 305), -- The Slave Pens (ø)(fallback value was 430)
(3905, 305), -- Coilfang Reservoir (ø)(TC)
-- Two outside sources put Nagrand at 355 -- Wowhead's TBC guide directly, and
-- WoWWiki's table once its 95-point grace band comes off -- and the same
-- subtraction lands three other Outland numbers exactly right, so the case
-- against 380 looked strong. It was wrong, and the addon's own journal could
-- not settle it either way: those sessions were fished at an effective 395
-- (the 375 cap plus a +20 pole), which clears 380 and 355 alike.
(3518, 355), -- Nagrand (380)
(3805, 355), -- Zul’Aman (ø)(fallback value was 430)
(4075, 355), -- Sunwell Plateau (ø)(fallback value was 430)
(4131, 355), -- Magisters’ Terrace (ø)(fallback value was 430)
(3703, 355), -- Shattrath City (ø)
(3653, 355), -- Serpent Lake (355)
(3656, 355), -- Marshlight Lake (355)
(3720, 355), -- Twin Spire Ruins (ø)
(3519, 355), -- Terokkar Forest (355)(380) but that's wrong see DataOutland.lua
(3679, 430), -- Skettis (ø)(405) - Setting to 430 as per bracket system
(3621, 430), -- Lake Sunspring (395)
(3680, 430), -- Blackwind Valley (ø)
(3690, 430), -- Blackwind Lake (405)
(3691, 430), -- Lake Ere’Noru (405)
(3692, 430), -- Lake Jorune (405)
(3693, 430), -- Skethyl Mountains (ø)
(3975, 430); -- Terokk’s Rest (ø)
-- WOTLK+ missing
-- (66, 380), -- Zul’Drak (ø)(TC)
-- (4100, 480), -- The Culling of Stratholme (ø)(TC)
-- (4273, 455), -- Ulduar (ø)(TC)
-- (4416, 455), -- Gundrak (ø)(TC)
-- (4493, 455), -- The Obsidian Sanctum (ø)(TC)
-- (4710, 480), -- Isle of Conquest (ø)(TC)
-- (4722, 480), -- Trial of the Crusader (ø)(TC)
-- (4813, 480), -- Pit of Saron (ø)(TC)
-- (4987, 480); -- The Ruby Sanctum (ø)(TC)

