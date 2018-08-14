-- Improved movement of creature 1271 (Old Icebeard) in Dun Morogh
-- for quest 312 (Tundra MacGrann's Stolen Stash):
-- Added wait time and run ON/OFF
-- Thanks Zingzah for pointing.
-- Source: http://www.wowhead.com/quest=312#comments

DELETE FROM `creature_movement` WHERE `id` IN(SELECT guid FROM creature WHERE id=1271);
DELETE FROM `creature_movement_template` WHERE `entry`=1271;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(1271, 1, -5649.39, -81.6535, 418.275, 0, 0, 100),
(1271, 2, -5639.78, -58.4336, 418.892, 0, 0, 100),
(1271, 3, -5626.44, -35.1175, 412.535, 0, 0, 100),
(1271, 4, -5624.76, -27.0787, 412.668, 0, 0, 100),
(1271, 5, -5614.41, -29.8047, 413.336, 0, 0, 100),
(1271, 6, -5601.14, -30.9817, 416.64, 0, 0, 100),
(1271, 7, -5581.84, -35.8201, 415.569, 0, 0, 100),
(1271, 8, -5571.6, -47.051, 417.089, 0, 0, 100),
(1271, 9, -5556.7, -60.1984, 418.711, 0, 0, 100),
(1271, 10, -5545.51, -67.7044, 420.742, 40000, 311101, 100),
(1271, 11, -5563.35, -53.4735, 418.1, 0, 0, 100),
(1271, 12, -5576.15, -39.9051, 416.121, 0, 0, 100),
(1271, 13, -5590.44, -35.7847, 415.347, 0, 0, 100),
(1271, 14, -5603.19, -34.5067, 416.378, 0, 0, 100),
(1271, 15, -5615.41, -38.4546, 414.031, 0, 0, 100),
(1271, 16, -5631.65, -43.6975, 412.569, 0, 0, 100),
(1271, 17, -5634.93, -49.2355, 415.491, 0, 0, 100),
(1271, 18, -5639.5, -59.4108, 418.82, 0, 0, 100),
(1271, 19, -5644.76, -71.7778, 417.668, 0, 0, 100),
(1271, 20, -5654.04, -92.5522, 418.271, 0, 0, 100),
(1271, 21, -5657.49, -98.6931, 420.093, 0, 0, 100),
(1271, 22, -5655.82, -94.9507, 418.928, 0, 0, 100),
(1271, 23, -5654.4, -91.752, 418.172, 0, 0, 100),
(1271, 24, -5655.22, -95.0346, 418.868, 0, 311102, 100);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(311101,311102);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES 
(311101, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Icebeard run'),
(311102, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Icebeard walk'),
(311102, 1, 20, 1, 3, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Icebeard movement random'),
(311102, 275, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Old Icebeard movement waypoint');

