-- Remove all data in creature.equipment_id, as column is to be removed.
-- Moved to creature_spawn_data_template, we might get some sweet feature for creature_equip_template soon
-- which will allow multisetting weapons in the base template so it does not have to be scripted
-- based on https://github.com/cmangos/wotlk-db/commit/97b9ff6ec24e36bc4e06db6050e7c31fd2ec4097

-- SELECT entry,name,equipmenttemplateid FROM creature_template where equipmenttemplateid > 30000; -- 70 -> 1 (odd case)
-- SELECT guid,id,equipment_id FROM creature where equipment_id > 0 order by id,guid; -- 422 -> 0
-- SELECT * FROM creature_equip_template_raw; -- 1089 -> 1039, should be reduced to 0 at some point
-- SELECT * FROM creature_equip_template; -- 8378 -> 8388

-- remove unneeded creature_spawn_data_template "100", fix in creature_template
-- https://github.com/cmangos/tbc-db/commit/526fb9c97f2023c65e8b124ccb6e42bab51636e7
DELETE FROM `creature_spawn_data_template` WHERE `entry` = 100; -- set faction 132, default faction for c.5723 should be 132
UPDATE `creature_template` SET `Faction` = 132 WHERE `entry` = 5723; -- 914 - Warug's Target Dummy
UPDATE dbscripts_on_quest_end SET dataint4=0 WHERE id = 1371 AND command=10 AND datalong = 5723;

-- remove unneeded creature_spawn_data_template "5", fix in creature_template
-- https://github.com/cmangos/tbc-db/commit/e523030ae7399dad5e5d6c2f49dc8990b2e31afd
DELETE FROM `creature_spawn_data_template` WHERE `entry` = 5; -- set correct npcflags in creature_template instead of messing around like this
DELETE FROM `creature_spawn_data` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 18898);
UPDATE `creature_template` SET `NpcFlags` = 128 WHERE `entry` = 18898;

-- =======
-- CLASSIC
-- =======

-- Witherbark Shadowcaster 2553 (guid 140697)
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 2553; -- same as 2553
DELETE FROM `creature_equip_template` WHERE `entry` = 50009; -- 1908	0	0

-- Witherbark Headhunter 2556
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 2556; -- same as 2556
DELETE FROM `creature_equip_template` WHERE `entry` = 50062; -- 2827	0	0

-- Hammerfall Guardian 2621 - this one repairs roof on one of the buildings there (unique equip confirmed) - this guy didnt exist in Classic (only tbc+) 
UPDATE creature SET equipment_id = 0 WHERE id = 2621;
DELETE FROM creature_addon where guid IN (SELECT guid FROM creature where id = 2621) AND `emote` = 0; -- all except worker
REPLACE INTO `creature_template_addon` (`entry`, `sheath_state`) VALUES (2621, 1);
DELETE FROM `creature_spawn_data` WHERE guid IN (11210);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(11210,262101);
DELETE FROM `creature_spawn_data_template` WHERE `entry` = 262101;
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(262101,262101);
UPDATE `creature_equip_template` SET `equipentry3` = 0 WHERE `entry` = 2621; -- 10612 12453 - wrong rangeslot
DELETE FROM `creature_equip_template` WHERE `entry` = 262101;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(262101, 5956, 12453, 0); -- roof worker

-- Peon 14901 - confirmed
DELETE FROM `creature_equip_template` WHERE `entry` IN (55136); -- 1906	1906	0 not even used by this npc
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 14901;
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1490101, 1490101);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1490102, 1490102);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1490103, 1490103);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1490104, 1490104);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1490105, 1490105);
DELETE FROM `creature_equip_template` WHERE `entry` BETWEEN 1490101 AND 1490105;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(1490101, 12629, 0, 0),
(1490102, 1910, 0, 0),
(1490103, 1910, 2081, 0),
(1490104, 1910, 13604, 0),
(1490105, 1910, 13605, 0);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1490102 FROM `creature` WHERE `id` = 14901 AND `guid` IN (13756,13752,13761,13763,13753,13764,13757,13762,13754,13769);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1490103 FROM `creature` WHERE `id` = 14901 AND `guid` = 13765;

-- Darkmoon Faire Carnie 14849
DELETE FROM `creature_equip_template` WHERE `entry` = 50000; -- 3362, 13604, 0 & 2361, 0, 0
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 14849;
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1484901, 1484901);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1484902, 1484902);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1484903, 1484903);
DELETE FROM `creature_equip_template` WHERE `entry` BETWEEN 1484901 AND 1484903;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(1484901, 3362, 13604, 0),
(1484902, 3362, 13605, 0),
(1484903, 5292, 0, 0);

REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1484903 FROM `creature` WHERE `id` = 14849 AND `guid` IN (141501,141500,141001,141005,141000,141002,141507,141504,141503,141204,141203,141202,141201,141200);
REPLACE INTO `creature_addon` (`guid`, `emote`, `sheath_state`) SELECT `guid`, 234, 1 FROM `creature` WHERE `id` = 14849 AND `guid` IN (141501,141500,141001,141005,141000,141002,141507,141504,141503,141204,141203,141202,141201,141200);

-- Roloch 14488
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 14488;
DELETE FROM `creature_equip_template` WHERE `entry` = 55186;

UPDATE `creature` SET `equipment_id` = 0 WHERE `guid` = 1007172; -- id 1122 equip 694

-- ===========
-- TBC TBC TBC
-- ===========

-- Expedition Warden 17855 - confirmed
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 17855;
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1785501, 1785501);
DELETE FROM `creature_equip_template` WHERE `entry` = 1785501;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(1785501, 1906, 0, 12523);
DELETE FROM `creature_spawn_data` WHERE guid = 63553;
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(63553,1785501);

-- Warmaul Warlock 18037 (18037, 14845, 0, 0)
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 18037;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51503; -- 36154	0	16752	33492738	0	33492994	781	0	25

-- Shadowmoon Peon 19355 (19355, 1903, 0, 0) or nothing
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 19355;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 50002; -- 5136	0	0	50267138	0	0	781	0	0

-- Kor'kron Defender 19362 (5 sets including nothing)
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 19362;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 19362;
REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`) VALUES (1936201, 1936201); -- some have 0 equipment, handled by entry fallback value
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1936201 FROM `creature` WHERE `id` = 19362 AND `guid` NOT IN (69075,69092,69091,69081,69079,69087,69082);

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 1936201 AND 1936205;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1936201, 0, 0, 45, 0, 1936201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Kor\'kron Defender - Set Random Equipment');

DELETE FROM `dbscript_random_templates` WHERE `id` = 1936201;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(1936201, 1, 1936202, 0, 'Kor\'kron Defender - Set Random Equipment'),
(1936201, 1, 1936203, 0, 'Kor\'kron Defender - Set Random Equipment'),
(1936201, 1, 1936204, 0, 'Kor\'kron Defender - Set Random Equipment'),
(1936201, 1, 1936205, 0, 'Kor\'kron Defender - Set Random Equipment');

INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1936202, 0, 0, 42, 0, 0, 0, 0, 0, 0, 30178, 0, 2507, 0, 0, 0, 0, 0, 0, 0, 0, 'Kor\'kron Defender - EquipSet 1'), -- old data shows rangeweapon 2507 for all of these.
(1936203, 0, 0, 42, 0, 0, 0, 0, 0, 0, 30179, 0, 2507, 0, 0, 0, 0, 0, 0, 0, 0, 'Kor\'kron Defender - EquipSet 2'),
(1936204, 0, 0, 42, 0, 0, 0, 0, 0, 0, 30180, 30180, 2507, 0, 0, 0, 0, 0, 0, 0, 0, 'Kor\'kron Defender - EquipSet 3'),
(1936205, 0, 0, 42, 0, 0, 0, 0, 0, 0, 30181, 21549, 2507, 0, 0, 0, 0, 0, 0, 0, 0, 'Kor\'kron Defender - EquipSet 4');

DELETE FROM `creature_equip_template` WHERE `entry` IN (50010,50011,50012,50013); -- dbscripts_on_relay
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 52196; -- 21342	0	0	352453634	0	0	781	0	0
	
-- Coilskar Defender 19762 (19762, 10614, 1984, 0)
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 19762;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51501; -- 36036	7433	0	33492738	33492738	0	781	781	0

-- Montok Redhands 20269 (20269, 18419, 0, 0)
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 20269;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51755; -- 40789	0	0	33492738	0	0	781	0	0

-- Adam Eternum 20273 (20273, 21573, 0, 0)
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 20273;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51831; -- 41072	35878	0	33490690	33490436	0	781	1038	0

-- Keldor the Lost 20274 (20274, 13722, 0, 0) - shared same entry as Ethereum Slayer 20896
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 20274;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51582; -- 40668	0	0	33488898	0	0	1037	0	0

-- Wolf-Sister Maka 20276 (20276, 14877, 0, 0)
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 20276;
UPDATE `creature_template_addon` SET `sheath_state` = 0 WHERE `entry` = 20276;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51694; -- 10815	10814	0	33492482	33492482	0	1805	1805	0

-- Iravar 20362 (20362, 25688, 0, 0)
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 20362;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51921; -- 7438	0	24930	50267138	0	50266626	781	0	15

-- Yula the Fair 20384 (20384, 26003, 0, 0)
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 20384;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51934; -- 7492	6434	0	33490690	33492738	0	781	781	0

-- Deathforge Guardian 20878 (20878, 10612, 12454, 0)
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 20878;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51565; -- 39351	0	0	33489154	0	0	273	0	0

-- Demon Hunter Initiate 21180 (21180, 5597, 5597, 0)
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 21180;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 52090; -- 0	40867	0	0	33490436	0	0	1038	0

-- Illidari Jailor 21520 (21520, 30624, 0, 0)
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 21520;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 52197; -- 37410	0	0	33490434	0	0	529	0	0

-- Sunfury Eradicator 21742 (21742, 27405, 24322, 0) & (21742, 5956, 24322, 0)
REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`) VALUES (2174201, 2174201); -- some have 0 equipment, handled by entry fallback value
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 2174201 FROM `creature` WHERE `id` = 21742 AND `guid` IN (32338,32685,32687,32688,75989,75988,32686);

DELETE FROM `dbscripts_on_relay` WHERE `id` = 2174201;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(2174201, 0, 0, 42, 0, 0, 0, 0, 0, 0, 5956, 24322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunfury Eradicator - EquipSet 2');

UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 21742;
DELETE FROM `creature_equip_template` WHERE `entry` = 50151; -- 5956	24322	0 workers
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 52094; -- 42759	42760	0	33492226	33492226	0	1813	1814	0

-- Sunfury Blood Lord 21743 (21743, 29403, 24328, 0)
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 21743;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 52095; -- 34820	0	0	50267138	0	0	781	0	0

-- Spellbound Terrorguard 21908 (21908, 25816, 25818, 0)
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 21908;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51536; -- 37101	0	37019	33488898	0	50266626	269	0	15

-- Fenissa the Assassin 22060 (22060, 31669, 0, 0)
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 22060;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51050; -- 22319	0	6235	33488898	0	50266626	781	0	15

-- Gan'arg Technician 21960 (21960, 1911, 0, 0)
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 21960;
-- DELETE FROM `creature_equip_template` WHERE `entry` = 55481; -- still used by other npcs

DELETE FROM `creature_equip_template` WHERE `entry` IN (52512,52513); -- 17259,17264, guids 5430016,5430017,5430024,5430025

-- Eclipsion Soldier 22016 (6 sets, two very small chance)
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 22016;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 22016;
REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`) VALUES (2201601, 2201601);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 2201601 FROM `creature` WHERE `id` = 22016;

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 2201601 AND 2201607;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(2201601, 0, 0, 45, 0, 2201601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eclipsion Soldier - Set Random Equipment');

DELETE FROM `dbscript_random_templates` WHERE `id` = 2201601;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(2201601, 1, 2201602, 0, 'Eclipsion Soldier - Set Random Equipment'),
(2201601, 1, 2201603, 0, 'Eclipsion Soldier - Set Random Equipment'),
(2201601, 1, 2201604, 0, 'Eclipsion Soldier - Set Random Equipment'),
(2201601, 1, 2201605, 0, 'Eclipsion Soldier - Set Random Equipment'),
(2201601, 1, 2201606, 0.1, 'Eclipsion Soldier - Set Random Equipment'),
(2201601, 1, 2201607, 0.1, 'Eclipsion Soldier - Set Random Equipment');

INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(2201602, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31205, 31205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eclipsion Soldier - EquipSet 1'),
(2201603, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31206, 31466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eclipsion Soldier - EquipSet 2'),
(2201604, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eclipsion Soldier - EquipSet 3'),
(2201605, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eclipsion Soldier - EquipSet 4'),
(2201606, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31207, 31205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eclipsion Soldier - EquipSet 5'), -- 1:1000 chance
(2201607, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31208, 31205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eclipsion Soldier - EquipSet 6'); -- ~1:1000 chance

DELETE FROM `creature_equip_template` WHERE `entry` IN (55335); -- 1901	12745	0

-- Coilskar Myrmidon 19765
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 19765; -- same
DELETE FROM `creature_equip_template` WHERE `entry` = 50129; -- 28965	0	0
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1976501, 1976501);
DELETE FROM `creature_equip_template` WHERE `entry` = 1976501;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(1976501, 2028, 0, 0);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1976501 FROM `creature` WHERE `id` = 19765 AND `guid` IN (150074,150075);

-- Eclipsion Spellbinder 22017
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 22017; -- same as 22017
DELETE FROM `creature_equip_template` WHERE `entry` = 50134; -- 24321	0	0

-- Dragonmaw Peon 22252
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 22252;
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (2225201, 2225201);
DELETE FROM `creature_equip_template` WHERE `entry` = 2225201;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(2225201, 2202, 0, 0);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 2225201 FROM `creature` WHERE `id` = 22252 AND `guid` IN (127273,117649,117648,117646,117634,127272,117633);

-- Thrallmar Grunt 16580 - RP confirmed
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 16580; -- 99% have same template
UPDATE `creature_equip_template` SET `equipentry3` = 0 WHERE `entry` = 16580;
DELETE FROM `creature_equip_template` WHERE `entry` = 50032; -- 5278	0	0 not even used by this entry, dagger rp
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1658001, 1658001);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1658002, 1658002);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1658003, 1658003);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1658004, 1658004);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1658005, 1658005);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1658006, 1658006);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1658007, 1658007);
DELETE FROM `creature_equip_template` WHERE `entry` BETWEEN 1658001 AND 1658007;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(1658001, 0, 12452, 0), -- only shield
(1658002, 2184, 0, 0), -- knife for rp
(1658003, 3350, 0, 0), -- bone
(1658004, 17383, 12452, 0), -- black axe
(1658005, 14877, 12452, 0), -- hatchet and shield
(1658006, 18062, 12452, 0), -- red hammer
(1658007, 10898, 12456, 0); -- hatchet and shield v2
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1658002 FROM `creature` WHERE `id` = 16580 AND `guid` = 57541;
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1658003 FROM `creature` WHERE `id` = 16580 AND `guid` = 57539;

-- Thrallmar Marksman 16582
UPDATE `creature_equip_template` SET `equipentry1` = 0 WHERE `entry` = 16582;
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1658201, 1658201);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1658202, 1658202);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1658203, 1658203);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1658204, 1658204);
DELETE FROM `creature_equip_template` WHERE `entry` BETWEEN 1658201 AND 1658204;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(1658201, 14877, 0, 13924), -- dark portal
(1658202, 10898, 12456, 13924),
(1658203, 17383, 0, 13924),
(1658204, 18062, 0, 13924);
UPDATE creature SET `equipment_id` = 0 WHERE guid IN (57542,57543,57492);
DELETE FROM `creature_spawn_data` WHERE guid IN (57542,57543,57492);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(57542,1658201),(57543,1658201),(57492,1658204);

UPDATE `creature` SET `id` = 0 WHERE `guid` IN (57544,57590,57592,57545,57493,57547,57593,57591,57546);
DELETE FROM `creature_addon` WHERE `guid` IN (57544,57590,57592,57545,57493,57547,57593,57591,57546);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16580 FROM `creature` WHERE `guid` IN (57544,57590,57592,57545,57493,57547,57593,57591,57546); -- Thrallmar Grunt
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16582 FROM `creature` WHERE `guid` IN (57544,57590,57592,57545,57493,57547,57593,57591,57546); -- Thrallmar Marksman
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) SELECT `guid`, 16599 FROM `creature` WHERE `guid` IN (57544,57590,57592,57545,57493,57547,57593,57591,57546); -- Thrallmar Wolf Rider

-- Nethergarde Infantry 16831
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 16831;
UPDATE `creature_template` SET `EquipmentTemplateId` = 16831 WHERE `entry` = 16831;
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (5, 0); -- no equipment
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1683101, 1683101);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1683102, 1683102);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1683103, 1683103);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1683104, 1683104);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1683105, 1683105);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1683106, 1683106);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1683107, 1683107);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1683108, 1683108);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1683109, 1683109);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1683110, 1683110);
DELETE FROM `creature_equip_template` WHERE `entry` = 16831;
DELETE FROM `creature_equip_template` WHERE `entry` BETWEEN 1683101 AND 1683110;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(16831, 1903, 0, 0),
(1683101, 2704, 13407, 0), -- most common, eat and drink
(1683102, 12856, 12857, 0),
(1683103, 1904, 0, 0),
(1683104, 12858, 13606, 0),
(1683105, 2717, 3757, 0),
(1683106, 5282, 0, 0),
(1683107, 3361, 0, 0),
(1683108, 1905, 0, 0),
(1683109, 1901, 0, 0),
(1683110, 1899, 0, 0); -- 55442
DELETE FROM `creature_equip_template` WHERE `entry` = 55442;

REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1683101 FROM `creature` WHERE `id` = 16831 AND `guid` IN (57896,57897,57898,57899);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 5 FROM `creature` WHERE `id` = 16831 AND `guid` IN (57889,57904,57895);
DELETE FROM `creature_equip_template` WHERE `entry` = 50124; -- some 16831 (57896,57897,57898,57899)

UPDATE `creature` SET `equipment_id` = 0 WHERE `guid` IN (58154,58153,58149,58142,57942);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 5 FROM `creature` WHERE `guid` IN (58154,58153,58149,58142,57942); -- also no equipment (50123); ids 16864 and 20513
DELETE FROM `creature_equip_template` WHERE `entry` = 50123; -- no eq

-- 16842,16864 share spawns quite often
UPDATE `creature_template` SET `EquipmentTemplateId` = 16864 WHERE `entry` = 16864;
UPDATE `creature_template` SET `EquipmentTemplateId` = 16842 WHERE `entry` = 16842;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` IN (16842,16864);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1684201, 1684201);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1684202, 1684202);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1684203, 1684203);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1684204, 1684204);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1684205, 1684205);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1684206, 1684206);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1686401, 1686401);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1686402, 1686402);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1686403, 1686403);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1686404, 1686404);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1686405, 1686405);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1686406, 1686406);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1686407, 1686407);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1686408, 1686408);
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (1686409, 1686409);
DELETE FROM `creature_equip_template` WHERE `entry` BETWEEN 1684201 AND 1684206;
DELETE FROM `creature_equip_template` WHERE `entry` BETWEEN 1686401 AND 1686410;
DELETE FROM `creature_equip_template` WHERE `entry` = 16842;
DELETE FROM `creature_equip_template` WHERE `entry` = 16864;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(16842, 12944, 143, 0),
(1684201, 1903, 143, 0),
(1684202, 1899, 1895, 0),
(1684203, 1905, 1905, 0),
(1684204, 1905, 2558, 0),
(1684205, 3361, 1896, 0),
(1684206, 5282, 5282, 0),

(16864, 1905, 0, 0), -- 55235
(1686401, 1905, 0, 0), -- 55235
(1686402, 12856, 12857, 0),
(1686403, 1903, 0, 0),
(1686404, 1901, 0, 0),
(1686405, 2717, 3757, 0),
(1686406, 12858, 13606, 0),
(1686407, 5282, 0, 0),
(1686408, 1904, 0, 0),
(1686409, 1899, 0, 0);

DELETE FROM `creature_equip_template` WHERE `entry` = 55235;

UPDATE `creature` SET `equipment_id` = 0 WHERE `guid` IN (58138,58139); -- spawn_entry so id is already 0
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1686403 FROM `creature` WHERE `guid` IN (58138,58139,57933,58140);
DELETE FROM `creature_equip_template` WHERE `entry` = 50007;

-- Nether Technician <B.O.O.M.> 20203 - some using hammers for repairs
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 20203;
DELETE FROM `creature_spawn_data_template` WHERE `entry` BETWEEN 2020301 AND 2020303;
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(2020301,2020301),(2020302,2020302),(2020303,2020303);
UPDATE creature SET `equipment_id` = 0 WHERE id IN (71807,71809,71816,71818);
DELETE FROM `creature_spawn_data` WHERE guid IN (71807,71809,71816,71818);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(71807,2020301),(71809,2020301),(71816,2020301),(71818,2020301);
DELETE FROM `creature_equip_template` WHERE `entry` BETWEEN 2020301 AND 2020303;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(2020301, 1903, 0, 0),
(2020302, 1911, 0, 0), -- most common
(2020303, 2704, 0, 0);

-- Worker 18800 - 1 has diff
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (1880001);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES
(1880001,1880001);
UPDATE creature SET `equipment_id` = 0 WHERE guid IN (67155);
DELETE FROM `creature_spawn_data` WHERE guid IN (67155);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(67155,1880001);
DELETE FROM `creature_equip_template` WHERE `entry` = 1880001;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(1880001, 2197, 0, 0);
DELETE FROM `creature_equip_template` WHERE `entry` = 55344; -- guid 67155

-- Darkspear Axe Thrower 18970
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 18970;
DELETE FROM `creature_equip_template` WHERE `entry` = 50300; -- same as entry

-- Wildhammer Guard 19353
UPDATE `creature_equip_template` SET `equipentry3` = 0 WHERE `entry` = 19353;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 19353;
DELETE FROM `creature_equip_template` WHERE `entry` = 50143; -- same as entry

-- Dreadwarden 19744
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 19744;
DELETE FROM `creature_equip_template` WHERE `entry` = 50139; -- same as entry

-- guid equipments that should just fallback
UPDATE `creature` SET `equipment_id` = 0 WHERE `guid` IN (
132955, -- 19364	50142 -- Kor'kron Rider
132956 -- 19364	50142
);
DELETE FROM `creature_equip_template` WHERE `entry` = 50142; -- same as entry

-- Coilskar Siren 19768
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 19768;
DELETE FROM `creature_equip_template` WHERE `entry` = 50135; -- same as entry

-- Coilskar Waterkeeper 19789
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 19789;
DELETE FROM `creature_equip_template` WHERE `entry` = 50144; -- same as entry	

-- Illidari Shocktrooper 19802
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 19802;
DELETE FROM `creature_equip_template` WHERE `entry` = 55287; -- wrong

-- Deathforge Summoner 20872
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 20872;
DELETE FROM `creature_equip_template` WHERE `entry` = 50137; -- same as entry

-- Ethereal Plunderer 21368
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 21368;
UPDATE `creature_equip_template` SET `entry` = 2136801 WHERE `entry` = 71305;
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (2136801, 2136801);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 2136801 FROM `creature` WHERE `guid` IN (152986,153006,152982,153007);

-- Ethereal Nethermancer 21370
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 21370;
UPDATE `creature_equip_template` SET `entry` = 2137001 WHERE `entry` = 71306;
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (2137001, 2137001);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 2137001 FROM `creature` WHERE `guid` IN (153016,153020);

-- Ethereal Arcanist 21405
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 21405;
UPDATE `creature_equip_template` SET `entry` = 2140501 WHERE `entry` = 71307;
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (2140501, 2140501);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 2140501 FROM `creature` WHERE `guid` IN (153049,153048,153046);

-- Ashtongue Deathsworn 21701
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 21701;
DELETE FROM `creature_equip_template` WHERE `entry` = 50145; -- same as entry

-- Dragonmaw Shaman 21720
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 21720;
DELETE FROM `creature_equip_template` WHERE `entry` = 50140; -- same as entry	

-- Shadowmoon Scout 21749
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 21749;
DELETE FROM `creature_equip_template` WHERE `entry` = 50136; -- same as entry	

-- Skettis Soulcaller 21911 - 1 has diff
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 21911;
UPDATE `creature_equip_template` SET `entry` = 2191101 WHERE `entry` = 50161;
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (2191101, 2191101);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 2191101 FROM `creature` WHERE `guid` IN (242729);

-- Cataclysm Overseer 21961
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 21961;
DELETE FROM `creature_equip_template` WHERE `entry` = 50131; -- same as entry	

-- Eclipsion Cavalier 22018 (5 sets)
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `EquipmentTemplateId` = 0 WHERE `entry` = 22018;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 22018;
REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`) VALUES (2201801, 2201801);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 2201801 FROM `creature` WHERE `id` = 22018;

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 2201801 AND 2201806;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(2201801, 0, 0, 45, 0, 2201801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eclipsion Cavalier - Set Random Equipment');

DELETE FROM `dbscript_random_templates` WHERE `id` = 2201801;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(2201801, 1, 2201802, 0, 'Eclipsion Cavalier - Set Random Equipment'),
(2201801, 1, 2201803, 0, 'Eclipsion Cavalier - Set Random Equipment'),
(2201801, 1, 2201804, 0, 'Eclipsion Cavalier - Set Random Equipment'),
(2201801, 1, 2201805, 0, 'Eclipsion Cavalier - Set Random Equipment'),
(2201801, 1, 2201806, 0, 'Eclipsion Cavalier - Set Random Equipment');

INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(2201802, 0, 0, 42, 0, 0, 0, 0, 0, 0, 30636, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eclipsion Cavalier - EquipSet 1'),
(2201803, 0, 0, 42, 0, 0, 0, 0, 0, 0, 25758, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eclipsion Cavalier - EquipSet 2'),
(2201804, 0, 0, 42, 0, 0, 0, 0, 0, 0, 29417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eclipsion Cavalier - EquipSet 3'),
(2201805, 0, 0, 42, 0, 0, 0, 0, 0, 0, 12403, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eclipsion Cavalier - EquipSet 4'),
(2201806, 0, 0, 42, 0, 0, 0, 0, 0, 0, 27405, 24328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eclipsion Cavalier - EquipSet 5');

DELETE FROM `creature_equip_template` WHERE `entry` = 50133; -- 29417	0	0

-- Dragonmaw Ascendant 22253 (6 sets)
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `EquipmentTemplateId` = 0 WHERE `entry` = 22253;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 22253;
REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`) VALUES (2225301, 2225301);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 2225301 FROM `creature` WHERE `id` = 22253;

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 2225301 AND 2225307;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(2225301, 0, 0, 45, 0, 2225301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Ascendant - Set Random Equipment');

DELETE FROM `dbscript_random_templates` WHERE `id` = 2225301;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(2225301, 1, 2225302, 80, 'Dragonmaw Ascendant - Set Random Equipment'),
(2225301, 1, 2225303, 0, 'Dragonmaw Ascendant - Set Random Equipment'),
(2225301, 1, 2225304, 0, 'Dragonmaw Ascendant - Set Random Equipment'),
(2225301, 1, 2225305, 0, 'Dragonmaw Ascendant - Set Random Equipment'),
(2225301, 1, 2225306, 3, 'Dragonmaw Ascendant - Set Random Equipment'),
(2225301, 1, 2225307, 2, 'Dragonmaw Ascendant - Set Random Equipment');

INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(2225302, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Ascendant - EquipSet 1'),
(2225303, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Ascendant - EquipSet 2'),
(2225304, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Ascendant - EquipSet 3'),
(2225305, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Ascendant - EquipSet 4'),
(2225306, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Ascendant - EquipSet 5'),
(2225307, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31600, 31466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Ascendant - EquipSet 6');

DELETE FROM `creature_equip_template` WHERE `entry` = 50148; -- 31603	0	0

-- Illidari Ravager 22857
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 22857; -- only MH 5287
DELETE FROM `creature_equip_template` WHERE `entry` = 55287; -- already deleted, wrong

-- Shadowhoof Assassin 22858
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 22858;
DELETE FROM `creature_equip_template` WHERE `entry` = 55191; -- same as entry

-- Lightsworn Elekk Rider 22966
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 22966;
DELETE FROM `creature_equip_template` WHERE `entry` = 50138; -- same as entry

-- Scryer Cavalier 22967
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 22967;
DELETE FROM `creature_equip_template` WHERE `entry` = 55309; -- same as entry

-- Skyguard Navigator 22982 - 1 diff
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 22982;
UPDATE `creature_equip_template` SET `entry` = 2298201 WHERE `entry` = 55616;
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (2298201, 2298201);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 2298201 FROM `creature` WHERE `guid` IN (79868);

-- Dragonmaw Enforcer 23146 (6 sets) - also can have nothing set, not sure if rp
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `EquipmentTemplateId` = 0 WHERE `entry` = 23146;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 23146;
REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`) VALUES (2314601, 2314601);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 2314601 FROM `creature` WHERE `id` = 23146;

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 2314601 AND 2314607;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(2314601, 0, 0, 45, 0, 2314601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Enforcer - Set Random Equipment');

DELETE FROM `dbscript_random_templates` WHERE `id` = 2314601;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(2314601, 1, 2314602, 0, 'Dragonmaw Enforcer - Set Random Equipment'),
(2314601, 1, 2314603, 0, 'Dragonmaw Enforcer - Set Random Equipment'),
(2314601, 1, 2314604, 0, 'Dragonmaw Enforcer - Set Random Equipment'),
(2314601, 1, 2314605, 0, 'Dragonmaw Enforcer - Set Random Equipment'),
(2314601, 1, 2314606, 0, 'Dragonmaw Enforcer - Set Random Equipment'),
(2314601, 1, 2314607, 0, 'Dragonmaw Enforcer - Set Random Equipment');

INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(2314602, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31603, 31466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Enforcer - EquipSet 1'),
(2314603, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Enforcer - EquipSet 2'),
(2314604, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Enforcer - EquipSet 3'),
(2314605, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31600, 31466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Enforcer - EquipSet 4'),
(2314606, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Enforcer - EquipSet 5'),
(2314607, 0, 0, 42, 0, 0, 0, 0, 0, 0, 31601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dragonmaw Enforcer - EquipSet 6');

DELETE FROM `creature_equip_template` WHERE `entry` = 50147; -- 31600	31466	0
DELETE FROM `creature_equip_template` WHERE `entry` = 50149; -- 31601	0	0
DELETE FROM `creature_equip_template` WHERE `entry` = 50150; -- 31603	31466	0

-- Skyguard Windcharger 23257 - 3 have diff
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 23257;
UPDATE `creature_equip_template` SET `entry` = 2325701 WHERE `entry` = 50130;
REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (2325701, 2325701);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 2325701 FROM `creature` WHERE `guid` IN (79024,79021,79022);

-- Crazed Murkblood Foreman 23305
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 23305;
DELETE FROM `creature_equip_template` WHERE `entry` = 55486; -- same as entry

-- Roitau 25207 - had some meatstick in hand.
DELETE FROM `creature_equip_template` WHERE `entry` = 55386;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 25207;

-- Instance File used, ported to dbscripts_on_relay
DELETE FROM `creature_equip_template` WHERE `entry` IN (52512,52513,50130,2123201);

-- templates with equipment > 30k, in parts using _raw
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 1244; -- Rethiel the Greenwarden	51399
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51399;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 1385; -- Brawn	51316
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51316;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 9779; -- Flamekin Rager	55093
DELETE FROM `creature_equip_template` WHERE `entry` = 55093;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 10377; -- Elu	51070
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51070;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 10739; -- Mulgris Deepriver	51253
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51253;

UPDATE `creature_template` SET `EquipmentTemplateId` = 11099 WHERE `entry` = 11099; -- Argent Guard	55498
UPDATE `creature_equip_template` SET `entry` = 11099 WHERE `entry` = 55498;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 14882; -- Atal'ai Mistress	55083
DELETE FROM `creature_equip_template` WHERE `entry` = 55083;

UPDATE `creature_template` SET `EquipmentTemplateId` = 16706 WHERE `entry` = 16706; -- 	Musal	51153
DELETE FROM `creature_equip_template` WHERE `entry` = 16706;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(16706, 12856, 0, 0);
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51153;

UPDATE `creature_template` SET `EquipmentTemplateId` = 16741 WHERE `entry` = 16741; -- Deriz	55352
UPDATE `creature_equip_template` SET `entry` = 16741 WHERE `entry` = 55352;

UPDATE `creature_template` SET `EquipmentTemplateId` = 16802 WHERE `entry` = 16802; -- Lor'themar Theron	51910
DELETE FROM `creature_equip_template` WHERE `entry` = 16802;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(16802, 14882, 24038, 0);
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51910;

UPDATE `creature_template` SET `EquipmentTemplateId` = 16825 WHERE `entry` = 16825; -- Father Malgor Devidicus	51322
DELETE FROM `creature_equip_template` WHERE `entry` = 16825;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(16825, 2703, 0, 0);
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51322;

UPDATE `creature_template` SET `EquipmentTemplateId` = 17127 WHERE `entry` = 17127; -- Anchorite Avuun	55089
UPDATE `creature_equip_template` SET `entry` = 17127 WHERE `entry` = 55089;

-- 17134	Boulderfist Crusher	55189
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `EquipmentTemplateId` = 0 WHERE `entry` = 17134;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 17134;
REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`) VALUES (1713401, 1713401);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1713401 FROM `creature` WHERE `id` = 17134;

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 1713401 AND 1713408;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1713401, 0, 0, 45, 0, 1713401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boulderfist Crusher - Set Random Equipment');

DELETE FROM `dbscript_random_templates` WHERE `id` = 1713401;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(1713401, 1, 1713402, 0, 'Boulderfist Crusher - Set Random Equipment'),
(1713401, 1, 1713403, 0, 'Boulderfist Crusher - Set Random Equipment'),
(1713401, 1, 1713404, 0, 'Boulderfist Crusher - Set Random Equipment'),
(1713401, 1, 1713405, 0, 'Boulderfist Crusher - Set Random Equipment'),
(1713401, 1, 1713406, 0, 'Boulderfist Crusher - Set Random Equipment'),
(1713401, 1, 1713407, 0, 'Boulderfist Crusher - Set Random Equipment'),
(1713401, 1, 1713408, 0, 'Boulderfist Crusher - Set Random Equipment');

INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1713402, 0, 0, 42, 0, 0, 0, 0, 0, 0, 17942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boulderfist Crusher - EquipSet 1'),
(1713403, 0, 0, 42, 0, 0, 0, 0, 0, 0, 5292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boulderfist Crusher - EquipSet 2'),
(1713404, 0, 0, 42, 0, 0, 0, 0, 0, 0, 5301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boulderfist Crusher - EquipSet 3'),
(1713405, 0, 0, 42, 0, 0, 0, 0, 0, 0, 5491, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boulderfist Crusher - EquipSet 4'),
(1713406, 0, 0, 42, 0, 0, 0, 0, 0, 0, 3326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boulderfist Crusher - EquipSet 5'),
(1713407, 0, 0, 42, 0, 0, 0, 0, 0, 0, 5293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boulderfist Crusher - EquipSet 6'),
(1713408, 0, 0, 42, 0, 0, 0, 0, 0, 0, 5300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boulderfist Crusher - EquipSet 7');

DELETE FROM `creature_equip_template` WHERE `entry` = 55189; -- 5293	0	0

-- 17191	Siltfin Oracle	55520
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `EquipmentTemplateId` = 0 WHERE `entry` = 17191;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 17191;
REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`) VALUES (1719101, 1719101);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1719101 FROM `creature` WHERE `id` = 17191;

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 1719101 AND 1719105;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1719101, 0, 0, 45, 0, 1719101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Siltfin Oracle - Set Random Equipment');

DELETE FROM `dbscript_random_templates` WHERE `id` = 1719101;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(1719101, 1, 1719102, 0, 'Siltfin Oracle - Set Random Equipment'),
(1719101, 1, 1719103, 0, 'Siltfin Oracle - Set Random Equipment'),
(1719101, 1, 1719104, 0, 'Siltfin Oracle - Set Random Equipment'),
(1719101, 1, 1719105, 0, 'Siltfin Oracle - Set Random Equipment');

INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1719102, 0, 0, 42, 0, 0, 0, 0, 0, 0, 6229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Siltfin Oracle - EquipSet 1'),
(1719103, 0, 0, 42, 0, 0, 0, 0, 0, 0, 6225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Siltfin Oracle - EquipSet 2'),
(1719104, 0, 0, 42, 0, 0, 0, 0, 0, 0, 6228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Siltfin Oracle - EquipSet 3'),
(1719105, 0, 0, 42, 0, 0, 0, 0, 0, 0, 6227, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Siltfin Oracle - EquipSet 4');

DELETE FROM `creature_equip_template` WHERE `entry` = 55520; -- NA

-- 17328	Blacksilt Shorestriker	55519
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `EquipmentTemplateId` = 0 WHERE `entry` = 17328;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 17328;
REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`) VALUES (1732801, 1732801);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1732801 FROM `creature` WHERE `id` = 17328;

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 1732801 AND 1732805;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1732801, 0, 0, 45, 0, 1732801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksilt Shorestriker - Set Random Equipment');

DELETE FROM `dbscript_random_templates` WHERE `id` = 1732801;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(1732801, 1, 1732802, 0, 'Blacksilt Shorestriker - Set Random Equipment'),
(1732801, 1, 1732803, 0, 'Blacksilt Shorestriker - Set Random Equipment'),
(1732801, 1, 1732804, 0, 'Blacksilt Shorestriker - Set Random Equipment'),
(1732801, 1, 1732805, 0, 'Blacksilt Shorestriker - Set Random Equipment');

INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1732802, 0, 0, 42, 0, 0, 0, 0, 0, 0, 6229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksilt Shorestriker - EquipSet 1'),
(1732803, 0, 0, 42, 0, 0, 0, 0, 0, 0, 6225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksilt Shorestriker - EquipSet 2'),
(1732804, 0, 0, 42, 0, 0, 0, 0, 0, 0, 6228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksilt Shorestriker - EquipSet 3'),
(1732805, 0, 0, 42, 0, 0, 0, 0, 0, 0, 6227, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Blacksilt Shorestriker - EquipSet 4');

DELETE FROM `creature_equip_template` WHERE `entry` = 55519; -- 6227, wotlk has 6225

UPDATE `creature_template` SET `EquipmentTemplateId` = 17701 WHERE `entry` = 17701; -- 	Lord Xiz	51410
DELETE FROM `creature_equip_template` WHERE `entry` = 17701;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(17701, 17382, 0, 0);
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51410;

-- Horde Peon	51103 - leave for now, cant be that they dont have axes to chop. . .

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18048; -- Bleeding Hollow Archer (1)	51105
DELETE FROM `creature_equip_template` WHERE `entry` = 51105; -- same as base entry.

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18049; -- Bleeding Hollow Darkcaster (1)	51280
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51280;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18052; -- Bonechewer Destroyer (1)	51429
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51429;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18053; -- Bonechewer Hungerer (1)	55555
DELETE FROM `creature_equip_template` WHERE `entry` = 55555; -- same as base entry.

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18054; -- Bonechewer Ravener (1)	55569
DELETE FROM `creature_equip_template` WHERE `entry` = 55569; -- same as base entry.

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18057; -- Hellfire Sentry (1)	51260
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51260;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18058; -- Hellfire Watcher (1)	51024
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51024;

UPDATE `creature_template` SET `EquipmentTemplateId` = 18301 WHERE `entry` = 18301; -- Matron Celestine	55414
UPDATE `creature_equip_template` SET `entry` = 18301 WHERE `entry` = 55414;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18434; -- Vazruden (1)	52183
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 52183;

-- 18475	Mug'gok	55109
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `EquipmentTemplateId` = 0 WHERE `entry` = 18475;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 18475;
REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`) VALUES (1847501, 1847501);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1847501 FROM `creature` WHERE `id` = 18475;

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 1847501 AND 1847507;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1847501, 0, 0, 45, 0, 1847501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mug\'gok - Set Random Equipment');

DELETE FROM `dbscript_random_templates` WHERE `id` = 1847501;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(1847501, 1, 1847502, 0, 'Mug\'gok - Set Random Equipment'),
(1847501, 1, 1847503, 0, 'Mug\'gok - Set Random Equipment'),
(1847501, 1, 1847504, 0, 'Mug\'gok - Set Random Equipment'),
(1847501, 1, 1847505, 0, 'Mug\'gok - Set Random Equipment'),
(1847501, 1, 1847506, 0, 'Mug\'gok - Set Random Equipment'),
(1847501, 1, 1847507, 0, 'Mug\'gok - Set Random Equipment');

INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1847502, 0, 0, 42, 0, 0, 0, 0, 0, 0, 3326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mug\'gok - EquipSet 1'),
(1847503, 0, 0, 42, 0, 0, 0, 0, 0, 0, 5292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mug\'gok - EquipSet 2'),
(1847504, 0, 0, 42, 0, 0, 0, 0, 0, 0, 5293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mug\'gok - EquipSet 3'),
(1847505, 0, 0, 42, 0, 0, 0, 0, 0, 0, 5300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mug\'gok - EquipSet 4'),
(1847506, 0, 0, 42, 0, 0, 0, 0, 0, 0, 5491, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mug\'gok - EquipSet 5'),
(1847507, 0, 0, 42, 0, 0, 0, 0, 0, 0, 17942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mug\'gok - EquipSet 6');

DELETE FROM `creature_equip_template` WHERE `entry` = 55109; -- 5301	0	0

-- 18488	Telaari Watcher	51558 - or nothing
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `EquipmentTemplateId` = 0 WHERE `entry` = 18488;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 18488;
REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`) VALUES (1848801, 1848801);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1848801 FROM `creature` WHERE `id` = 18488;

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 1848801 AND 1848807;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1848801, 0, 0, 45, 0, 1848801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Telaari Watcher - Set Random Equipment');

DELETE FROM `dbscript_random_templates` WHERE `id` = 1848801;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(1848801, 1, 1848802, 0, 'Telaari Watcher - Set Random Equipment'),
(1848801, 1, 1848803, 0, 'Telaari Watcher - Set Random Equipment'),
(1848801, 1, 1848804, 0, 'Telaari Watcher - Set Random Equipment'),
(1848801, 1, 1848805, 0, 'Telaari Watcher - Set Random Equipment');

INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1848802, 0, 0, 42, 0, 0, 0, 0, 0, 0, 27850, 27851, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Telaari Watcher - EquipSet 1'),
(1848803, 0, 0, 42, 0, 0, 0, 0, 0, 0, 27852, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Telaari Watcher - EquipSet 2'),
(1848804, 0, 0, 42, 0, 0, 0, 0, 0, 0, 27850, 27850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Telaari Watcher - EquipSet 3'),
(1848805, 0, 0, 42, 0, 0, 0, 0, 0, 0, 27849, 27849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Telaari Watcher - EquipSet 4');

DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51558; -- 38411	38411	0

-- 18547	Scryer Arcanist	51130 - or mostly nothing
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `EquipmentTemplateId` = 0 WHERE `entry` = 18547;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 18547;
REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`) VALUES (1854701, 1854701);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1854701 FROM `creature` WHERE `id` = 18547;

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 1854701 AND 1854705;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1854701, 0, 0, 45, 0, 1854701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scryer Arcanist - Set Random Equipment');

DELETE FROM `dbscript_random_templates` WHERE `id` = 1854701;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(1854701, 1, 1854702, 0, 'Scryer Arcanist - Set Random Equipment'),
(1854701, 1, 1854703, 0, 'Scryer Arcanist - Set Random Equipment'),
(1854701, 1, 1854704, 0, 'Scryer Arcanist - Set Random Equipment'),
(1854701, 1, 1854705, 0, 'Scryer Arcanist - Set Random Equipment');

INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1854702, 0, 0, 42, 0, 0, 0, 0, 0, 0, 12751, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scryer Arcanist - EquipSet 1'),
(1854703, 0, 0, 42, 0, 0, 0, 0, 0, 0, 12862, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scryer Arcanist - EquipSet 2'),
(1854704, 0, 0, 42, 0, 0, 0, 0, 0, 0, 12742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scryer Arcanist - EquipSet 3'),
(1854705, 0, 0, 42, 0, 0, 0, 0, 0, 0, 12864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scryer Arcanist - EquipSet 4');

DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51130; -- 23177	0	0

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18927;	-- Human Commoner	55059
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 52183;

UPDATE `creature_template` SET `EquipmentTemplateId` = 19012 WHERE `entry` = 19012; -- Sparik	55512
UPDATE `creature_equip_template` SET `entry` = 19012 WHERE `entry` = 55512; -- somtimes also 13611 in offhand

-- 19071	Telaari Elekk Rider	51558
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `EquipmentTemplateId` = 0 WHERE `entry` = 19071;
UPDATE `creature` SET `equipment_id` = 0 WHERE `id` = 19071;
REPLACE INTO `creature_spawn_data_template` (`entry`, `RelayId`) VALUES (1907101, 1907101);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) SELECT `guid`, 1907101 FROM `creature` WHERE `id` = 19071;

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 1907101 AND 1907105;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1907101, 0, 0, 45, 0, 1907101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Telaari Elekk Rider - Set Random Equipment');

DELETE FROM `dbscript_random_templates` WHERE `id` = 1907101;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(1907101, 1, 1907102, 0, 'Telaari Elekk Rider - Set Random Equipment'),
(1907101, 1, 1907103, 0, 'Telaari Elekk Rider - Set Random Equipment'),
(1907101, 1, 1907104, 0, 'Telaari Elekk Rider - Set Random Equipment'),
(1907101, 1, 1907105, 0, 'Telaari Elekk Rider - Set Random Equipment');

INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(1907102, 0, 0, 42, 0, 0, 0, 0, 0, 0, 27850, 27851, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Telaari Elekk Rider - EquipSet 1'),
(1907103, 0, 0, 42, 0, 0, 0, 0, 0, 0, 27852, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Telaari Elekk Rider - EquipSet 2'),
(1907104, 0, 0, 42, 0, 0, 0, 0, 0, 0, 27850, 27850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Telaari Elekk Rider - EquipSet 3'),
(1907105, 0, 0, 42, 0, 0, 0, 0, 0, 0, 27849, 27849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Telaari Elekk Rider - EquipSet 4');

UPDATE `creature_template` SET `EquipmentTemplateId` = 19147 WHERE `entry` = 19147; -- Allerian Peasant	51139 - but mostly no equipment at all!
DELETE FROM `creature_equip_template` WHERE `entry` = 19147;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(19147, 12801, 0, 0); -- (19147, 2704, 0, 0);
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51139; -- 23281 0 0 some bucket

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` IN (19148,19172); -- Dwarf Commoner & Gnome Commoner 55150
DELETE FROM `creature_equip_template` WHERE `entry` = 55150; -- 2714	3697	0

UPDATE `creature_template` SET `EquipmentTemplateId` = 19164 WHERE `entry` = 19164; -- Refugee Child	55366, not all should have it
UPDATE `creature_equip_template` SET `entry` = 19164 WHERE `entry` = 55366;

UPDATE `creature_template` SET `EquipmentTemplateId` = 19612 WHERE `entry` = 19612; -- Irradiated Manager	55135, not all should have it
UPDATE `creature_equip_template` SET `entry` = 19612 WHERE `entry` = 55135;

UPDATE `creature_template` SET `EquipmentTemplateId` = 19661 WHERE `entry` = 19661; -- Viggz Shinesparked	55481
UPDATE `creature_equip_template` SET `entry` = 19661 WHERE `entry` = 55481;
		
UPDATE `creature_template` SET `EquipmentTemplateId` = 19836 WHERE `entry` = 19836; -- Mixie Farshot	55016
UPDATE `creature_equip_template` SET `entry` = 19836 WHERE `entry` = 55016;

UPDATE `creature_template` SET `EquipmentTemplateId` = 19907 WHERE `entry` = 19907; -- Grumbol Grimhammer	51477
DELETE FROM `creature_equip_template` WHERE `entry` = 19907;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(19907, 21573, 0, 0);
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51477; -- 34128 0 0

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 20526; -- 20526	Durnholde Rifleman (1)	50105
DELETE FROM `creature_equip_template` WHERE `entry` = 50105; -- same as 17820, base entry.

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 20527; -- Durnholde Sentry (1)	55115
DELETE FROM `creature_equip_template` WHERE `entry` = 55115;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 20530; -- Durnholde Warden (1)	50106
DELETE FROM `creature_equip_template` WHERE `entry` = 50106;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 21619; -- Unbound Devastator (1)	51651
UPDATE `creature_template` SET `EquipmentTemplateId` = 20881 WHERE `entry` = 20881; -- Unbound Devastator	51651
DELETE FROM `creature_equip_template` WHERE `entry` = 20881;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(20881, 30414, 0, 0);
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51651; -- 41985 0 0

UPDATE `creature_template` SET `EquipmentTemplateId` = 21114 WHERE `entry` = 21114; -- Station Technician	55481
UPDATE `creature_equip_template` SET `entry` = 21114 WHERE `entry` = 55481;

UPDATE `creature_template` SET `EquipmentTemplateId` = 21448 WHERE `entry` = 21448; -- Gadgetzan Sniper	55122
UPDATE `creature_equip_template` SET `entry` = 21448 WHERE `entry` = 55122;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 21585; -- Arcatraz Defender (1)	51578
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51578;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 21587; -- Arcatraz Warder (1)	51529
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51529;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 21588; -- Blackwing Drakonaar (1)	55306
DELETE FROM `creature_equip_template` WHERE `entry` = 55306;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 21590; -- Dalliah the Doomsayer (1)	51495
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51495;

UPDATE `creature_equip_template` SET `equipentry2` = 0 WHERE `entry` = 20896; -- not duelwielding!
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 21596; -- Ethereum Slayer (1)	51582
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51582;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 21597; -- Ethereum Wave-Caster (1)	51592
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51592;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 21610; -- Sargeron Archer (1)	51577
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51577;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 21621; -- Unchained Doombringer (1)	51547
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51547;

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 21624; -- Wrath-Scryer Soccothrates (1)	51374
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51374;

UPDATE `creature_template` SET `EquipmentTemplateId` = 21717 WHERE `entry` = 21717; -- Dragonmaw Wrangler	51388
DELETE FROM `creature_equip_template` WHERE `entry` = 21717;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(21717, 31600, 31600, 0); -- ~10+ different sets
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51388; -- 25474	25474	0

UPDATE `creature_template` SET `EquipmentTemplateId` = 22016 WHERE `entry` = 22016; -- Eclipsion Soldier	51672
DELETE FROM `creature_equip_template` WHERE `entry` = 22016;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(22016, 31205, 31205, 0); -- ~5 different sets
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51672; -- 43711	0	0

UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 22820; -- Seer Olum	51678
DELETE FROM `creature_equip_template` WHERE `entry` = 22820;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51678; -- 43903	43903	0

UPDATE `creature_template` SET `EquipmentTemplateId` = 23698 WHERE `entry` = 23698; -- Drunken Brewfest Reveler	55514
DELETE FROM `creature_equip_template` WHERE `entry` = 23698;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(23698, 2703, 0, 0); -- ~7 different sets
DELETE FROM `creature_equip_template` WHERE `entry` = 55514; -- 5746	0	0

UPDATE `creature_template` SET `EquipmentTemplateId` = 23748 WHERE `entry` = 23748; -- Kurzel	51854
DELETE FROM `creature_equip_template` WHERE `entry` = 23748;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(23748, 12744, 12745, 0); -- sometimes without mainhand
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51854; -- 23172	23172	0

UPDATE `creature_template` SET `EquipmentTemplateId` = 23766 WHERE `entry` = 23766; -- Morgom	55347
UPDATE `creature_equip_template` SET `entry` = 23766 WHERE `entry` = 55347;

UPDATE `creature_template` SET `EquipmentTemplateId` = 23872 WHERE `entry` = 23872; -- Coren Direbrew	51992
DELETE FROM `creature_equip_template` WHERE `entry` = 23872;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(23872, 2705, 13855, 0); -- was missing main hand weapon
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51992; -- 0	24294	0

UPDATE `creature_template` SET `EquipmentTemplateId` = 24436 WHERE `entry` = 24436; -- Gargoth	51925
DELETE FROM `creature_equip_template` WHERE `entry` = 24436;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(24436, 2029, 0, 0);
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51925; -- 19281	0	0

UPDATE `creature_template` SET `EquipmentTemplateId` = 24484 WHERE `entry` = 24484; -- Brewfest Reveler	52500 up to 7 different equips
UPDATE `creature_equip_template` SET `entry` = 24484 WHERE `entry` = 52500;

UPDATE `creature_template` SET `EquipmentTemplateId` = 25164 WHERE `entry` = 25164; -- Shattered Sun Recruit	52116
DELETE FROM `creature_equip_template` WHERE `entry` = 25164;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(25164, 23382, 24322, 0);
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 52116; -- 35912	33307	0

UPDATE `creature_template` SET `EquipmentTemplateId` = 25975 WHERE `entry` = 25975; -- Master Fire Eater	55399
UPDATE `creature_equip_template` SET `entry` = 25975 WHERE `entry` = 55399;

UPDATE `creature_template` SET `EquipmentTemplateId` = 26113 WHERE `entry` = 26113; -- Master Flame Eater	51741
DELETE FROM `creature_equip_template` WHERE `entry` = 26113;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(26113, 1906, 2081, 0); -- sometimes no mainhand
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 51741; -- 12236	6537	0

