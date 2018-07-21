-- BLOOD FURNACE

-- Orc Captive
UPDATE `creature_template` SET `UnitFlags`='2' WHERE `Entry`='17416';
UPDATE `creature_template` SET `UnitFlags`='2' WHERE `Entry`='18613'; -- heroic entry

DELETE FROM spell_script_target WHERE entry IN (33111);
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
('33111','1','18894','0'),
('33111','1','17400','0');

-- OLD HILLSBRAD FOOTHILLS

UPDATE creature_template SET UnitFlags=33088 WHERE entry IN (17848,20535); -- Lieutenant Drake, Lieutenant Drake (1)

UPDATE creature_template SET UnitFlags=33600 WHERE entry IN (17862,20521); -- Captain Skarloc, Captain Skarloc (1)
UPDATE creature_template SET UnitFlags=33600 WHERE entry IN (18096,20531); -- Epoch Hunter, Epoch Hunter (1)

UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (17814,20538); -- Lordaeron Watchman, Lordaeron Watchman (1)
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (17815,20537); -- Lordaeron Sentry, Lordaeron Sentry (1)
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (17820,20526); -- Durnholde Rifleman, Durnholde Rifleman (1)
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (17833,20530); -- Durnholde Warden, Durnholde Warden (1)
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (17860,20529); -- Durnholde Veteran, Durnholde Veteran (1)
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18934,20525); -- Durnholde Mage, Durnholde Mage (1)
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (17819,20527); -- Durnholde Sentry, Durnholde Sentry (1)

UPDATE creature_template SET UnitFlags=64 WHERE entry IN (18170,20534); -- Infinite Slayer, Infinite Slayer (1)
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (18171,20532); -- Infinite Defiler, Infinite Defiler (1)
UPDATE creature_template SET UnitFlags=64 WHERE entry IN (18172,20533); -- Infinite Saboteur, Infinite Saboteur (1)

UPDATE creature_template SET UnitFlags=33600 WHERE entry IN (23175,23181); -- Tarren Mill Guardsman, Tarren Mill Guardsman (1)
UPDATE creature_template SET UnitFlags=33600 WHERE entry IN (23176,23182); -- Tarren Mill Guardsman, Tarren Mill Guardsman (1)
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18092,20545); -- Tarren Mill Guardsman, Tarren Mill Guardsman (1)

UPDATE creature_template SET UnitFlags=33600 WHERE entry IN (23177,23183); -- Tarren Mill Lookout, Tarren Mill Lookout (1)
UPDATE creature_template SET UnitFlags=33600 WHERE entry IN (23178,23184); -- Tarren Mill Lookout, Tarren Mill Lookout (1)
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18094,20546); -- Tarren Mill Lookout, Tarren Mill Lookout (1)

UPDATE creature_template SET UnitFlags=33600 WHERE entry IN (23179,23185); -- Tarren Mill Protector, Tarren Mill Protector (1)
UPDATE creature_template SET UnitFlags=33600 WHERE entry IN (23180,23186); -- Tarren Mill Protector, Tarren Mill Protector (1)
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18093,20547); -- Tarren Mill Protector, Tarren Mill Protector (1)

-- 17840 Durnholde Tracking Hound, 20528 Durnholde Tracking Hound (1)

-- pre-2.4 only?
-- 22128 Durnholde Lookout, 22129 Durnholde Lookout (1)
-- 22398 Durnholde Reinforcement, 22399 Durnholde Reinforcement (1)
-- 26650 Durnholde Captain, 26651 Durnholde Captain (1)

UPDATE creature_template SET UnitFlags=33024 WHERE entry IN (18765,20524); -- Durnholde Cook, Durnholde Cook (1)
UPDATE creature_template SET UnitFlags=33024 WHERE entry IN (18764,20523); -- Durnholde Armorer, Durnholde Armorer (1)

UPDATE creature_template SET UnitFlags=256 WHERE entry IN (18644); -- Tarren Mill Peasant

UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (18657); -- Tarren Mill Fisherman
-- Emote ID: 380 (OneShotFishing)

UPDATE creature_template SET UnitFlags=33554688 WHERE entry IN (18650); -- Tarren Mill Horse
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (18649); -- Innkeeper Monica
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (18598,20541); -- Orc Prisoner
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20376); -- Jerry Carter
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20372); -- Jonathan Revah
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (2385); -- Feral Mountain Lion
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (2408); -- Snapjaw

-- 18664 Aged Dalaran Wizard
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (18666); -- Dalaran Sorceress

-- 20424 Hillsbrad Peasant
-- 20433 Hillsbrad Farmer
-- 20430 Hillsbrad Citizen
-- 20429 Hillsbrad Citizen
-- 20428 Hillsbrad Citizen
-- 20426 Hillsbrad Citizen

-- 18645 Tarren Mill Peasant (With Sack)
-- 25190 Skarloc's Warhorse
-- 24987 Christmas Captain Skarloc

UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (18723); -- Erozion
-- 18725 Brazen

UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20350); -- Kel'Thuzad
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20353); -- Helcular
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20363); -- Caretaker Smithers
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20368); -- Farmer Kent

UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20351); -- Captain Sanders
-- 20400 Captain Edward Hanes

UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20342); -- Hal McAllister
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20344); -- Nat Pagle

UPDATE creature_template SET UnitFlags=256 WHERE entry IN (20420); -- Overwatch Mark 0
UPDATE creature_template SET UnitFlags=256 WHERE entry IN (20419); -- Zixil

UPDATE creature_template SET UnitFlags=768 WHERE entry IN (18655); -- Jay Lemieux
UPDATE creature_template SET UnitFlags=768 WHERE entry IN (18651); -- Young Blanchy
UPDATE creature_template SET UnitFlags=768 WHERE entry IN (18656); -- Julie Honeywell

-- 21341 Victor
-- 21342 Alex
-- 21345 Hugh
-- 21343 Harvey
-- 21344 Phil

-- 20432 Beggar

-- 20360 Herod the Bully

UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20345); -- Commander Mograine

UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20348); -- Fairbanks
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20352); -- Arcanist Doan
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20349); -- Tirion Fordring
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20346); -- Isillien
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20347); -- Abbendis

UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20377); -- Barkeep Kelly
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20378); -- Chef Jessen

-- 20401 Frances Lin

UPDATE creature_template SET UnitFlags=33587200 WHERE entry IN (17213); -- Broom

UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20355); -- Stalvan Mistmantle

-- 20361 Taelan
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20370); -- Phin Odelic

UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20422); -- Kirin Tor Mage

UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20380); -- Raleigh the True
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20354); -- Nathanos Marris
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20379); -- Bilger the Straight-laced
UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20373); -- Magistrate Henry Maleb

UPDATE creature_template SET UnitFlags=32768 WHERE entry IN (20365); -- Bartolo Ginsetti

-- 20441 Natasha Morris

UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (17846,20543); -- Pit Spectator, Pit Spectator (1)
UPDATE creature_template SET UnitFlags=32832 WHERE entry IN (20365,20542); -- Pit Announcer, Pit Announcer (1)

-- 17876 Thrall, 20548 Thrall (1)
-- 18887 Taretha

UPDATE creature_template SET UnitFlags=512 WHERE entry IN (18672); -- Thomas Yance

-- 20357 Sally Whitemane
-- 20358 Renault Mograine

UPDATE creature_template SET UnitFlags=64 WHERE entry IN (28132); -- Don Carlos

-- GRUUL'S LAIR

-- Leash Gruul To His Room To Prevent Pulling Him Outside Of It
UPDATE creature_template SET Leash=95 WHERE entry IN (19044);

-- Make Gruul Not Tauntable
UPDATE creature_template SET ExtraFlags=ExtraFlags|256 WHERE entry=19044;

-- All NPC Except Gruul
UPDATE creature_template SET NPCFlags=64 WHERE entry IN (19389,21350,18831,18832,18834,18835,18836);

-- Make Trash Slightly Larger
UPDATE creature_template SET scale=1.25 WHERE entry IN (19389,21350);

-- Wild Fel Stalker Enslave Abilities
DELETE FROM creature_template_spells WHERE entry IN (18847);
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES
('18847','33086','33091','33096','0');

-- Fix Graveyward Players Are Sent To From Gruul's Lair (Moved From Sylvanaar to Evergrove)
DELETE FROM game_graveyard_zone WHERE ghost_zone=3923;
INSERT INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES
('1241','3923','0');

-- Bosses
UPDATE creature_template SET MechanicImmuneMask=1+2+4+8+16+32+64+128+256+512+1024+2048+4096+8192+65536+131072+524288+2097152+4194304+8388608+33554432+67108864+536870912 WHERE entry IN (18831,18832,18834,18835,19044);
-- Blindeye the Seer
UPDATE creature_template SET MechanicImmuneMask=1+2+4+8+16+32+64+128+256+512+1024+4096+8192+65536+131072+524288+2097152+4194304+8388608+67108864+536870912 WHERE entry IN (18836); -- Can Be Stunned and Interupted
-- Wild Felhunter
UPDATE creature_template SET MechanicImmuneMask=12584976 WHERE entry IN (18847); -- YTDB Data
-- Lair Brute
UPDATE creature_template SET MechanicImmuneMask=1+2+4+8+16+32+64+128+256+512+1024+2048+4096+8192+65536+131072+524288+2097152+4194304+8388608+33554432+67108864+536870912 WHERE entry IN (19389);
-- Gronn-Priest
UPDATE creature_template SET MechanicImmuneMask=1+2+4+8+16+32+64+128+256+512+1024+2048+4096+8192+65536+131072+524288+2097152+4194304+8388608+67108864+536870912 WHERE entry IN (21350);

-- SHATTERED HALLS

UPDATE creature_template SET UnitFlags=33554432 WHERE entry=17552; -- Hellfire Death Brazier
UPDATE creature_template SET UnitFlags=33555200 WHERE entry=17302; -- Hellfire Military Hard Mode Timer
UPDATE creature_template SET UnitFlags=657664 WHERE entry=17578; -- Training Dummy
UPDATE creature_template SET UnitFlags=33555200 WHERE entry IN (19523,19524); -- O'mrogg's Left Head / O'mrogg's Right Head
UPDATE creature_template SET UnitFlags=33554432, ModelId1=11686, MinLevel=69, MaxLevel=69, MinLevelHealth=39, MaxLevelHealth=39 WHERE entry IN (17611,20709); -- Warchief's Portal / Blade Dance Target

-- TEMPEST KEEP: THE EYE

UPDATE creature_template SET SpeedRun=4.5, SpeedWalk=4 WHERE entry IN (19514,20039);
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00041000 WHERE entry IN (12478,20035,20036,20032,20033,20031,20034,20038,20037);

-- half instance faction set to 1620, should be 16
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16 WHERE entry IN (20045,18805,18928,19514,19516,19551,19622,20031,20032,20033,20034,20035,20036,20037,20038,20039,20040,20041,20042,20043,20044,20046,20047,20048,20049,20050,20052,20060,20063,20064,18806,18925); 

-- Al'ar - fire immunity
UPDATE creature_template SET SchoolImmuneMask=4 WHERE entry=19514;
UPDATE creature_template SET ModelId1=16946,AIName='NullAI' WHERE entry=20602; -- Correct modelId and NullAI to prevent On Evade aura removal
UPDATE creature_template SET SchoolImmuneMask=4 WHERE entry=19551; -- embers immune to fire damage

-- Void Reaver
UPDATE creature_template SET UnitFlags=(33554432+2),AIName='NullAI',FactionAlliance=16,FactionHorde=16,ExtraFlags=ExtraFlags|0x00100000 WHERE entry=19577; -- Make it unattackable, unselectable, not react, correct faction and ignore on overlap
UPDATE creature_template SET ExtraFlags=ExtraFlags|256 WHERE entry=19516; -- Void Reaver should not be tauntable

-- immune to Mind Control
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|1 WHERE entry IN(18925,18806);

-- Solarian should not leash outside of her room
UPDATE creature_template SET Leash=100 WHERE entry IN(18805);

-- Void Reaver should not be immune to bleed
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~16384 WHERE entry IN(19516);

-- Astromancer Solarian Spotlight ignore for overlap and make not react
UPDATE creature_template SET AIName='NullAI',ExtraFlags=ExtraFlags|0x00100000 WHERE entry IN(18928);

-- High Astromancer Solarian - immune to interrupts
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|33554432 WHERE entry=18805;

DELETE FROM spell_script_target WHERE entry=34946; -- Repair Golem
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(34946, 1, 20040, 0), -- Crystalcore Devastator
(34946, 1, 20041, 0); -- Crystalcore Sentinel

-- Void Reaver
UPDATE creature_model_info SET bounding_radius=10.20369,combat_reach=18 WHERE modelid=18951;
-- Solarian
UPDATE creature_model_info SET bounding_radius=1.532, combat_reach=6 WHERE modelId=18239;
-- Al'ar
UPDATE creature_model_info SET bounding_radius=1.75,combat_reach=15 WHERE modelid=18945;

-- SERPENTSHRINE CAVERN

-- Greyheart Skulker - 1 dagger and 1 hammer
DELETE FROM creature_equip_template WHERE entry=2123201;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2123201, 2028, 31805, 0);

DELETE FROM `creature_model_info` WHERE `modelid` IN (21101,20216,20748,20739,5286,1773,20671,391, 20672,5243,20662,20670,5293,20636,20560,20514,20638,20641,20637,20470,20212,20640,20635,20200,20639,20205,20201,20642,20812);
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(21101, 1.2, 1.5, 0, 0),
(20216, 0.6, 22, 0, 0), -- 15.28196, 10
(20748, 3.504766, 3.5, 1, 0),
(20739, 6.315, 6, 0, 0),
(5286, 0.6, 1.5, 0, 0),
(1773, 0.6, 1.5, 0, 0),
(20671, 0.675, 3.375, 0, 0),
(391, 0.6, 1.5, 0, 0),
(20672, 2, 2, 1, 0),
(5243, 0.6, 1.5, 0, 0),
(20662, 1.05, 5.25, 0, 0),
(20670, 2, 1.5, 0, 0),
(5293, 0.6, 1.5, 0, 0),
(20636, 1.5, 1.5, 0, 0),
(20560, 0.75, 2.25, 2, 0),
(20514, 0.8617499, 3.375, 0, 0),
(20638, 1.5, 1.5, 0, 0),
(20641, 1.8, 1.8, 1, 0),
(20637, 1.5, 1.5, 0, 0),
(20470, 0.675, 3.375, 0, 0),
(20212, 1.8, 1.8, 1, 0),
(20640, 1.5, 1.5, 0, 0),
(20635, 1.5, 1.5, 0, 0),
(20200, 0.75, 3.75, 0, 0),
(20639, 1.5, 1.5, 0, 0),
(20205, 0.675, 3.375, 0, 0),
(20201, 0.675, 3.375, 0, 0),
(20642, 1.75, 1.75, 1, 0),
(20812, 0.7284999, 7.05, 2, 0);

-- Seer Olum
-- Should start in cage near Fathom-Lord and walk out upon boss death
UPDATE `creature_template` SET `GossipMenuId`=8564 WHERE `entry`=22820;
DELETE FROM `gossip_menu` WHERE (`entry`=8564 AND `text_id`=10733);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(8564,10733);

-- cage object ID is guessed
UPDATE gameobject_template SET flags=16 WHERE entry=185474; -- players cannot interact

UPDATE `creature_template` SET `SpeedWalk`=(4/2.5), `SpeedRun`=(12/7) WHERE `entry` IN (21224,21228,21225,21226,21227); -- Murlocs

-- Fix faction of almost every NPC in the instance
UPDATE `creature_template` SET `FactionAlliance`=16, `FactionHorde`=16 WHERE `entry` IN (21964,21965,21966,21263,21298,21299,21301,21339,21689,21806,21863,21251,21212,21213,21214,21215,21216,21217,21218,21220,21221,21224,21225,21226,21227,21228,21229,21230,21231,21232,21246,22035,22036);

-- Hydross Cleansing Field Helper
UPDATE `creature_template` SET `ModelId1`=15880, `UnitFlags`=33555200 WHERE `entry`=21934; -- UNIT_FLAG_NOT_SELECTABLE, UNIT_FLAG_PASSIVE, UNIT_FLAG_OOC_NOT_ATTACKABLE

-- Coilfang Frenzy Corpse
UPDATE `creature_template` SET `UnitFlags`=33555264 WHERE `entry`=21689; -- UNIT_FLAG_NOT_SELECTABLE, UNIT_FLAG_PASSIVE, UNIT_FLAG_OOC_NOT_ATTACKABLE, UNIT_FLAG_UNK_6

-- World Trigger (Not Immune PC) - controls Lurker trash respawn and grant fishing up Lurker achievement?
UPDATE `creature_template` SET `UnitFlags`=33554432 WHERE `entry`=21252; -- UNIT_FLAG_NOT_SELECTABLE

-- World Trigger (Tiny) - used in Vashj event?
UPDATE `creature_template` SET `ModelId1`=13069, `UnitFlags`=33555200 WHERE `entry`=21987; -- UNIT_FLAG_NOT_SELECTABLE, UNIT_FLAG_PASSIVE, UNIT_FLAG_OOC_NOT_ATTACKABLE

-- Hydross Beam Helper - cast 38015 on Hydross
UPDATE `creature_template` SET `ModelId1`=15880, `UnitFlags`=33555200 WHERE `entry`=21933; -- UNIT_FLAG_NOT_SELECTABLE, UNIT_FLAG_PASSIVE, UNIT_FLAG_OOC_NOT_ATTACKABLE

-- Invisible Stalker Coilfang Raid Console Emotes
UPDATE `creature_template` SET `ModelId1`=11686, `UnitFlags`=33554432 WHERE `entry`=22057; -- UNIT_FLAG_NOT_SELECTABLE

-- Phantom Leotheras (21812)
-- This appears to be an out of combat visual frill
-- X: 376.5428, -438.6309, 29.69164, O: 2.670354
-- created by server-side spell 37545
UPDATE creature_template SET MinLevel=73, MaxLevel=73, MinLevelHealth=3079, MaxLevelHealth=3079, UnitFlags=33587968 WHERE entry=21812; -- UNIT_FLAG_NOT_SELECTABLE, UNIT_FLAG_UNK_15, UNIT_FLAG_PASSIVE, UNIT_FLAG_OOC_NOT_ATTACKABLE

-- Coilfang Frenzy -- created by server-side spell 37026
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(15/7), UnitFlags=559168, MeleeBaseAttackTime=500 WHERE entry=21508; -- UNIT_FLAG_IN_COMBAT, UNIT_FLAG_UNK_15, UNIT_FLAG_PET_IN_COMBAT, UNIT_FLAG_UNK_6
-- UnitFlags changed to 557120 at some point?
-- UNIT_FLAG_IN_COMBAT, UNIT_FLAG_UNK_15, UNIT_FLAG_UNK_6

-- Rancid Mushroom (22250) - Summoned by Serpentshrine Lurker
UPDATE `creature_template` SET ModelId1=11686, FactionAlliance=14, FactionHorde=14, MinLevel=70, MaxLevel=70, UnitFlags=526336, scale=0.5, MinLevelHealth=69860, MaxLevelHealth=69860, HealthMultiplier=17.249382 WHERE entry=22250; -- UNIT_FLAG_IN_COMBAT, UNIT_FLAG_PET_IN_COMBAT

-- Enchanted Elemental
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(15/7), UnitFlags=32768 WHERE entry=21958;

UPDATE creature_template SET MechanicImmuneMask=1073725439 WHERE entry=21218; -- Vashj'ir Honor Guard

UPDATE creature_template SET MechanicImmuneMask=1073725439 WHERE entry=21224; -- Tidewalker Depth-Seer
UPDATE creature_template SET MechanicImmuneMask=1073658735 WHERE entry=21225; -- Tidewalker Warrior
UPDATE creature_template SET MechanicImmuneMask=1040171007 WHERE entry=21226; -- Tidewalker Shaman
UPDATE creature_template SET MechanicImmuneMask=1073725439 WHERE entry=21227; -- Tidewalker Harpooner
UPDATE creature_template SET MechanicImmuneMask=1040168703 WHERE entry=21228; -- Tidewalker Hydromancer

UPDATE creature_template SET MechanicImmuneMask=536872961 WHERE entry=21230; -- Greyheart Nether-Mage
UPDATE creature_template SET MechanicImmuneMask=524222447 WHERE entry=21231; -- Greyheart Shield-Bearer

UPDATE creature_template SET MechanicImmuneMask=1073725439, ExtraFlags=ExtraFlags|256 WHERE entry=21251; -- Underbog Colossus
UPDATE creature_template SET MechanicImmuneMask=1073725439 WHERE entry=21806; -- Greyheart Spellbinder
UPDATE creature_template SET MechanicImmuneMask=1065222127 WHERE entry=21863; -- Serpentshrine Lurker
UPDATE creature_template SET MechanicImmuneMask=1073741823 WHERE entry=22250; -- Rancid Mushroom

-- Hydross the Unstable (frost form)
UPDATE creature_template SET MechanicImmuneMask=1073741823, DamageSchool=4, ExtraFlags=4897 WHERE entry=21216;
-- Hydross the Unstable (nature form)
UPDATE creature_template SET MechanicImmuneMask=1073741823, DamageSchool=3, ExtraFlags=4897 WHERE entry=21932;

-- Pure Spawn of Hydross
UPDATE creature_template SET MechanicImmuneMask=1073603503, DamageSchool=4, SchoolImmuneMask=16, ExtraFlags=32, UnitFlags=32768 WHERE entry=22035;
-- Tainted Spawn of Hydross
UPDATE creature_template SET MechanicImmuneMask=1073603503, DamageSchool=3, SchoolImmuneMask=8, ExtraFlags=32, UnitFlags=32768 WHERE entry=22036;

-- Tainted Water Elemental
UPDATE creature_template SET MechanicImmuneMask=1073603503, DamageSchool=3, SchoolImmuneMask=8, ExtraFlags=32, MovementType=2 WHERE entry=21253;
-- Purified Water Elemental
UPDATE creature_template SET MechanicImmuneMask=1073603503, DamageSchool=4, SchoolImmuneMask=16, ExtraFlags=32 WHERE entry=21260;

-- Morogrim Tidewalker
UPDATE creature_template SET ExtraFlags=769 WHERE entry=21213;
-- Water Globule
UPDATE creature_template SET SpeedWalk=(1/2.5), SpeedRun=(2/7), UnitFlags=33587200 WHERE entry=21913;

-- The Lurker Below
UPDATE creature_template SET ExtraFlags=513, MechanicImmuneMask=1073725439 WHERE entry=21217;
-- Leotheras The Blind
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(15/7), ExtraFlags=769, MechanicImmuneMask=1073725439 WHERE entry=21215;

-- Fathom-Lord Karathress and entourage 
UPDATE creature_template SET ExtraFlags=769, MechanicImmuneMask=1073725439 WHERE Entry=21214; -- Fathom-Lord Karathress
UPDATE creature_template SET ExtraFlags=768, MechanicImmuneMask=1073725439 WHERE Entry=21966; -- Fathom-Guard Sharkkis
UPDATE creature_template SET ExtraFlags=768, MechanicImmuneMask=1073725439 WHERE Entry=21965; -- Fathom-Guard Tidalvess
UPDATE creature_template SET ExtraFlags=768, MechanicImmuneMask=1040171007 WHERE Entry=21964; -- Fathom-Guard Caribdis
UPDATE creature_template SET ExtraFlags=768, MechanicImmuneMask=1073725439 WHERE Entry=22119; -- Fathom Lurker
UPDATE creature_template SET ExtraFlags=768, MechanicImmuneMask=1073725439 WHERE Entry=22120; -- Fathom Sporebat
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16, UnitFlags=526336 WHERE entry=22091; -- Spitfire Totem
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16, UnitFlags=526336, AIName='TotemAI' WHERE entry=22486; -- Greater Earthbind Totem
DELETE FROM creature_template_spells WHERE entry=22486;
INSERT INTO creature_template_spells (entry, spell1) VALUES
(22486,6474); -- Earthbind Totem Passive
UPDATE creature_template SET FactionAlliance=16, FactionHorde=16, UnitFlags=526336, AIName='TotemAI' WHERE entry=22487; -- Greater Poison Cleansing Totem
DELETE FROM creature_template_spells WHERE entry=22487;
INSERT INTO creature_template_spells (entry, spell1) VALUES
(22487,8167); -- Poison Cleansing Totem Passive

-- Cyclone (Karathress)
UPDATE creature_template SET SpeedWalk=(1/2.5), SpeedRun=(3/7), UnitFlags=33587200 WHERE entry=22104;

-- Hydross the Unstable Mark Update
DELETE FROM spell_chain WHERE spell_id IN (38215, 38216, 38217, 38218, 38231, 40584, 38219, 38220, 38221, 38222, 38230, 40583);
INSERT INTO spell_chain (spell_id, prev_spell, first_spell, rank, req_spell) VALUES
-- Mark of Hydross
(38215,     0, 38215, 1, 0),
(38216, 38215, 38215, 2 ,0),
(38217, 38216, 38215, 3 ,0),
(38218, 38217, 38215, 4 ,0),
(38231, 38218, 38215, 5 ,0),
(40584, 38231, 38215, 6 ,0),
-- Mark of Corruption
(38219,     0, 38219, 1, 0),
(38220, 38219, 38219, 2 ,0),
(38221, 38220, 38219, 3 ,0),
(38222, 38221, 38219, 4 ,0),
(38230, 38222, 38219, 5 ,0),
(40583, 38230, 38219, 6 ,0);

-- Mushrom Spell Effect
UPDATE creature_template SET MinLevel=73, MaxLevel=73, MinLevelHealth=3079, MaxLevelHealth=3079, UnitFlags=33554432 WHERE entry=22335;

-- Summoned adds during Lurker encounter

-- Start with UNIT_FLAG_IMMUNE_TO_PLAYER, UNIT_FLAG_SWIMMING, UNIT_FLAG_UNK_6
-- UNIT_FLAG_IMMUNE_TO_PLAYER is removed once they reach their destination on platforms

-- Coilfang Guardian (21873)
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(10/7), UnitFlags=33088, InhabitType=3, FactionAlliance=16, FactionHorde=16, MovementType=2 WHERE entry=21873;

-- Coilfang Ambusher (21865)
UPDATE creature_template SET SpeedWalk=(2.5/2.5), SpeedRun=(10/7), UnitFlags=33088, InhabitType=3, MovementType=2, DamageMultiplier=1 WHERE entry=21865;

-- Water Elemental Totem (22236)
UPDATE creature_template SET AIName='TotemAI' WHERE entry=22236;
DELETE FROM creature_template_spells WHERE entry=22236;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(22236, 38622, 0, 0, 0); -- Summon Water Elemental

-- Vashj bridge unfolding
DELETE FROM dbscripts_on_go_template_use WHERE id IN(184568);
INSERT INTO dbscripts_on_go_template_use(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(184568,0,13,0,0,0,184203,78715,17,0,0,0,0,0,0,0,0,'Vashj Bridge'),
(184568,0,13,0,0,0,184204,78716,17,0,0,0,0,0,0,0,0,'Vashj Bridge'),
(184568,0,13,0,0,0,184205,78717,17,0,0,0,0,0,0,0,0,'Vashj Bridge');

-- Karathress Bestial Wrath targets
DELETE FROM spell_script_target WHERE entry IN(38371);
INSERT INTO spell_script_target VALUES
(38371,1,22119,0),
(38371,1,22120,0);

-- Colossus Lurker, Colossus Rager, Serpentshrine Parasite
UPDATE creature_template SET MovementType=1 WHERE entry IN (22347,22352,22379);

-- Serpentshrine Mushroom
UPDATE gameobject_template SET data2=5, data5=1800 WHERE entry=185199;

-- summon coordinates for all 12 murlocs on Tidewalker
REPLACE INTO spell_target_position(id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(37766,548,266,-707,-2.916667, 5.34071),
(37925,548,260,-712,-2.916667, 5.34071),
(37927,548,254,-719,-2.916667, 5.34071),
(39814,548,260,-704,-2.916667, 5.11381),
(39816,548,253,-707,-2.916667, 5.2709),
(39817,548,250,-708,-2.916667, 5.14872),

(37928,548,528,-699,-6.916667, 3.9968),
(37931,548,534,-706,-6.916667, 3.9968),
(39818,548,540,-700,-6.916667, 4.32842),
(39820,548,535,-695,-6.916667, 4.01426),
(39821,548,533,-691,-6.916667, 4.31096),
(39822,548,529,-691,-6.916667, 4.31096);

-- mushroom cloud needs to trigger on anyone, not just enemies - go has no flags(sniff) and no owner
UPDATE gameobject_template SET CustomData1=2 WHERE entry IN(185199);

-- proper flags for generator GOs
UPDATE gameobject_template SET flags=48 WHERE entry IN(185051,185052,185053,185054);



