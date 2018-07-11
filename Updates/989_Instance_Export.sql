-- Dark Portal Black Crystal Invisible Stalker
UPDATE creature_template SET ModelId1=1126, ModelId2=11686, UnitFlags=33554432, SpeedWalk=(3.5/2.5), SpeedRun=(8/7) WHERE entry=18553;

-- Crystal Shatter hits Dark Portal Black Crystal Invisible Stalker
DELETE FROM spell_script_target WHERE entry=32589;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(32589, 1, 18553, 0);

-- Dreadsteed Spirit
UPDATE creature_template SET UnitFlags=33536 WHERE entry=14504;

-- Cyclone (The Crone) 18412 modelid 14501
UPDATE `creature_template` SET `SpeedWalk` = (1 / 2.5), `SpeedRun` = (3 / 7) WHERE `entry` = 18412;
UPDATE `creature_template_addon` SET `auras` = '32332 32334' WHERE `entry` = 18412;

-- Flame Arrow 17687- NullAI
UPDATE `creature_template` SET `AIName` = 'NullAI' WHERE `entry` = 17687; -- prevent aggro behavior

-- correct model for Hellfire Death Brazier
UPDATE creature_template SET ModelId1=15435 WHERE entry IN(17552);

-- Warbringer O'mrogg - no mmap flag
UPDATE creature_template SET ExtraFlags=ExtraFlags|16384 WHERE entry IN (16809,20596);

-- Magtheridon's Room
UPDATE creature_template SET UnitFlags=33554944 WHERE entry IN(17516);

DELETE FROM spell_script_target WHERE entry IN(30572);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
('30572', '1', '17474', '0');

-- Lykul Wasp 17732,20175
UPDATE `creature_template` SET `ModelId2` = 0 WHERE `entry` = 20175;

-- Ghaz'an
UPDATE creature_template SET MovementType=2, ExtraFlags=ExtraFlags|16384 WHERE entry=18105; -- no mmap

-- Large AOI Underbat
UPDATE creature_template SET UnitFlags=33555264, InhabitType=4, SpeedWalk=(2.5/2.5), SpeedRun=(9/7) WHERE Entry=18409;

-- toxic spore trigger correct data
UPDATE creature_template SET ModelId1=11686,UnitFlags=34079232 WHERE entry IN(22207);
-- sporebat spells
DELETE FROM spell_target_position WHERE Id IN(38492,38493,38489,38490);
INSERT INTO spell_target_position VALUES
(38489, 548, 136.4626, -720.7682, 128.1843, 0),
(38492, 548, -15.53741, -710.7682, 210.1843, 0),
(38493, 548, -117.5374, -740.7682, 128.1843, 0);

-- correct speeds for adds
UPDATE creature_template SET SpeedWalk=2.5/2.5,SpeedRun=15/7 WHERE entry IN(21958); -- Enchanted Elemental
UPDATE creature_template SET SpeedWalk=2.5/2.5,SpeedRun=10/7 WHERE entry IN(22140); -- spore bat
UPDATE creature_template SET SpeedWalk=2.5/2.5,SpeedRun=7/7 WHERE entry IN(22056); -- strider
UPDATE creature_template SET SpeedWalk=2.5/2.5,SpeedRun=10/7 WHERE entry IN(22055); -- elite
UPDATE creature_template SET SpeedWalk=2.5/2.5,SpeedRun=9.02778/7 WHERE entry IN(22009); -- Tainted Elemental

-- correct speed, 45yard aggro range for vashj
UPDATE creature_template SET SpeedWalk=2.5/2.5,SpeedRun=15/7,Detection=45 WHERE entry IN(21212); -- vashj

-- correct faction/unitflags for adds
UPDATE creature_template SET FactionAlliance=16,FactionHorde=16,UnitFlags=32768 WHERE entry IN(21958,22009,22055,22056,22140);

-- Tainted Core has 5 minute duration
UPDATE item_template SET Duration=5*60 WHERE entry IN(31088);

-- Cyclone (Karathress) 22104 modelid 11686
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (12 / 7 ) WHERE `entry` = 22104;

-- Tidewalker Lurker 21920 modelid 391
UPDATE `creature_template` SET `SpeedWalk` = (4 / 2.5), `SpeedRun` = (10 / 7 ) WHERE `entry` = 21920;

-- Kael'thas Sunstrider <Lord of the Blood Elves> 19622-boss_kaelthas
UPDATE `creature_template` SET `SpeedWalk` = 0, `SpeedRun`= 0, `Detection` = 40, `UnitFlags` = 32832 WHERE `entry` = 19622;
UPDATE `creature_model_info` SET `bounding_radius` = 0.9, `combat_reach` = 9, SpeedWalk=(3/2.5),SpeedRun=(10/7) WHERE `modelid` = 20023;

-- Thaladred the Darkener <Advisor to Kael'thas> 20064-boss_thaladred_the_darkener
UPDATE `creature_template` SET `SpeedWalk` = (3/2.5), `SpeedRun`= (5.5/7), `UnitFlags` = 33024 WHERE `entry` = 20064;

-- Lord Sanguinar <The Blood Hammer> 20060-boss_lord_sanguinar
UPDATE `creature_template` SET `SpeedWalk` = (3/2.5), `SpeedRun` = (12/7), `UnitFlags` = 256 WHERE `entry` = 20060;

-- Grand Astromancer Capernian <Advisor to Kael'thas> 20062-boss_grand_astromancer_capernian
UPDATE `creature_template` SET `SpeedWalk` = (3/2.5), `SpeedRun` = (12/7), `UnitFlags` = 33024 WHERE `entry` = 20062;

-- Master Engineer Telonicus <Advisor to Kael'thas> 20063-boss_master_engineer_telonicus
UPDATE `creature_template` SET `SpeedWalk` = (3/2.5), `SpeedRun` = (12/7), `UnitFlags` = 33024 WHERE `entry` = 20063;

-- Advisor Model
UPDATE `creature_model_info` SET `bounding_radius` = 1.149, `combat_reach` = 4.5 WHERE `modelid` IN (20236,20177,20237,20178);

-- Netherstrand Longbow 21268-ACID
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16, `UnitFlags` = 32768 WHERE `entry` = 21268;

-- Devastation 21269-ACID
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16, `UnitFlags` = 32768 WHERE `entry` = 21269;

-- Cosmic Infuser 21270-ACID
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16 WHERE `entry` = 21270;

-- Infinity Blades 21271-ACID
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16, `UnitFlags` = 32768 WHERE `entry` = 21271;
DELETE FROM `creature_template_addon` WHERE `entry` = 21271;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (21271, 0, 0, 1, 16, 0, 0, '12787');

-- Warp Slicer 21272-ACID
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16, `UnitFlags` = 32768 WHERE `entry` = 21272;

-- Phaseshift Bulwark 21273-ACID
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16, `UnitFlags` = 32768 WHERE `entry` = 21273;

-- Staff of Disintegration 21274-ACID
UPDATE `creature_template` SET `FactionAlliance` = 16, `FactionHorde` = 16, `UnitFlags` = 32768 WHERE `entry` = 21274;

-- Phoenix Egg 21364-mob_phoenix_egg_tk
UPDATE `creature_template` SET `FactionAlliance` = 14, `FactionHorde` = 14, `UnitFlags` = 32768 WHERE `entry` = 21364;

-- Phoenix 21362-mob_phoenix_tk
UPDATE `creature_template` SET SpeedWalk=2.5/2.5,SpeedRun=6/7,`FactionAlliance` = 14, `FactionHorde` = 14, `UnitFlags` = 32768 WHERE `entry` = 21362;

-- Flame Strike Trigger (Kael) 21369
UPDATE `creature_template` SET `UnitFlags` = 33554432 WHERE `entry` = 21369;

-- Nether Vapor 21002
UPDATE `creature_template` SET `UnitFlags` = 33554432 WHERE `entry` = 21002;

-- banish spell used by kael should only hit phoenix
DELETE FROM `spell_script_target` WHERE `entry` = 40370;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(40370, 1, 21362, 0);

-- World Trigger (Large AOI) 22517
UPDATE creature_template SET `UnitFlags` = 33555200, `FactionAlliance` = 114, `FactionHorde` = 114 WHERE `entry` = 22517;

-- Nether Vapor - doesnt react in combat in any way
UPDATE creature_template SET AIName='NullAI' WHERE entry IN(21002);

-- verified Kael aggro range
UPDATE creature_template SET Detection=58 WHERE entry IN(19622);

DELETE FROM spell_script_target WHERE entry IN(36089,36090);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
(36089,1,19622,0),
(36090,1,19622,0);

DELETE FROM spell_script_target WHERE entry IN(36196,36197,36198);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
(36196,1,19622,0),
(36197,1,19622,0),
(36198,1,19622,0);

DELETE FROM spell_script_target WHERE entry IN(36201,36290,36291);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
(36201,1,22517,0),
(36290,1,22517,0),
(36291,1,22517,0);

-- correct data for nether vapor
UPDATE creature_model_info SET bounding_radius=0.3,combat_reach=1 WHERE modelid = 19988;

-- Add Nether Spike to Bundle of Nether Spikes
-- Source: UDB
DELETE FROM item_loot_template WHERE entry=30320;
INSERT INTO item_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(30320, 10007, 100, 0, -10007, 6, 0, '');
DELETE FROM reference_loot_template WHERE entry=10007;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(10007, 30319, 0, 1, 200, 200, 0, 'Nether Spike');

-- more blizzlike proc chance for Infinity Blade - true chance is unknown, only anecdotal data
UPDATE item_template SET spellppmRate_2=7.5 WHERE entry IN(30312);

-- solarian should do normal melee damage
UPDATE creature_template SET DamageSchool=0 WHERE entry IN(18805);

-- trash mob should do normal melee damage
UPDATE creature_template SET DamageSchool=0 WHERE entry IN(20040);

-- correct data for Astromancer Solarian Spotlight
UPDATE creature_template SET FactionAlliance=114,FactionHorde=114,UnitFlags=33554688 WHERE entry IN(18928);

-- Skulking Witch
UPDATE `creature_template` SET `UnitFlags` = 32832, `MechanicImmuneMask` = 42090323 WHERE `entry` = 20882;
UPDATE `creature_template` SET `UnitFlags` = 32832 WHERE `entry` = 21613;
UPDATE `creature_model_info` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (10 / 7) WHERE `modelid` = 19947;

-- Intro event fixes

-- give active flag to all creatures involved in intro event
-- CREATURE_EXTRA_FLAG_ACTIVE
UPDATE creature_template SET ExtraFlags=ExtraFlags|4096 WHERE entry in (20857,21585,20859,21587,20864,21608,20865,21607,21290,21186);

-- CREATURE_EXTRA_FLAG_MMAP_FORCE_DISABLE for Arcatraz Defender, Arcatraz Warder, Protean Nightmare, Protean Horror
UPDATE creature_template SET ExtraFlags=ExtraFlags|16384 WHERE entry in (20857,21585,20859,21587,20864,21608,20865,21607);

-- -------------------------------------------------------------------------
-- Arcatraz Defender (20857)
UPDATE creature_template SET UnitFlags=32832 WHERE entry=20857;

-- -------------------------------------------------------------------------
-- Arcatraz Warder (20859)
UPDATE creature_template SET UnitFlags=32832 WHERE entry=20859;
-- is 36293 arcane shot OOC cast even doing anything?
-- missing spells: Charged Arcane Shot (38808 H/36608 N)

-- -------------------------------------------------------------------------
-- Arcane Warder Target (21186)
UPDATE creature_template SET ExtraFlags=ExtraFlags&~128 WHERE entry=21186; -- remove CREATURE_EXTRA_FLAG_INVISIBLE from Arcane Warder Target

-- -------------------------------------------------------------------------
-- Protean Horror (20865)

UPDATE creature_template SET UnitFlags=512 WHERE entry=20865;
-- some start with IMMUNE_TO_NPC flag which is later removed (only those involved in intro event?)

-- has aura 21789 (serverside - missing)
-- hit by Arcatraz Warder 36293 spell (Arcane Shot)

-- -------------------------------------------------------------------------
-- Arcane Explosion (21290) - creature
-- casts 36514 (Energy) which hits Protean Horror

UPDATE creature_template SET ModelId2=11686 WHERE Entry=21290;

-- Energy only hits Protean Horror
DELETE FROM spell_script_target WHERE entry=36514;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(36514, 1, 20865, 0);

-- Tortured Skeleton 18797,20662
UPDATE `creature_template` SET `UnitFlags` = 33587200, `ExtraFlags` = `ExtraFlags`|524288 WHERE `entry` = 18797;
UPDATE `creature_template` SET `UnitFlags` = 33587200, `ExtraFlags` = `ExtraFlags`|524288 WHERE `entry` = 20662;

-- Invisible Target 18793,20654
UPDATE `creature_template` SET `UnitFlags` = 33587968 WHERE `entry` = 18793;
UPDATE `creature_template` SET `UnitFlags` = 33587968 WHERE `entry` = 20654;

-- fix blackheart the inciter dummies factions
UPDATE creature_template SET FactionAlliance=1762,FactionHorde=1762 WHERE entry IN(19301);
UPDATE creature_template SET FactionAlliance=1763,FactionHorde=1763 WHERE entry IN(19302);
UPDATE creature_template SET FactionAlliance=1764,FactionHorde=1764 WHERE entry IN(19303);
UPDATE creature_template SET FactionAlliance=1765,FactionHorde=1765 WHERE entry IN(19304);

-- Avian Flyer 21931,21988- Missing UNIT_FLAG_IMMUNE_TO_PLAYER UNIT_FLAG_IMMUNE_TO_NPC UNIT_FLAG_NOT_SELECTABLE
UPDATE `creature_template` SET `UnitFlags` = 33555200 WHERE `entry` = 21931;
UPDATE `creature_template` SET `UnitFlags` = 33555200 WHERE `entry` = 21988;

-- Sethekk Spirit 18703,20700
UPDATE `creature_template` SET `HeroicEntry` = 20700, `UnitFlags` = 33587264, `ExtraFlags` = 524288 WHERE `entry` = 18703;
-- Copying Values of 18703 as of now its unknown if another template has to be used or if the nonheroic Spirit also has Level 63, which would make 20700 obsolete
UPDATE `creature_template` SET `MinLevel` = 63, `MaxLevel` = 63, `FactionAlliance` = 16, `FactionHorde` = 16, `UnitFlags` = 33587264, `ExtraFlags` = 524288, `SpeedWalk` = 0.285714, `SpeedRun` = 1.11111, `Expansion` = 1, `DamageMultiplier` = 17, `MinLevelHealth` = 7461, `MaxLevelHealth` = 7461, `MinMeleeDmg` = 2430, `MaxMeleeDmg` = 3339, `MeleeAttackPower` = 1271, `MovementType` = 1 WHERE `entry` = 20700;

-- Raging Soul 18506,20316
UPDATE `creature_template` SET `modelid1` = 11686 WHERE `entry` IN (18506,20316); -- 25873 (Entry: 20316) has nonexistent modelid_1 (25873), can crash client

-- Add missing BT creature_onkill_reputation
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (22885,22917,22949,22950,22951,22952,23421);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `MaxStanding1`, `RewOnKillRepValue1`) VALUES
(22885, 1012, 7, 15), -- Dragon Turtle
(22917, 1012, 7, 500), -- Illidan Stormrage <The Betrayer>
(22949, 1012, 7, 250), -- Gathios the Shatterer -- maybe divided up between all 4 npcs
(22950, 1012, 7, 0), -- High Nethermancer Zerevor
(22951, 1012, 7, 0), -- Lady Malande
(22952, 1012, 7, 0), -- Veras Darkshadow
(23421, 1012, 7, 15); -- Ashtongue Channeler

UPDATE creature_template SET UnitFlags=33536 WHERE entry IN(17893,22938);
UPDATE creature_template SET SpeedRun=1 WHERE entry IN(17957);

-- Death Coil - Fel Orc Convert
DELETE FROM spell_script_target WHERE entry=30741;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(30741, 1, 17083, 0);

-- Shadow Sear - Fel Orc Convert
DELETE FROM spell_script_target WHERE entry=30735;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(30735, 1, 17083, 0);

-- Wild Shadow Fissure
UPDATE creature_template SET MinLevel=71, MaxLevel=71, UnitFlags=33554432, MinLevelHealth=4163, MaxLevelHealth=4163 WHERE entry=18370;
-- Lesser Shadow Fissure
UPDATE creature_template SET UnitFlags=33554432 WHERE entry=17471;

-- Infusion 40105 - Merge 40106 used by c. 22883 Aqueous Spawn
DELETE FROM `spell_script_target` WHERE `entry` IN (40105,40106);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(40105, 1, 22878, 0),
(40106, 1, 22878, 0);

-- Nature's Rage 34350 cast by c.18422 Sunseeker Botanist
DELETE FROM `spell_script_target` WHERE `entry` IN (34350);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(34350, 1, 19557, 0),
(34350, 1, 19608, 0),
(34350, 1, 19920, 0),
(34350, 1, 19958, 0),
(34350, 1, 19962, 0),
(34350, 1, 19964, 0),
(34350, 1, 19969, 0);

-- Old Hillsbrad Foothills
UPDATE areatrigger_teleport SET required_quest_done_heroic=10285, status_failed_text='You have not completed the Escape from Durnholde Keep Attunement quest chain.' WHERE id IN (4321);

-- Black Morass
UPDATE areatrigger_teleport SET required_quest_done_heroic=10298, status_failed_text='You have not completed The Opening of the Dark Portal Attunement quest chain.' WHERE id IN (4320);

-- Decrease Shade of Aran leash range some
UPDATE creature_template SET Leash=50 WHERE entry=16524; -- 60 951_leash_export

-- give malchezaar infernals nullai to prevent any combat reactions
UPDATE creature_template SET AIName='NullAI' WHERE entry=17646;

-- Infernal Targets used for infernal location on malchezaar fight should be ignored when finding positions
-- fixed Malchezaar jittery movement
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00100000 WHERE entry IN(17644);

DELETE FROM creature_loot_template WHERE entry = 11444 AND item = 35015; -- remove guaranteed blue drop from Gordok Mage-Lord

-- Glinting Fire Opal should not drop in Auchindoun
DELETE FROM reference_loot_template WHERE entry=40145 AND item=30556;

-- Magtheridon Target Trigger - faction, nullai and make it ignore on overlap
UPDATE creature_template SET FactionAlliance=14,FactionHorde=14,AIName='NullAI',ExtraFlags=ExtraFlags|0x00100000 WHERE entry IN(17474);
