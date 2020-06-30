/* DBScriptData
DBName: Champions' Hall & Hall of Legends
DBScriptName: -
DB%Complete: 75
DBComment:
-- Horde
-- 2008-12-30-23-28_9183_MIHASYA.sqlite  - 9183_V3_0_3_9183
-- 2009-02-16-01-05_9551_SHURA117.sqlite - 9551_V3_0_9_9551
-- 2009-03-18-19-50_9551_SHURA117.sqlite
-- 2009-03-19-19-53_9551_SHURA117.sqlite

-- Alliance
-- 2008-03-14-20-39_7799_MIHASYA.sqlite - 7799_V2_3_3_7799
-- 2008-02-17-03-39_7799_MIHASYA.sqlite - 7799_V2_3_3_7799
-- 2008-04-03-04-33_8125_MIHASYA.sqlite - 8125_V2_4_1_8125
-- 2008-12-16-23-52_9183_MIHASYA.sqlite - 9183_V3_0_3_9183
-- 2009-01-23-23-38_9464_MIHASYA.sqlite - 9464_V3_0_8_9464
-- 2009-02-11-00-18_9551_MIHASYA.sqlite - 9551_V3_0_9_9551
-- 2009-05-07-01-40_9835_MIHASYA.sqlite - 9835_V3_1_1_9835
-- 2009-05-21-14-49_9901_MIHASYA.sqlite - 9901_V3_1_2_9901
-- 2009-06-02-21-52_9947_MIHASYA.sqlite - 9947_V3_1_3_9947
-- 2009-09-02-00-54_10314_SHURA117.sqlite - 10314_V3_2_0_10314
EndDBScriptData */

-- 449 (Alliance PVP Barracks) - Champions' Hall
SET @ACGUID := 4490000; -- creatures
SET @AOGUID := 4490000; -- gameobjects
-- 450 (Horde PVP Barracks) - Hall of Legends
SET @HCGUID := 4500000; -- creatures
SET @HOGUID := 4500000; -- gameobjects

-- =========
-- CREATURES
-- =========

-- INSERT INTO `creature_movement` (`id`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
-- INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
-- INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `emote`, `moveflags`, `auras`) VALUES

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `emote`, `moveflags`, `auras`) VALUES
(12788, 0, 0, 0, 0, 0, NULL), -- Legionnaire Teena
(12789, 0, 0, 0, 0, 0, NULL), -- Blood Guard Hini'wana
(12790, 0, 0, 1, 0, 0, NULL), -- Advisor Willington
(12791, 0, 0, 2, 0, 0, NULL), -- Chieftain Earthbind
(12792, 0, 0, 0, 0, 0, NULL), -- Lady Palanseer
(12793, 0, 0, 0, 0, 0, NULL), -- Brave Stonehide
(12794, 0, 0, 0, 0, 0, NULL), -- Stone Guard Zarg
(12795, 0, 0, 0, 0, 0, NULL), -- First Sergeant Hola'mahi
(12796, 0, 0, 0, 0, 0, NULL), -- Raider Bork
(12797, 0, 0, 1, 0, 0, NULL), -- Grunt Korf
(12798, 0, 0, 1, 0, 0, NULL), -- Grunt Bek'rah
-- (12799, 0, 0, 1, 0, 0, NULL), -- Sergeant Ba'sha (map 1)
(14581, 0, 0, 0, 0, 0, NULL), -- Sergeant Thunderhorn
(19850, 0, 0, 1, 0, 0, NULL), -- Councilor Arial D'Anastasis
(23447, 0, 0, 0, 0, 0, NULL), -- Sergeant Kien
(24520, 0, 0, 0, 0, 0, NULL), -- Doris Volanthius
(24667, 0, 0, 0, 0, 0, NULL), -- Sergeant Thunderhorn
(24668, 0, 0, 0, 0, 0, NULL), -- Lady Palanseer
(26396, 0, 0, 0, 0, 0, NULL), -- Sergeant Thunderhorn
(26397, 0, 0, 0, 0, 0, NULL), -- Lady Palanseer
(26398, 0, 0, 0, 0, 0, NULL); -- Doris Volanthius

-- INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
-- INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES

DELETE FROM `creature` WHERE `guid` IN ( '160695', '160696'); -- 12797/12798 in map 1 (wotlk data)
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
-- Horde Classic Version
-- (@HCGUID+1, 12788, 450, 239.877, 85.6123, 24.8598, 6.12611, 180, 300, 0, 0), -- Legionnaire Teena
-- (@HCGUID+2, 12789, 450, 246.295, 86.5842, 24.8598, 3.71755, 180, 300, 0, 0), -- Blood Guard Hini'wana
-- (@HCGUID+3, 12790, 450, 239.886, 84.1280, 24.8548, 1.11701, 180, 300, 0, 0), -- Advisor Willington
-- (@HCGUID+4, 12791, 450, 246.830, 82.4214, 24.8454, 2.56563, 180, 300, 0, 0), -- Chieftain Earthbind
-- (@HCGUID+5, 12792, 450, 261.771, 86.2750, 25.8042, 3.19395, 180, 300, 0, 0), -- Lady Palanseer <Armor Quartermaster>
-- (@HCGUID+6, 12793, 450, 256.485, 99.3971, 25.8042, 3.96190, 180, 300, 0, 0), -- Brave Stonehide <Officer Accessories Quartermaster>
-- (@HCGUID+7, 12794, 450, 240.616, 103.316, 25.8049, 4.85202, 180, 300, 0, 0), -- Stone Guard Zarg <Weapons Quartermaster>
-- (@HCGUID+8, 12795, 450, 256.598, 70.6699, 25.8037, 2.32129, 180, 300, 0, 0), -- First Sergeant Hola'mahi <Armor Quartermaster>
-- (@HCGUID+9, 12796, 450, 258.963, 73.2198, 25.8045, 2.49582, 180, 300, 0, 0), -- Raider Bork <Mount Quartermaster>
-- (@HCGUID+10, 12797, 450, 230.810, 86.7280, 25.8016, 6.12611, 180, 300, 0, 0), -- Grunt Korf
-- (@HCGUID+11, 12798, 450, 238.214, 73.3759, 25.7981, 1.18682, 180, 300, 0, 0), -- Grunt Bek'rah
-- (@HCGUID+12, 12799, 1, 1632.21, -4262.19, 49.027, 3.63028, 180, 300, 0, 0), -- Sergeant Ba'sha <Accessories Quartermaster>
-- (@HCGUID+13, 14581, 450, 244.059, 103.591, 25.8036, 4.66003, 180, 300, 0, 0); -- Sergeant Thunderhorn <Weapons Quartermaster>

-- Horde TBC Version
(@HCGUID+1, 12788, 450, 239.065, 84.6268, 24.7756, 0.124754, 180, 300, 0, 0), -- Legionnaire Teena
(@HCGUID+2, 12789, 450, 243.494, 89.6673, 24.7757, 4.6133, 180, 300, 0, 0), -- Blood Guard Hini'wana
(@HCGUID+3, 12790, 450, 241.756, 88.9445, 24.7764, 5.0938, 180, 300, 0, 0), -- Advisor Willington
(@HCGUID+4, 12791, 450, 246.607, 86.7114, 24.7757, 3.58049, 180, 300, 0, 0), -- Chieftain Earthbind
(@HCGUID+5, 12792, 450, 262.328, 86.2516, 25.7205, 3.23834, 180, 300, 0, 0), -- Lady Palanseer <Armor Quartermaster>
(@HCGUID+6, 12793, 450, 256.748, 99.7957, 25.7205, 4.11799, 180, 300, 0, 0), -- Brave Stonehide <Officer Accessories Quartermaster>
(@HCGUID+7, 12794, 450, 240.143, 104.005, 25.7207, 4.53379, 180, 300, 0, 0), -- Stone Guard Zarg <Weapons Quartermaster>
(@HCGUID+8, 12795, 450, 256.598, 70.6699, 25.8037, 2.32129, 180, 300, 0, 0), -- First Sergeant Hola'mahi <Armor Quartermaster>
(@HCGUID+9, 12796, 450, 259.272, 73.8997, 25.7209, 2.34254, 180, 300, 0, 0), -- Raider Bork <Mount Quartermaster>
(@HCGUID+10, 12797, 450, 230.810, 86.7280, 25.8016, 6.12611, 180, 300, 0, 0), -- Grunt Korf (Activate as Flavor Npcs, as they are also present in wotlk+)
(@HCGUID+11, 12798, 450, 238.214, 73.3759, 25.7981, 1.18682, 180, 300, 0, 0), -- Grunt Bek'rah (Activate as Flavor Npcs, as they are also present in wotlk+)
-- (@HCGUID+12, 12799, 1, 1632.21, -4262.19, 49.027, 3.63028, 180, 300, 0, 0), -- Sergeant Ba'sha <Accessories Quartermaster> - Removed (2.0.1)
(@HCGUID+13, 14581, 450, 243.532, 104.221, 25.7195, 4.85973, 180, 300, 0, 0), -- Sergeant Thunderhorn <Weapons Quartermaster>
-- TBC+
(@HCGUID+21, 19850, 450, 242.333, 88.3034, 24.7764, 4.9218, 180, 300, 0, 0), -- Councilor Arial D'Anastasis
(@HCGUID+22, 23447, 450, 257.869, 90.6915, 25.7206, 3.71126, 180, 300, 0, 0), -- Sergeant Kien <Armor Quartermaster>
(@HCGUID+23, 24520, 450, 257.869, 90.6915, 25.7206, 3.71126, 180, 300, 0, 0), -- Doris Volanthius <Armor Quartermaster>
-- Sergeant Thunderhorn 24667
-- Lady Palanseer 24668
-- Sergeant Thunderhorn 26396
-- Lady Palanseer 26397
(@HCGUID+24, 26398, 450, 257.869, 90.6915, 25.7206, 3.71126, 180, 300, 0, 0); -- Doris Volanthius <Armor Quartermaster>

-- WotLK+
-- Lady Palanseer 32382
-- Lady Palanseer 34039
-- Lady Palanseer 34040
-- Lady Palanseer 34043
-- Sergeant Thunderhorn 32383
-- Sergeant Thunderhorn 34036
-- Sergeant Thunderhorn 34037
-- Sergeant Thunderhorn 34038
-- Sergeant Kien 32384
-- Doris Volanthius 32385
-- Doris Volanthius 34058
-- Doris Volanthius 34059
-- Doris Volanthius 34060

-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@HOGUID+1, 176566, 450, 206.649, 66.0756, 25.4049, 3.60411, 0, 0, -0.973379, 0.229201, 180, 300, 255, 0),
(@HOGUID+2, 176567, 450, 251.4891967773437500, 94.47144317626953125, 25.82601547241210937, 0.968657314777374267, 0, 0, 0.465614318847656250, 0.884987771511077880, 180, 300, 255, 1),
(@HOGUID+3, 176568, 450, 255.7041778564453125, 85.47332763671875000, 25.82601356506347656, 5.715955257415771484, 0, 0, -0.27982807159423828, 0.960050106048583984, 180, 300, 255, 1),
(@HOGUID+4, 176569, 450, 252.4973754882812500, 76.74610137939453125, 25.82601547241210937, 5.000368118286132812, 0, 0, -0.59832477569580078, 0.801253676414489746, 180, 300, 255, 1),
(@HOGUID+5, 176570, 450, 242.5849456787109375, 97.20764160156250000, 25.82601547241210937, 1.195548772811889648, 0, 0, 0.562804222106933593, 0.826590240001678466, 180, 300, 255, 1),
(@HOGUID+6, 176571, 450, 230.5503997802734375, 83.68984222412109375, 25.79817581176757812, 1.195548772811889648, 0, 0, 0.562804222106933593, 0.826590240001678466, 180, 300, 255, 1),
(@HOGUID+7, 176572, 450, 235.8290710449218750, 74.55625152587890625, 25.79817390441894531, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305, 180, 300, 255, 1),
(@HOGUID+8, 179707, 450, 242.9784851074218750, 87.13777160644531250, 25.80420875549316406, 4.904376029968261718, 0, 0, -0.63607788085937500, 0.771624863147735595, 180, 300, 255, 1);

-- ======
-- EVENTS
-- ======

INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@HCGUID+22, 54), -- Sergeant Kien - Arena PvP Season 2
(@HCGUID+23, 55), -- Doris Volanthius - Arena PvP Season 3
(@HCGUID+24, 56); -- Doris Volanthius - Arena PvP Season 4

INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `vendor_id`, `spell_start`, `spell_end`, `event`) VALUES
(@HCGUID+5, 0, 0, 0, 545, 0, 0, 54), -- Lady Palanseer - Arena PvP Season 2
(@HCGUID+5, 24668, 0, 0, 0, 0, 0, 55), -- Lady Palanseer - Arena PvP Season 3
(@HCGUID+5, 26397, 0, 0, 0, 0, 0, 56), -- Lady Palanseer - Arena PvP Season 4

(@HCGUID+13, 24667, 0, 0, 0, 0, 0, 55), -- Sergeant Thunderhorn - Arena PvP Season 3
(@HCGUID+13, 26396, 0, 0, 0, 0, 0, 56); -- Sergeant Thunderhorn - Arena PvP Season 4

-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES

-- =======
-- POOLING
-- =======

-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) VALUES
-- INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

-- =========
-- DBSCRIPTS
-- =========

-- INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES


