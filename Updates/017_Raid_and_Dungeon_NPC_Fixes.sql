-- =======================
-- Bestiary Required Fixes
-- =======================
-- =============
-- CLASSIC RAIDS - (Initial Level Fixes For Bosses Since Many Bosses Have Been Recorded With Wrong Actual Levels - INCLDUING IN BESTIARY BOOK)
-- =============
-- -----------------------------
-- Blackwing Lair - Classic Raid
-- -----------------------------
-- Raid Bosses
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (12435,12557); -- Dragonmaw Garrison
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (13020); -- Shadow Wing Lair
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (12017); -- Halls of Strife
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (11983,14601,11981); -- Blackwing Lair (Labs)
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (14020); -- Blackwing Lair (Chromaggus' Lair)
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (11583); -- Nefarian's Lair

-- --------------------------
-- Molten Core - Classic Raid
-- --------------------------
-- Raid Bosses
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (12056,12057,12259,11988,12118,11982,12018,11502,12264,12098);

-- -----------------------------------
-- Naxxramas (Original) - Classic Raid
-- -----------------------------------
-- Raid Bosses
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (16028,15931,15932,15928,15930,15929); -- Abomination Wing
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (15954,15936,16011); -- Plague Wing
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (15956,15953,15952); -- Spider Wing
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (16061,16060,16062,16064,16065,16063); -- Death Knight Wing
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (15989); -- Frostwyrm Lair
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (15990); -- Kel'Thuzad's Chamber

-- ---------------------------------------
-- Onyxia's Lair (Original) - Classic Raid
-- ---------------------------------------
-- Raid Bosses
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (12756,10184);

-- --------------------------------------------
-- Ruins of Ahn'Qiraj (Original) - Classic Raid
-- --------------------------------------------
-- Raid Bosses
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (15348,15341,15340,15370,15369,15339);

-- ----------------------------------
-- Temple of Ahn'Qiraj - Classic Raid
-- ----------------------------------
-- Raid Bosses
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (15263,15544,15543,15511,15516,15510,15299,15509,15276,15275,15517,15727);

-- ------------------------
-- Zul'Gurub - Classic Raid
-- ------------------------
-- Raid Bosses
UPDATE creature_template SET MinLevel=63, MaxLevel=63 WHERE entry in (14517,14507,14510,11382,15082,15083,15084,15085,14509,15114,14515,11380,14834);


-- =========
-- TBC RAIDS - (Initial Level Fixes For Bosses Since Many Bosses Have Been Recorded With Wrong Actual Levels)
-- =========
-- =========
-- TBC Raids
-- =========
-- ---------------------------------
-- Battle for Mount Hyjal - TBC Raid
-- ---------------------------------
-- Raid Bosses
UPDATE creature_template SET MinLevel=73, MaxLevel=73 WHERE entry in (17767,17808,17888,17842,17968);

-- -----------------------
-- Black Temple - TBC Raid
-- -----------------------
-- Raid Bosses
UPDATE creature_template SET MinLevel=73, MaxLevel=73 WHERE entry in (21700,22990,23089,23191,22887,22898,22841,22871,22948,23420,23419,23418,22947,22949,22950,22951,22952,22917,23467,22997,22856);

-- -----------------------
-- Gruul's Lair - TBC Raid
-- -----------------------
-- Raid Bosses
UPDATE creature_template SET MinLevel=73, MaxLevel=73 WHERE entry in (18831,19044,18835,18836,18834,18832);

-- -------------------
-- Karazhan - TBC Raid
-- -------------------
-- Raid Bosses
-- UPDATE creature_template SET MinLevel=73, MaxLevel=73 WHERE entry in ();

-- -----------------------------
-- Magtheridon's Lair - TBC Raid
-- -----------------------------
-- Raid Bosses
UPDATE creature_template SET MinLevel=73, MaxLevel=73 WHERE entry in (17257,21174);

-- -------------------------------
-- Serpentshrine Cavern - TBC Raid
-- -------------------------------
-- Raid Bosses
UPDATE creature_template SET MinLevel=73, MaxLevel=73 WHERE entry in (21216,21217,21215,21845,21214,21213,21212);

-- --------------------------
-- Sunwell Plateau - TBC Raid
-- --------------------------
-- Raid Bosses
-- UPDATE creature_template SET MinLevel=73, MaxLevel=73 WHERE entry in ();

-- -----------------------------
-- Eye (Tempest Keep) - TBC Raid
-- -----------------------------
-- Raid Bosses
UPDATE creature_template SET MinLevel=73, MaxLevel=73 WHERE entry in (19514,19516,18805,19622,23054,20064,20060,20062,20063);

-- ------------------------------
-- Zul'Aman (Original) - TBC Raid
-- ------------------------------
-- Raid Bosses
UPDATE creature_template SET MinLevel=73, MaxLevel=73 WHERE entry in (23576,23574,23578,23577,24144,24239,23863);


-- ==========================
-- HEROIC ENTRY LINKING FIXES
-- ==========================
-- Avian Flyer
UPDATE creature_template SET HeroicEntry=21988 WHERE entry=21931;
-- Blood Guard Porung
UPDATE creature_template SET HeroicEntry=20993 WHERE entry=20923;
-- O'mrogg's Left Head
UPDATE creature_template SET HeroicEntry=20572 WHERE entry=19523;
-- O'mrogg's Right Head
UPDATE creature_template SET HeroicEntry=20573 WHERE entry=19524;
-- Sunblade Keeper
UPDATE creature_template SET HeroicEntry=25567 WHERE entry=24762;
-- Infinite Defiler
UPDATE creature_template SET HeroicEntry=20532 WHERE entry=18171;


-- ===============================================
-- FIX NPC WITH NORMAL/HEROIC RANK INCONSISTANCIES
-- ===============================================
-- Fiendish Hound
UPDATE creature_template SET rank=0 WHERE entry IN (17540,18056);
-- Rabid Warhound
UPDATE creature_template SET rank=0 WHERE entry IN (17669,20574);
-- Lieutenant Drake
UPDATE creature_template SET rank=1 WHERE entry IN (17848,20535);
-- Captain Skarloc
UPDATE creature_template SET rank=1 WHERE entry IN (17862,20521);
-- Chrono Lord Deja
UPDATE creature_template SET rank=1 WHERE entry IN (17879,20738);
-- Temporus
UPDATE creature_template SET rank=1 WHERE entry IN (17880,20745);
-- Epoch Hunter
UPDATE creature_template SET rank=1 WHERE entry IN (18096,20531);
-- Infinite Executioner
UPDATE creature_template SET rank=0 WHERE entry IN (18994,20742);
-- Infinite Executioner
UPDATE creature_template SET rank=0 WHERE entry IN (21138,22166);
-- Harbinger Skyriss
UPDATE creature_template SET rank=1 WHERE entry IN (21466,21600);
-- Harbinger Skyriss
UPDATE creature_template SET rank=1 WHERE entry IN (21467,21601);


-- ==================================================
-- FIX NPC WITH NORMAL/HEROIC FACTION INCONSISTANCIES
-- ==================================================
-- Shattered Hand Savage
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14 WHERE entry IN (16523,20591);
-- Shadowmoon Sorcerer
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14 WHERE entry IN (17396,21647);
-- Thrall
UPDATE creature_template SET FactionAlliance=1747, FactionHorde=1747 WHERE entry IN (17876,20548);
-- Sapling
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14 WHERE entry IN (19949,21567);
-- Greater Sapling
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14 WHERE entry IN (19954,21556);
-- Darkwater Crocolisk
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14 WHERE entry IN (20075,22163);
-- Unbound Void Zone
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14 WHERE entry IN (21101,21620);
-- Infinite Chronomancer
UPDATE creature_template SET FactionAlliance=168, FactionHorde=168 WHERE entry IN (21136,22165);
-- Infinite Assassin
UPDATE creature_template SET FactionAlliance=168, FactionHorde=168 WHERE entry IN (21137,22164);
-- Rift Keeper
UPDATE creature_template SET FactionAlliance=168, FactionHorde=168 WHERE entry IN (21148,22171);
-- Tarren Mill Guardsman
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14 WHERE entry IN (23175,23181);
-- Tarren Mill Guardsman
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14 WHERE entry IN (23176,23182);
-- Tarren Mill Lookout
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14 WHERE entry IN (23177,23183);
-- Tarren Mill Lookout
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14 WHERE entry IN (23178,23184);
-- Tarren Mill Protector
UPDATE creature_template SET FactionAlliance=14, FactionHorde=14 WHERE entry IN (23179,23185);
-- Ahunite Hailstone
UPDATE creature_template SET FactionAlliance=1998, FactionHorde=1998 WHERE entry IN (25755,26342);
-- Ahunite Coldwave
UPDATE creature_template SET FactionAlliance=1998, FactionHorde=1998 WHERE entry IN (25756,26340);


-- ====================================================================================================================
-- CORRECT AND STANDARDIZE ALL TOTEM DATA (SINCE LEVEL IS MATCHED WITH PLAYER AND HEALTH ALWAYS IS 5 FROM SUMMON SPELL)
-- ====================================================================================================================
UPDATE creature_template SET MinLevel=1, MaxLevel=1, MinLevelHealth=42, MaxLevelHealth=42, MinLevelMana=0, MaxLevelMana=0, HealthMultiplier=1, PowerMultiplier=1, Expansion=0, UnitClass=1, CreatureType=11 WHERE entry IN (2523,2630,3527,3573,3579,3902,3903,3904,3906,3907,3908,3909,3911,3912,3913,3968,5873,5874,5879,5913,5919,5920,5921,5922,5923,5924,5925,5926,5927,5929,5950,6012,6016,6017,6066,6110,6111,6112,7366,7367,7368,7398,7399,7400,7402,7403,7412,7413,7414,7415,7416,7423,7424,7425,7464,7465,7466,7467,7468,7469,7483,7484,7486,7487,7844,7845,8510,9637,9687,9688,9689,10183,10217,10467,10557,11100,11101,12141,13838,14662,14663,14664,14666,14667,14870,15112,15304,15363,15430,15469,15447,15463,15464,15470,15474,15478,15479,15480,15482,15483,15484,15485,15486,15487,15488,15489,15490,15492,15496,15497,15803,16385,17061,17365,17366,17539,18176,18177,18178,18179,18186,18235,18236,18691,18795,19222,19225,19430,19636,19637,19638,19639,19897,19898,19899,19900,20343,20455,20687,21420,21703,21704,21705,21992,21994,21995,22091,22209,22236,22318,22486,22487,22894,22895,22896,22897,22970,22971,23811,24224,24320,24649,25961,26534);
UPDATE creature_template SET ainame='TotemAI' WHERE CreatureType=11 AND entry IN (SELECT entry FROM creature_template_spells);

-- Special Case This NPC Will Continue To Use ACID Scripting
UPDATE creature_template SET ainame='EVENTAI' WHERE entry=18179;
-- Delete Some Heroic Entry TotemAI Assignments (Handled Through Normal Mode Entry Scripts)
UPDATE creature_template SET ainame='' WHERE entry IN (19897,19900,19899);

-- Kaliri Totem (21468) - Bestiary Data Exception
UPDATE `creature_template` SET `MinLevel` = '65', `MaxLevel` = '66', `Expansion` = '1', `HealthMultiplier` = '0.3', `PowerMultiplier` = '1', `ArmorMultiplier` = '1.011', `MinLevelHealth` = '1774', `MaxLevelHealth` = '1835', `MinLevelMana` = '0', `MaxLevelMana` = '0', `MinMeleeDmg` = '60', `MaxMeleeDmg` = '88', `DamageMultiplier` = '0.43', `DamageVariance` = '1.0' WHERE `entry` = '21468';


-- ===============================================================================================================
-- TEMP FINAL NPC STATS FIXES (NEED TO REVIEW THESE LATER TO SEE IF ANY CAN BE REMOVED OR MOVED TO TOP OF SECTION)
-- ===============================================================================================================
UPDATE creature_template SET MinLevelHealth=42, MaxLevelHealth=42 WHERE MinLevel=1 AND MaxLevel=1 AND Expansion=0 AND HealthMultiplier=1 AND MinLevelHealth=1 and MaxLevelHealth=1; -- Legit Query
UPDATE creature_template SET MinLevelHealth=42, MaxLevelHealth=42 WHERE MinLevel=1 AND MaxLevel=1 AND Expansion=0 AND HealthMultiplier=1 AND MinLevelHealth=5000 and MaxLevelHealth=5000; -- Legit Query
UPDATE creature_template SET rank=0 WHERE rank NOT IN (0,1,2,3,4); -- TEMP: Correct These And Remove This Query


-- ====================================
-- FINAL STATS SYSTEM NPC DATA CLEANUPS
-- ====================================
-- RESET MANA MULTIPLIER FOR WARRIOR CLASS (SHOULD ONLY BE 1 FOR NON-MANA NPC)
UPDATE creature_template SET PowerMultiplier=1 WHERE MinLevelMana=0 and MaxLevelMana=0 and UnitClass=1;

-- CORRECT HEALTH VALUES FOR NPC BASED ON NEW NPC STATS
UPDATE creature SET
curhealth = (SELECT FLOOR(RAND(1)*(maxlevelhealth - minlevelhealth) + minlevelhealth) FROM creature_template WHERE creature.id = creature_template.entry)
WHERE curhealth < (SELECT minlevelhealth FROM creature_template WHERE creature.id = creature_template.entry);

-- CORRECT MANA VALUES FOR NPC BASED ON NEW NPC STATS
UPDATE creature SET
curmana = (SELECT FLOOR(RAND(1)*(maxlevelmana - minlevelmana) + minlevelmana) FROM creature_template WHERE creature.id = creature_template.entry)
WHERE curmana < (SELECT minlevelmana FROM creature_template WHERE creature.id = creature_template.entry);




















