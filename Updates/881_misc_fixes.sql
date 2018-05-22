-- Netherstorm Crystal Target needs to float and be visible to everyone
UPDATE creature_template SET ExtraFlags=0,InhabitType=4 WHERE entry IN(19421);

-- Remove wrong affect masks in favor of using spell_template ones
DELETE FROM spell_affect WHERE entry IN(16086,16544);

-- Magtheridon shadow grasp should hit dummy and then second spell hit magtheridon
DELETE FROM spell_script_target WHERE entry IN(30410);
INSERT INTO spell_script_target VALUES
('30410', '1', '17376', '0');

-- Correct data for Shaman Fire and Earth ele
UPDATE creature_template SET HealthMultiplier=1.3,FactionAlliance=1629,FactionHorde=1629,MinLevel=66,MaxLevel=66, `MinLevelHealth` = 4711, `MaxLevelHealth` = 4711 WHERE entry IN(15430); -- earth elemental totem
UPDATE creature_template SET SchoolImmuneMask=8,Leash=50,MinLevel=66,MaxLevel=70,SpeedWalk=3.88889/2.5,SpeedRun=8/7, `MaxLevelHealth` = 9082 WHERE entry IN(15352); -- greater earth elemental
UPDATE creature_template SET HealthMultiplier=1.0,FactionAlliance=1629,FactionHorde=1629,MinLevel=68,MaxLevel=68, `MinLevelHealth` = 3834, `MaxLevelHealth` = 3834 WHERE entry IN(15439); -- fire elemental totem
UPDATE creature_template SET SchoolImmuneMask=4,Leash=50,MinLevel=68,MaxLevel=70,SpeedWalk=2.5/2.5,SpeedRun=8/7, `MinLevelHealth` = 4580, `MinLevelMana` = 6882 WHERE entry IN(15438); -- greater fire elemental

-- correct flags for snake trap snakes
UPDATE creature_template SET UnitFlags=0x00008000 WHERE entry IN(19921,19833);

-- Add affect mask for Improved Consecration to affect Consecration
DELETE FROM spell_affect WHERE entry IN(34252);
INSERT INTO spell_affect VALUES
(34252,0,0x0000000000000020);

-- this shield should not scale with anything
DELETE FROM spell_bonus_data WHERE entry IN(32643);
INSERT INTO spell_bonus_data(entry,comments) VALUES
(32643,'Item - Petrified Lichen Guard');

DELETE FROM creature WHERE id IN(17077); -- spawned with script

-- correct mask for Presence of Mind - taken from wotlk and checked against patch notes
UPDATE spell_affect SET SpellFamilyMask=0x0000100061400035 WHERE entry IN(12043);

-- move coeffs from core to DB
DELETE FROM spell_bonus_data WHERE entry IN(1822,779);
INSERT INTO spell_bonus_data(entry, direct_bonus, dot_bonus, ap_bonus, ap_dot_bonus, comments) VALUES
('1822', '0', '0', '0.01', '0.02', 'Druid - Rake'),
('779', '0', '0', '0.08', '0', 'Druid - Swipe');

-- Repeatable quests for Aldor/Scryers should be available from 0/3000
UPDATE quest_template SET RequiredMinRepValue=0 WHERE entry IN(10412,10414,10415,10325,10326,10327);

-- Hurley blackbreath and Blackbreath Crony correct faction and flags from sniff
UPDATE creature_template SET FactionAlliance=54,FactionHorde=54,UnitFlags=0 WHERE entry IN(9541,9537);

-- correct coeff for Seal of Command proc
UPDATE spell_bonus_data SET direct_bonus=0.29 WHERE entry IN(20424);

-- correct Doomwalker model and speed data
UPDATE creature_template SET ModelId1=21435,SpeedWalk=7/2.5,SpeedRun=20/7 WHERE entry IN(17711);
UPDATE creature_model_info SET bounding_radius=10,combat_reach=18 WHERE modelid=21435;

-- Totem of the Thunderhead correct mask
UPDATE spell_affect SET SpellFamilyMask=0x0000002000000000 WHERE entry IN(34318);

-- affect mask for Totem of the Plains
DELETE FROM spell_affect WHERE entry IN(32401);
INSERT INTO spell_affect VALUES
(32401,0,0x0000000000000080);

-- correct data for creature - Void Conduit
UPDATE creature_template SET UnitFlags=0 WHERE entry IN(20899);

-- Mage Clearcasting
-- Add whole blast wave mask per wotlk, add ice lance
UPDATE spell_affect SET SpellFamilyMask=SpellFamilyMask|(0x0000000000020000|0x0000004000000000) WHERE entry IN(12536);
-- Druid Clearcasting
-- add thorns and swiftmend
UPDATE spell_affect SET SpellFamilyMask=SpellFamilyMask|(0x00000100|0x0000000200000000) WHERE entry IN(16870);
-- remove prowl
UPDATE spell_affect SET SpellFamilyMask=SpellFamilyMask&~(0x00004000) WHERE entry IN(16870);

-- correct entries and data for GOs in Stormwind - from wotlk sniff
-- finest threads
UPDATE gameobject SET position_x=-8704.037,position_y=860.7137,position_z=100.7406,orientation=2.242746,rotation2=0.9006977,rotation3=0.4344464 WHERE guid IN(13390) AND id IN(2177);
-- pointers
UPDATE gameobject SET id=2179,position_x=-8704.93,position_y=865.7831,position_z=96.76332,orientation=-2.452184,rotation2=-0.9411755,rotation3=0.3379182 WHERE guid IN(4718) AND id IN(2110); -- Cathedral Square
UPDATE gameobject SET id=2191,position_x=-8706.763,position_y=865.9595,position_z=97.36337,orientation=2.260197,rotation2=0.9044542,rotation3=0.4265707 WHERE guid IN(5136) AND id IN(2111); -- Trade District
UPDATE gameobject SET id=24718,position_x=-8706.586,position_y=867.7924,position_z=96.76332,orientation=0.6894043,rotation2=0.3379164,rotation3=0.9411761 WHERE guid IN(42868) AND id IN(24715); -- the park
UPDATE gameobject SET id=28039,position_x=-8706.824,position_y=865.9103,position_z=96.16681,orientation=2.260197,rotation2=0.9044542,rotation3=0.4265707 WHERE guid IN(42879) AND id IN(28035); -- Stormwind Gate

-- source: https://authors.curseforge.com/forums/world-of-warcraft/addon-chat/libraries/209220-threat-2-0-and-lifebloom#c11
DELETE FROM spell_threat WHERE entry IN(33763);
INSERT INTO spell_threat VALUES
('33763', '0', '0.5', '0'),
-- paladin spells have halved threat coeff to prevent healtanking - 2.4.2 stealth change
('635', '0', '0.5', '0'), -- holy light
('19750', '0', '0.5', '0'), -- flash of light
('25914', '0', '0.5', '0'), -- holy shock
('633', '0', '0.5', '0'); -- lay on hands
-- has no threat attribute
DELETE FROM spell_threat WHERE entry IN(26688);

-- overrun target - doomwalker
UPDATE creature_template SET UnitFlags=33555200,ModelId1=11686 WHERE entry IN(18665);

-- add missing WSG battlemaster to darnassus
DELETE FROM creature WHERE id IN(2302); -- always spawned only once
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('152000', '2302', '1', '1', '0', '0', '9976.99', '2314.13', '1330.87', '0.698132', '600', '600', '0', '0', '10626', '8019', '0', '0');

-- Missing Graveyard Link for Barrier Hills
DELETE FROM `game_graveyard_zone` WHERE `ghost_zone` = 3519 AND `id` = 1257;
INSERT INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES
(1257, 3519, 0);

-- Missing Spirit Healer for Barrier Hills from wotlk-db (original guid 97236)
DELETE FROM `creature` WHERE `guid` = 152001 AND `id` = 6491;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(152001, 6491, 530, 1, 0, 0, -1137.83, 5896.99, 189.158, 3.05307, 60, 60, 0, 0, 4120, 0, 0, 0);

-- Remove Weapon from Young Wendigo 1134
DELETE FROM `creature_equip_template` WHERE `entry` = 1134;
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 1134;

-- wotlk db - Add npc Hch'uu 22823
DELETE FROM `creature` WHERE `guid` = 3248 AND `id` = 22823;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (3248, 22823, 530, 1, 0, 0, 203.588, 8550.11, 22.3256, 4.47675, 25, 25, 0, 0, 41, 60, 0, 0);
DELETE FROM `game_event_creature` WHERE `guid` = 3248;
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (3248, 10);

-- The Absent Minded Prospector q. 943 complete script
-- source: Classic-DB
DELETE FROM dbscripts_on_quest_end WHERE id=943;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('943', '0', '5', '147', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('943', '2', '0', '0', '0', '0', '0', '0', '0', '2000005568', '0', '0', '0', '0', '0', '0', '0', ''),
('943', '8', '10', '3582', '44000', '0', '0', '0', '0', '0', '0', '0', '0', '-3809', '-839', '16.94', '2.16', ''),
('943', '12', '0', '0', '0', '0', '0', '0', '0', '2000005569', '0', '0', '0', '0', '0', '0', '0', ''),
('943', '20', '0', '0', '0', '0', '3582', '10', '0', '2000005570', '0', '0', '0', '0', '0', '0', '0', ''),
('943', '28', '0', '0', '0', '0', '3582', '10', '0', '2000005571', '0', '0', '0', '0', '0', '0', '0', ''),
('943', '36', '0', '0', '0', '0', '3582', '10', '0', '2000005572', '0', '0', '0', '0', '0', '0', '0', ''),
('943', '44', '0', '0', '0', '0', '3582', '10', '0', '2000005573', '0', '0', '0', '0', '0', '0', '0', ''),
('943', '52', '0', '0', '0', '0', '3582', '10', '0', '2000005574', '0', '0', '0', '0', '0', '0', '0', ''),
('943', '58', '0', '0', '0', '0', '0', '0', '0', '2000000061', '0', '0', '0', '0', '0', '0', '0', ''), -- old id reused
('943', '66', '4', '147', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');

DELETE FROM dbscript_string WHERE entry BETWEEN 2000005568 AND 2000005574;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
('2000005568', '%s begins to manipulate the Stone of Relu over the two fossils.', '0', '2', '0', '0', NULL),
('2000005569', 'By the stars! A spirit has been summoned!', '0', '0', '0', '0', NULL),
('2000005570', 'Who hath summoned forth Aman?', '0', '0', '0', '0', NULL),
('2000005571', 'Ah, I see you toil with relics of the past.', '0', '0', '0', '0', NULL),
('2000005572', 'Be warned that even your creators are fallible.', '0', '0', '0', '0', NULL),
('2000005573', 'Digging too deep into your past might bring an abrupt end to your future.', '0', '0', '0', '0', NULL),
('2000005574', '%s dissipates before your eyes.', '0', '2', '0', '0', NULL);

-- Silvermoon City Guardian post patch 2.4 response
-- text is a response to Champion Vranesh (18146) when he moves along his route
DELETE FROM dbscript_string WHERE entry IN (2000001490);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001490, 'Glory to the Sun K-- ah... Silvermoon!', 0, 0, 0, 0, '');
UPDATE dbscripts_on_creature_movement SET dataint3=2000001490  WHERE id IN (1814601,1814602) AND delay=5;

-- update to post 2.4 text
UPDATE quest_template SET OfferRewardText='Welcome, young $C.$B$BAt the order''s founding, Kael''thas gifted us with a captured naaru, a being of the very Light we wield. Through our superior magical abilities, we learned to control and subdue it, allowing the Blood Knights to draw power from it.$B$BKael''thas'' own lust for power got the better of him, though, and he allied with our enemies. His vile followers attacked us, taking the naaru, and cutting us off from the source. These are dark days for the order, $N.' WHERE entry=9681;

-- Rod of the Sun King correct ppm rate - confirmed against live
UPDATE item_template SET spellppmRate_1=2 WHERE entry IN(29996);

-- spell 34905 needs to be cast on self as per default taxi effect target
UPDATE dbscripts_on_gossip SET data_flags=6 WHERE id IN(8082) AND command IN(15) AND datalong IN(34905);

-- fix Kazakk faction to sniff value
UPDATE creature_template SEt FactionAlliance=90,FactionHorde=90 WHERE entry IN(18728);

-- flametongue totem proc should have no spell dmg coeff
DELETE FROM spell_bonus_data WHERE entry IN(16368);
INSERT INTO spell_bonus_data(entry,direct_bonus) VALUES
(16368,0);

-- Data for Spell Healing Done librams and idols which work through dummies
DELETE FROM spell_affect WHERE entry IN(34246,28851,28853,32403);
INSERT INTO spell_affect(entry, effectId, SpellFamilyMask) VALUES
(28851,0,0x0000000040000000), -- Flash of Light librams
(28853,0,0x0000000040000000),
(32403,0,0x0000000040000000),
(34246,0,0x0000001000000000); -- Lifebloom Idol

-- Zombified Grimscale 16402 - Fevered Fatigue 31386
UPDATE `creature_template_addon` SET `auras` = '31386' WHERE `entry` = 16402;

-- Arcane Reaver 16339
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|16|16384|8388608, `ExtraFlags` = `ExtraFlags`|256 WHERE `entry` = 16339;

-- Mummified Headhunter 16342
UPDATE `creature_template` SET `ResistanceShadow` = 30 WHERE `entry` = 16342;

-- wrong map 545
DELETE FROM `gameobject` WHERE `guid` IN (112785,32626,112786);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(112785, 182952, 530, 1, 809.187, 6962.97, 18.2676, 0.802851, 0, 0, 0, 0, 180, 180, 100, 1), -- Steam Pump Flotsam (map 545)
(32626, 182953, 530, 1, 809.187, 6962.97, 18.2676, 0.802851, 0, 0, 0, 0, 180, 180, 100, 1), -- Sporefish School (map 545)
(112786, 182954, 530, 1, 809.187, 6962.97, 18.2676, 0.802851, 0, 0, 0, 0, 180, 180, 100, 1); -- Brackish Mixed School (map 545)

-- Murgurgula 17475 - Thrash 12787
UPDATE `creature_template_addon` SET `auras` = '12787' WHERE `entry` = 17475;

-- Irradiated Wildkin 17324 - Radiation 31284
UPDATE `creature_template_addon` SET `auras` = '31284' WHERE `entry` = 17324;

-- Cruelfin 17496 - Deadly Poison 32970
UPDATE `creature_template_addon` SET `auras` = '32970' WHERE `entry` = 17496;

DELETE FROM `pool_template` WHERE `entry` = 25520;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(25520, 1, 'Blood Elf Bandit (17591)');

DELETE FROM `pool_creature_template` WHERE `id` = 17591;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(17591, 25520, 0, 'Blood Elf Bandit (17591)');

-- missing spawns from tdb
DELETE FROM `creature` WHERE `guid` BETWEEN 191007 AND 191016;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(191007, 17591, 530, 1, -4407.39, -11743.2, 4.98888, 1.80866, 300, 300, 3, 1),
(191008, 17591, 530, 1, -3439.96, -11981, 17.3588, 5.29974, 300, 300, 3, 1),
(191009, 17591, 530, 1, -3464.62, -11966.8, 13.25, 5.60997, 300, 300, 3, 1),
(191010, 17591, 530, 1, -3463.9, -12009.6, 18.7404, 0.65411, 300, 300, 3, 1),
(191011, 17591, 530, 1, -3147.75, -12626.8, 30.0281, 4.81673, 300, 300, 3, 1),
(191012, 17591, 530, 1, -3181.16, -12675.8, 24.6686, 4.02348, 300, 300, 3, 1),
(191013, 17591, 530, 1, -3266.93, -12701.2, 22.0934, 3.55616, 300, 300, 3, 1),
(191014, 17591, 530, 1, -3319.55, -12679.5, 20.4153, 1.2785, 300, 300, 3, 1),
(191015, 17591, 530, 1, -3342.66, -12630.2, 37.487, 0.418494, 300, 300, 3, 1),
(191016, 17591, 530, 1, -3084.32, -12681.7, 5.75133, 1.99714, 300, 300, 3, 1);

-- offset
UPDATE `gameobject`  SET `position_z` = 27.0074 WHERE `guid` = 103129 AND `id` = 1731;

-- offset
UPDATE `creature` SET `position_z` = 169.4921 WHERE `guid` = 69692 AND `id` = 8534;
UPDATE `creature` SET `position_z` = 160.0179 WHERE `guid` = 84786 AND `id` = 8530;

-- dublicate
DELETE FROM `creature` WHERE `guid` IN (69712,69713) AND `id` = 18975;

-- Allerian Defender 18999
UPDATE `creature_template` SET `UnitFlags` = 36864 WHERE `entry` = 18999;
-- High Elf Ranger 19000
UPDATE `creature_template` SET `UnitFlags` = 36864 WHERE `entry` = 19000;

-- Murkblood Scavenger 18207
UPDATE `creature` SET `spawntimesecsmin` = 180 WHERE `id` = 18207;

-- Enraged Wraith 17086 - spawned during quest 8490 using item 22693: guid (84095,84096,84097,84098,84099,84100,84646,84647)
DELETE FROM `creature` WHERE `id` = 17086;

-- Fix corrupted modelid_other_gender for Magistrix Eredania 16160 & George Candarte 2698
UPDATE `creature_model_info` SET `modelid_other_gender`= 0 WHERE `modelid` IN (3680,16046); -- 11686

-- Dragonmaw Ascendant 22253
UPDATE `creature_template` SET `FactionAlliance` = 14, `FactionHorde` = 14, `UnitFlags` = 32768, `Detection`= 30 WHERE `entry` = 22253;

-- Ghostlands - Amani Pass - Hatchet Hills
DELETE FROM `creature` WHERE `guid` BETWEEN 191017 AND 191053;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `DeathState`, `MovementType`) VALUES
(191017, 23716, 530, 1, 6782.923, -7642.173, 127.9039, 2.775074, 300, 300, 0, 1, 0),
(191018, 23716, 530, 1, 6737.847, -7577.823, 126.8023, 0.9424778, 300, 300, 0, 1, 0),
(191019, 23705, 530, 1, 6761.838, -7667.972, 126.5441, 2.356194, 300, 300, 0, 1, 0),
(191020, 23705, 530, 1, 6770.6, -7614.27, 128.6805, 5.759586, 300, 300, 0, 1, 0),
(191021, 23705, 530, 1, 6745.694, -7636.867, 127.3059, 5.846853, 300, 300, 0, 1, 0),
(191022, 23705, 530, 1, 6772.591, -7553.142, 127.1288, 3.874631, 300, 300, 0, 1, 0),
(191023, 23705, 530, 1, 6729.76, -7549.407, 130.1419, 2.181662, 300, 300, 0, 1, 0),
(191024, 23745, 530, 1, 6774.364, -7632.227, 127.4824, 4.014257, 300, 300, 0, 0, 0),
(191025, 23747, 530, 1, 6771.96, -7556.53, 127.1055, 1.371836, 300, 300, 0, 0, 0),
(191026, 23747, 530, 1, 6754.189, -7573.991, 127.3143, 4.046139, 300, 300, 0, 0, 0),
(191027, 23747, 530, 1, 6779.196, -7573.201, 128.1892, 6.108652, 300, 300, 0, 0, 0),
(191028, 23747, 530, 1, 6765.479, -7568.003, 127.0329, 6.123527, 300, 300, 1, 0, 1),
(191029, 23747, 530, 1, 6767.385, -7574.116, 127.0642, 1.553343, 300, 300, 0, 0, 0),
(191030, 23766, 530, 1, 6742.246, -7556.369, 126.2342, 2.164208, 300, 300, 0, 0, 0),
(191031, 25145, 530, 1, 6764.315, -7791.432, 151.7633, 1.58825, 300, 300, 0, 0, 0),
(191032, 25145, 530, 1, 6858.053, -7786.21, 130.1179, 1.37881, 300, 300, 0, 0, 0),
(191033, 25145, 530, 1, 6838.432, -7786.18, 130.0692, 1.53589, 300, 300, 0, 0, 0),
(191034, 25145, 530, 1, 6835.436, -7798.48, 134.4359, 2.181662, 300, 300, 0, 0, 0),
(191035, 25145, 530, 1, 6815.573, -7795.287, 132.3109, 1.099557, 300, 300, 0, 0, 0),
(191036, 25145, 530, 1, 6776.121, -7762.384, 128.7724, 0.5235988, 300, 300, 0, 0, 0),
(191037, 25145, 530, 1, 6782.688, -7739.662, 126.3441, 0.3141593, 300, 300, 0, 0, 0),
(191038, 25145, 530, 1, 6784.555, -7772.554, 142.8279, 0.9250245, 300, 300, 0, 0, 0),
(191039, 25145, 530, 1, 6813.937, -7772.282, 127.3309, 6.230825, 300, 300, 0, 0, 0),
(191040, 25145, 530, 1, 6802.713, -7761.098, 126.9909, 0.6632251, 300, 300, 0, 0, 0),
(191041, 25145, 530, 1, 6871.867, -7751.064, 126.6381, 2.076942, 300, 300, 0, 0, 0),
(191042, 25145, 530, 1, 6833.787, -7744.133, 124.7651, 0.4363323, 300, 300, 0, 0, 0),
(191043, 25145, 530, 1, 6811.601, -7720.997, 125.9592, 4.502949, 300, 300, 0, 0, 0),
(191044, 25145, 530, 1, 6807.31, -7690.354, 130.6215, 0.4537856, 300, 300, 0, 0, 0),
(191045, 25145, 530, 1, 6767.954, -7611.863, 128.5933, 5.978865, 300, 300, 0, 0, 0),
(191046, 25145, 530, 1, 6770.705, -7618.815, 128.5024, 1.04698, 300, 300, 0, 0, 0),
(191047, 25145, 530, 1, 6774.724, -7617.176, 128.606, 1.858885, 300, 300, 0, 0, 0),
(191048, 25145, 530, 1, 6775.352, -7696.511, 127.8589, 3.311896, 300, 300, 0, 0, 2),
(191049, 25145, 530, 1, 6728.52, -7572.138, 127.3643, 0.4014257, 300, 300, 0, 0, 0),
(191050, 25145, 530, 1, 6756.514, -7545.18, 126.2002, 5.096361, 300, 300, 0, 0, 0),
(191051, 25145, 530, 1, 6793.504, -7555.502, 126.4743, 3.717551, 300, 300, 0, 0, 0),
(191052, 25145, 530, 1, 6795.15, -7589.807, 127.6219, 3.141593, 300, 300, 0, 0, 0);

DELETE FROM `creature_movement` WHERE `id` = 191048;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(191048, 1, 6753.694, -7696.122, 127.7129, 0, 0, 100),
(191048, 2, 6775.352, -7696.511, 127.8589, 0, 0, 100);

-- Coren Direbrew 23872 - probably not all
UPDATE `creature_template` SET `MechanicImmuneMask` = `MechanicImmuneMask`|1024|2048 WHERE `entry` = 23872;

-- Ruul the Darkener 21315
UPDATE `creature_template` SET `MechanicImmuneMask` = 42024831 WHERE `entry` = 21315;

-- Cyrukh the Firelord 21181
UPDATE `creature_template` SET `MechanicImmuneMask` = 42106879 WHERE `entry` = 21181;

-- Vim'gol's Circle Bunny 23040
UPDATE `creature_template` SET `UnitFlags` = 0 WHERE `entry` = 23040; -- 33554432

-- Vim'gol's Circle Summon Visual Bunny 23081
UPDATE `creature_template` SET `UnitFlags` = 0 WHERE `entry` = 23081; -- 33554432

-- Darkspine Siren 25073
UPDATE `creature_template` SET `InhabitType` = 3 WHERE `entry` = 25073;

-- Mekthorg the Wild 18677
UPDATE `creature_template` SET `FactionAlliance` = 1662, `FactionHorde` = 1662, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 18677;

-- s.3612 Name: Bloodscalp Pet
-- guid 1947,1665,1312,1237,1115,1070
DELETE FROM `creature` WHERE `id` = 698;

