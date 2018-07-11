-- ============================================================================================================================================================
-- creature_template which need adjustments to their ExtraFlags
-- ============================================================================================================================================================

-- =====================================================================================================
-- Map: 0 Eastern Kingdoms / 1 Kalimdor / Classic
-- =====================================================================================================


-- =====================================================================================================
-- Map: 269 The Black Morass
-- =====================================================================================================


-- =====================================================================================================
-- Map: 530 Outland
-- =====================================================================================================

-- CREATURE_EXTRA_FLAG_NO_XP_AT_KILL
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|0x00000040 WHERE `entry` IN (
17680, -- Webbed Creature
17887, -- Void Critter
19480, -- Darkened Spirit
22419, -- Wood Mite
22506, -- Foul Purge
22507 -- Darkness Released
);

-- CREATURE_EXTRA_FLAG_FORCE_ATTACKING_CAPABILITY
UPDATE `creature_template` SET `ExtraFlags`=`ExtraFlags`|0x00080000 WHERE entry IN(
21286, -- Ethereum Mace
22824 -- Ethereum Glaive
);

-- =====================================================================================================
-- Map: 532 Karazhan
-- =====================================================================================================

-- CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00400000 WHERE entry IN(
-- boss
16181, -- Rokad the Ravager
16180, -- Shadikith the Glider
16179, -- Hyakiss the Lurker
16152, -- Attumen the Huntsman
16151, -- Midnight
15687, -- Moroes
16457, -- Maiden of Virtue
17535, -- Dorothee
17548, -- Tito
17543, -- Strawman
17547, -- Tinhead
17546, -- Roar
18168, -- The Crone
17521, -- The Big Bad Wolf
17533, -- Romulo
17534, -- Julianne
15691, -- The Curator
15688, -- Terestian Illhoof
16524, -- Shade of Aran
15689, -- Netherspite
17225, -- Nightbane
15690, -- Prince Malchezaar
-- trash
16460, -- Night Mistress
16545, -- Ethereal Spellfilcher
16526 -- Sorcerous Shade
);


-- =====================================================================================================
-- Map: 534 Hyjal Summit
-- =====================================================================================================

-- CREATURE_EXTRA_FLAG_IGNORE_USED_POSITION
UPDATE `creature_template` SET `ExtraFlags`=`ExtraFlags`|0x00100000 WHERE entry IN(
17818, -- Towering Infernal
17864 -- Lesser Doomguard
);

-- CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00400000 WHERE entry IN(
-- boss
17767, -- Rage Winterchill
17808, -- Anetheron
17888, -- Kaz'rogal
17842, -- Azgalor
17968 -- Archimonde
);


-- =====================================================================================================
-- Map: 540 The Shattered Halls
-- =====================================================================================================


-- =====================================================================================================
-- Map: 542 The Blood Furnace
-- =====================================================================================================


-- =====================================================================================================
-- Map: 543 Hellfire Ramparts
-- =====================================================================================================


-- =====================================================================================================
-- Map: 544 Magtheridon's Lair
-- =====================================================================================================

-- CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00400000 WHERE entry IN(
17257 -- Magtheridon
);


-- =====================================================================================================
-- Map: 545 The Steamvault
-- =====================================================================================================


-- =====================================================================================================
-- Map: 546 The Underbog
-- =====================================================================================================


-- =====================================================================================================
-- Map: 547 The Slave Pens
-- =====================================================================================================


-- =====================================================================================================
-- Map: 548 Serpentshrine Cavern
-- =====================================================================================================

-- CREATURE_EXTRA_FLAG_IGNORE_USED_POSITION
UPDATE `creature_template` SET `ExtraFlags`=`ExtraFlags`|0x00100000 WHERE entry IN(
22036, -- Tainted Spawn of Hydross
22035 -- Pure Spawn of Hydross
);

-- CREATURE_EXTRA_FLAG_NO_MELEE
UPDATE `creature_template` SET `ExtraFlags`=`ExtraFlags`|0x00020000 WHERE entry IN(
22104 -- Cyclone (Karathress)
);

-- CREATURE_EXTRA_FLAG_FORCE_ATTACKING_CAPABILITY
UPDATE `creature_template` SET `ExtraFlags`=`ExtraFlags`|0x00080000 WHERE entry IN(
22104, -- Cyclone (Karathress)
22210 -- Priestess Spirit
);

-- CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00400000 WHERE entry IN(
-- bosses
21216, -- Hydross the Unstable
21217, -- The Lurker Below
21215, -- Leotheras the Blind
21875, -- Shadow of Leotheras
21214, -- Fathom-Lord Karathress
21966, -- Fathom-Guard Sharkkis
21965, -- Fathom-Guard Tidalvess
21213, -- Morogrim Tidewalker
21212, -- Lady Vashj
-- trash
21339, -- Coilfang Hate-Screamer
21230, -- Greyheart Nether-Mage
21226 -- Tidewalker Shaman
);


-- =====================================================================================================
-- Map: 550 The Eye
-- =====================================================================================================

-- CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00400000 WHERE entry IN(
-- boss
19516, -- Void Reaver
19514, -- Al'ar
18805, -- High Astromancer Solarian
19622, -- Kael'thas Sunstrider
20064, -- Thaladred the Darkener
20060, -- Lord Sanguinar
20062, -- Grand Astromancer Capernian
20063, -- Master Engineer Telonicus
-- trash
20033, -- Astromancer
20036, -- Bloodwarder Squire
20034 -- Star Scryer
);


-- =====================================================================================================
-- Map: 552 The Arcatraz
-- =====================================================================================================


-- =====================================================================================================
-- Map: 553 The Botanica
-- =====================================================================================================


-- =====================================================================================================
-- Map: 554 The Mechanar
-- =====================================================================================================

-- CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00400000 WHERE entry IN(
19735,21542 -- Tempest-Forge Destroyer
);


-- =====================================================================================================
-- Map: 555 Shadow Labyrinth
-- =====================================================================================================


-- =====================================================================================================
-- Map: 556 Sethekk Halls
-- =====================================================================================================


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

-- CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00400000 WHERE entry IN(
-- boss
22887, -- High Warlord Naj'entus
22898, -- Supremus
22841, -- Shade of Akama
22871, -- Teron Gorefiend
22948, -- Gurtogg Bloodboil
22947, -- Mother Shahraz
22949, -- Gathios the Shatterer
22950, -- High Nethermancer Zerevor
22952, -- Veras Darkshadow
22917, -- Illidan Stormrage
-- trash
22875, -- Coilskar Sea-Caller
22964 -- Sister of Pleasure
);


-- =====================================================================================================
-- Map: 565 Gruul's Lair
-- =====================================================================================================

-- CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00400000 WHERE entry IN(
-- boss
18831, -- High King Maulgar
18835, -- Kiggler the Crazed
18834, -- Olm the Summoner
18832, -- Krosh Firehand
19044, -- Gruul the Dragonkiller
-- trash
21350 -- Gronn-Priest
);


-- =====================================================================================================
-- Map: 568 Zul'Aman
-- =====================================================================================================

-- CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00400000 WHERE entry IN(
23576, -- Nalorakk
23574, -- Akil'zon
23578, -- Jan'alai
23577, -- Halazzi
24239, -- Hex Lord Malacrass
23863 -- Zul'jin
);


-- =====================================================================================================
-- Map: 580 Sunwell Plateau
-- =====================================================================================================

-- CREATURE_EXTRA_FLAG_HASTE_SPELL_IMMUNITY
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00400000 WHERE entry IN(
24850, -- Kalecgos
24892, -- Sathrovarr the Corruptor
24882, -- Brutallus
25038, -- Felmyst
25166, -- Grand Warlock Alythess
25165, -- Lady Sacrolash
25741, -- M'uru
25840, -- Entropius
25315 -- Kil'jaeden
);


-- =====================================================================================================
-- Map: 585 Magisters' Terrace
-- =====================================================================================================

